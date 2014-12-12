package in.ac.nitc.here;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;

import android.R.bool;
import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
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
import android.widget.Toast;

public class ViewAll extends Activity {

	static ArrayList<String> users=new ArrayList<String>();
	static boolean loaded=false;
	SharedPreferences sp;
	String username;
	
	TextView tv;
	ProgressBar pb;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.view_all);
		
		sp=getSharedPreferences("in.ac.nitc.here",MODE_PRIVATE);
		
		tv=(TextView) findViewById(R.id.view_all_loadingtext);
		pb=(ProgressBar) findViewById(R.id.view_all_progressbar);
		
		username=sp.getString("username", "");
		
	}

	@Override
	protected void onStart() {
		super.onStart();
		
		if(username.equals("")){
			Intent i=new Intent(this,Register.class);
			this.startActivity(i);
			finish();
		}
		else{
			Intent serviceintent=new Intent(this,LocationSender.class);
			startService(serviceintent);
			
			if(isOnline() || loaded){
				listall();
			}
			else{
				tv.setText("Turn on Data and Restart");
				pb.setVisibility(View.GONE);
			}

		}
	}


	public boolean isOnline(){
		ConnectivityManager man=(ConnectivityManager) getSystemService(CONNECTIVITY_SERVICE);
		NetworkInfo netinfo=man.getActiveNetworkInfo();
		
		if(netinfo!=null && netinfo.isConnectedOrConnecting()){
			return true;
		}
		return false;
	}
	
	void showuser(String user){
		Intent i=new Intent(this,ShowUser.class);
		i.putExtra("user", user);
		startActivity(i);
	}
	
	public void listall(){
		if(!loaded)
		{
			new load().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR);
		}
		else
		{
			add_to_list();
		}
			
		
	}
	
	void add_to_list(){
		final ListView l=(ListView) findViewById(R.id.view_all_listView);
		
		tv.setVisibility(View.GONE);
		pb.setVisibility(View.GONE);
		
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

			
			loaded=true;
			add_to_list();
		}

	}

}

