package in.ac.nitc.here;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
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
	boolean reg_error=true;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		
		super.onCreate(savedInstanceState);
		this.setContentView(R.layout.register);
		
		b=(Button) findViewById(R.id.register_register);
		text1=(EditText) findViewById(R.id.register_username);
		
		sp=getSharedPreferences("in.ac.nitc.here",MODE_PRIVATE);
//		if(!sp.getString("username", "").equals("")){
//			finish();
//		}
	}
	
	public void register(View v){
		if(isOnline())
			new reg().execute();
		else{
			Toast.makeText(this, "Turn on Data", Toast.LENGTH_LONG).show();
		}
	}
	
	void start_ViewAll(){
		Intent i=new Intent(this,ViewAll.class);
		startActivity(i);
	}
	
	public boolean isOnline(){
		ConnectivityManager man=(ConnectivityManager) getSystemService(CONNECTIVITY_SERVICE);
		NetworkInfo netinfo=man.getActiveNetworkInfo();
		
		if(netinfo!=null && netinfo.isConnectedOrConnecting()){
			return true;
		}
		return false;
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
				else if(count.equals("1")){
					registered=false;
					reg_error=false;
				}
				else
					reg_error=true;

			} catch (Exception e) {
				
			System.out.println(e.toString());}
			
			return null;
		}

		@Override
		protected void onPreExecute() {
			
			Button b1=(Button) findViewById(R.id.register_register);
			EditText t1=(EditText) findViewById(R.id.register_username);
			ProgressBar pb1=(ProgressBar) findViewById(R.id.register_progressbar);
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
				start_ViewAll();
				finish();
			}
			else{
				Button b1=(Button) findViewById(R.id.register_register);
				EditText t1=(EditText) findViewById(R.id.register_username);
				ProgressBar pb1=(ProgressBar) findViewById(R.id.register_progressbar);
				pb1.setVisibility(View.GONE);
				b1.setEnabled(true);
				t1.setEnabled(true);
				
				if(reg_error)
					Toast.makeText(Register.this, "Error Connecting to server", Toast.LENGTH_LONG).show();
				else
					Toast.makeText(Register.this, "Username already exists", Toast.LENGTH_LONG).show();
				
					
				
				
			}
			super.onPostExecute(result);
		}
		
	}
	
}
