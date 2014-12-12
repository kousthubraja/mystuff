package com.example.learnapp;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import android.app.Activity;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ProgressBar;
import android.widget.Toast;

public class Register extends Activity {

	SharedPreferences sp;
	Button b;
	EditText text1;
	String username;
	boolean registered=false;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		
		super.onCreate(savedInstanceState);
		this.setContentView(R.layout.register);
		
		b=(Button) findViewById(R.id.button1);
		text1=(EditText) findViewById(R.id.editText1);
		
		sp=getSharedPreferences("wru",MODE_PRIVATE);
		if(!sp.getString("username", "").equals("")){
			finish();
		}
	}
	
	public void register(View v){
		
		
		new reg().execute();
		
	}
	
	private class reg extends AsyncTask<String,Integer, String>{

		@Override
		protected String doInBackground(String... arg0) {
			final SharedPreferences.Editor ed=sp.edit();
			
			username=text1.getText().toString();
			final String register_addr="http://kr.comze.com/register.php?user="+username;
			final String check_exist_addr="http://kr.comze.com/check_exist.php?user="+username;
			
			try {
				URL url = new URL(check_exist_addr);
				HttpURLConnection con= (HttpURLConnection) url.openConnection();
				BufferedReader read=new BufferedReader(new InputStreamReader(con.getInputStream()));
				
				String count=read.readLine();
				read.close();
				
				if(count.equals("0"))
				{
					url = new URL(register_addr);
					con= (HttpURLConnection) url.openConnection();
					read=new BufferedReader(new InputStreamReader(con.getInputStream()));
					
					read.readLine();
					read.close();
					
					ed.putString("username", username);
					ed.commit();
					registered=true;
				}

			} catch (Exception e) {
				
			System.out.println(e.toString());}
			
			return null;
		}

		@Override
		protected void onPreExecute() {
			
			Button b1=(Button) findViewById(R.id.button1);
			EditText t1=(EditText) findViewById(R.id.editText1);
			ProgressBar pb1=(ProgressBar) findViewById(R.id.progressBar1);
			pb1.setVisibility(View.VISIBLE);
			b1.setEnabled(false);
			t1.setEnabled(false);
			
			super.onPreExecute();
		}

		@Override
		protected void onPostExecute(String result) {
			if(registered)
			{
				Toast.makeText(Register.this, "Username saved", Toast.LENGTH_SHORT).show();
				finish();
			}
			else{
				Toast.makeText(Register.this, "Username already exists", Toast.LENGTH_SHORT).show();
				
				Button b1=(Button) findViewById(R.id.button1);
				EditText t1=(EditText) findViewById(R.id.editText1);
				ProgressBar pb1=(ProgressBar) findViewById(R.id.progressBar1);
				pb1.setVisibility(View.GONE);
				b1.setEnabled(true);
				t1.setEnabled(true);
				
			}
			super.onPostExecute(result);
		}
		
	}
	
}
