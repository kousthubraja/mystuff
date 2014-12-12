package com.example.locviewer;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;

import android.R.bool;
import android.app.Activity;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.Menu;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;

public class LocViewer extends Activity {

	ArrayList<String> users=new ArrayList<String>();
	boolean listed=false;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_loc_viewer);
		
		
	}

	@Override
	protected void onStart() {
		super.onStart();
		if(!listed)
		{
			listall();
			listed=true;
		}
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.loc_viewer, menu);
		return true;
	}
	
	
	void showuser(String user){
		Intent i=new Intent(this,user.class);
		i.putExtra("user", user);
		startActivity(i);
	}
	
	public void listall(){
		
		new load().execute();
		
	}
	
	void add_to_list(){
		final ListView l=(ListView) findViewById(R.id.listView1);
		
		ArrayAdapter<String> ad=new ArrayAdapter<String>(this, R.layout.list_item,R.id.list_ca,users);
		l.setAdapter(ad);
		
		l.setOnItemClickListener(new OnItemClickListener() {

			@Override
			public void onItemClick(AdapterView<?> arg0, View arg1, int pos,
					long id) {
				String un=(String) l.getItemAtPosition(pos);
				showuser(un);
			}
		});
	}
	
	class load extends AsyncTask<String, Integer, String>
	{
		String addr="http://kr.comze.com/list_l.php";
		@Override
		protected String doInBackground(String... arg0) {
			URL url;
			String ou="";
			try {
				url = new URL(addr);
				HttpURLConnection con= (HttpURLConnection) url.openConnection();
				
				InputStreamReader is=new InputStreamReader(con.getInputStream());
				
				BufferedReader read=new BufferedReader(is);
				
				String t;
				while((t= read.readLine())!=null)
				{
//					ou+=t+'\n';
					if(t.startsWith("<!--"))
						break;
					users.add(t);
				}
				//Thread.sleep(3000);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return ou;
		}

		@Override
		protected void onPostExecute(String result) {
			
			super.onPostExecute(result);
//			TextView t=(TextView) findViewById(R.id.showuser_time);
			//WebView wv=(WebView) findViewById(R.id.webView1);
			//wv.setVisibility(View.GONE);
//			t.setText(result);
			TextView tv=(TextView) findViewById(R.id.textView1);
			ProgressBar pb=(ProgressBar) findViewById(R.id.progressBar1);
			tv.setVisibility(View.GONE);
			pb.setVisibility(View.GONE);
			add_to_list();
		}

	}

}

