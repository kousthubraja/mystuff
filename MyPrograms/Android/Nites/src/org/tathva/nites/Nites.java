package org.tathva.nites;


import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import org.json.JSONException;
import org.json.JSONObject;
import android.app.Activity;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.Menu;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.EditText;
import android.widget.ProgressBar;
import android.widget.TextView;

public class Nites extends Activity {

	DBHandler db;
	Nite dbnite;
	TextView tdate,tvenue,tname,tcontents;
	ProgressBar pbar;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		

		
		this.requestWindowFeature(Window.FEATURE_NO_TITLE);
		this.getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN, WindowManager.LayoutParams.FLAG_FULLSCREEN);
		setContentView(R.layout.nites);
		
		tdate=(TextView) findViewById(R.id.txt_date);
		tvenue=(TextView) findViewById(R.id.txt_venue);
		tname=(TextView) findViewById(R.id.txt_title);
		tcontents=(TextView) findViewById(R.id.txt_contents);
		pbar=(ProgressBar) findViewById(R.id.progressBar1);
		
		db=new DBHandler(this);
		
		try{
			dbnite=db.getNite("Lagori");
			
		}
		catch(Exception e){
			dbnite=new Nite("Lagori", "Lagori, dikori or lagoori ( (haft sang), meaning seven stones), also known as lingocha, widely played in South India, is a game played between two teams in an unlimited area involing a ball and a pile of flat stones. A member of one team (the seekers)[1] throws a soft ball at a pile of stones to knock them over. The seekers then try to restore the pile of stones while the opposing team (the hitters)[1] throws the ball at them.", "Not Updated", "Not Updated");
			db.addItem(dbnite);
		}
		setFields(dbnite);
	}
	
	public void setFields(Nite lec){
		tname.setText(lec.name);
		tdate.setText("Date : "+lec.date);
		tvenue.setText("Venue : "+lec.venue);
		tcontents.setText(lec.contents);
	}
	
	public void processContents(String contents){
		try {
			JSONObject obj=new JSONObject(contents);
			Nite lec=new Nite(obj.getString("name"), obj.getString("date"), obj.getString("venue"));
			lec.contents=dbnite.contents;
			setFields(lec);
			db.updateItem(lec);
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.nites, menu);
		return true;
	}
	
	public void showTiming(View v){
		new URLToString().execute("http://server880.comxa.com/eventupdate.php");
	}
	
	class URLToString extends AsyncTask<String, Void, String>{
		Thread thread;
		
		

		@Override
		protected void onPreExecute() {
			pbar.setVisibility(View.VISIBLE);
			super.onPreExecute();
		}

		@Override
		protected String doInBackground(String... params) {
			String address=params[0];
			String contents="";
			try {
				URL url=new URL(address);
				HttpURLConnection con=(HttpURLConnection) url.openConnection();
				InputStreamReader isr=new InputStreamReader(con.getInputStream());
				BufferedReader reader=new BufferedReader(isr);
				String tmp;
				
				while((tmp=reader.readLine())!=null){
					if(tmp.startsWith("<!--")){
						break;
					}
					contents+=tmp;
				}
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return contents;
		}

		@Override
		protected void onPostExecute(String result) {
			processContents(result);
			pbar.setVisibility(View.GONE);
			super.onPostExecute(result);
		}
	}

}
