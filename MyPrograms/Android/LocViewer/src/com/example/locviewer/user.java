package com.example.locviewer;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import android.app.Activity;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.webkit.WebView;
import android.widget.TextView;

public class user extends Activity {

	String user,t;
	TextView username;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.user);
		Intent i=getIntent();
		user=i.getExtras().getString("user");
		username=(TextView) findViewById(R.id.showuser_user);
		TextView usertime=(TextView) findViewById(R.id.showuser_time);
		username.setText(user);
		String pos;
		WebView wv=(WebView) findViewById(R.id.webView1);
		wv.loadUrl("http://kr.comze.com/hia.php?user="+user);
		
//		new load().execute();
	}
	
	
	class load extends AsyncTask<String, Integer, String>
	{
		String addr="http://kr.comze.com/getpos.php?user="+user;
		@Override
		protected String doInBackground(String... arg0) {
			URL url;
			String ou="";
			try {
				url = new URL(addr);
				HttpURLConnection con= (HttpURLConnection) url.openConnection();
				
				InputStreamReader is=new InputStreamReader(con.getInputStream());
				
				BufferedReader read=new BufferedReader(is);
				
				t=read.readLine();
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return ou;
		}

		@Override
		protected void onPostExecute(String result) {
			
			super.onPostExecute(result);
			WebView wv=(WebView) findViewById(R.id.webView1);
			wv.loadUrl(t);
		}

	}

}
