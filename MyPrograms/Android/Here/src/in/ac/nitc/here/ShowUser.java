package in.ac.nitc.here;

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

public class ShowUser extends Activity {

	String user,time_str="0";
	String pos;
	TextView username;
	TextView usertime;
	WebView wv;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.show_user);
		Intent i=getIntent();
		user=i.getExtras().getString("user");
		username=(TextView) findViewById(R.id.showuser_user);
		usertime=(TextView) findViewById(R.id.showuser_time);
		username.setText(user);
		
		wv=(WebView) findViewById(R.id.webView1);

	}
	
	
	@Override
	protected void onStart() {
		wv.loadUrl("http://kr.comze.com/hia.php?user="+user);
		new LastSeen().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR);
//		new LoadMap().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR);
		super.onStart();
	}


	class LoadMap extends AsyncTask<Void, Void, Void>
	{
		String addr="http://kr.comze.com/getpos.php?user="+user;


		@Override
		protected void onPostExecute(Void result) {
			
			super.onPostExecute(result);

			wv.loadUrl("https://maps.google.com/maps?t=m&ll="+pos+"&z=16&output=classic&dg=ntvb");
		}

		@Override
		protected Void doInBackground(Void... arg0) {
			URL url;
			String ou="";
			try {
				url = new URL(addr);
				HttpURLConnection con= (HttpURLConnection) url.openConnection();
				
				InputStreamReader is=new InputStreamReader(con.getInputStream());
				
				BufferedReader read=new BufferedReader(is);
				
				pos=read.readLine();
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return null;
		}

	}
	
	class LastSeen extends AsyncTask<Void, Void, String>
	{
		String addr="http://kr.comze.com/getlastseen.php?user="+user;
		
		@Override
		protected String doInBackground(Void... arg0) {
			URL url;
			String ou="";
			try {
				url = new URL(addr);
				HttpURLConnection con= (HttpURLConnection) url.openConnection();
				InputStreamReader is=new InputStreamReader(con.getInputStream());
				BufferedReader read=new BufferedReader(is);
				time_str=read.readLine();
				read.close();
				is.close();
				con.disconnect();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return ou;
		}

		@Override
		protected void onPreExecute() {
//			Toast.makeText(ShowUser.this, "start", Toast.LENGTH_SHORT).show();
			super.onPreExecute();
		}

		@Override
		protected void onPostExecute(String result) {
		
			
			usertime.setText("Last Seen : "+time_str);
			super.onPostExecute(result);
		}

	}

}
