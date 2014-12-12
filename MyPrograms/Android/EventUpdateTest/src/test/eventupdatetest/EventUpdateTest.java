package test.eventupdatetest;

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
import android.widget.EditText;
import android.widget.TextView;

public class EventUpdateTest extends Activity {

	TextView tdate,tvenue,tname;
	EditText tcontents;
	
	Lecture dblec;
	DBHandler db;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_event_update_test);
		
		tdate=(TextView) findViewById(R.id.txt_date);
		tvenue=(TextView) findViewById(R.id.txt_venue);
		tname=(TextView) findViewById(R.id.txt_name);
		tcontents=(EditText) findViewById(R.id.txt_contents);
		
		db=new DBHandler(this);
		
		try{
			dblec=db.getLecture("Jeff");
			
		}
		catch(Exception e){
			dblec=new Lecture("Jeff", "Jeff Lieberman is the host of the show Time Warp on Discovery Channel. Lieberman, originally from Florida, holds two B.S. degrees, in Mathematics and Physics, and two M.S. degrees, in Mechanical ...", "Not Updated", "Not Updated");
			db.addItem(dblec);
		}
		setFields(dblec);
//		if(dblec.date.equals("NA")){
//			
//		}
		new URLToString().execute("http://server880.comxa.com/eventupdate.php");

		
	}
	
	public void setFields(Lecture lec){
		tname.setText(lec.name);
		tdate.setText(lec.date);
		tvenue.setText(lec.venue);
		tcontents.setText(lec.contents);
	}
	
	public void processContents(String contents){
		try {
			JSONObject obj=new JSONObject(contents);
			Lecture lec=new Lecture(obj.getString("name"), obj.getString("date"), obj.getString("venue"));
			lec.contents=dblec.contents;
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
		getMenuInflater().inflate(R.menu.event_update_test, menu);
		return true;
	}
	
	class URLToString extends AsyncTask<String, Void, String>{
		Thread thread;
		
		

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
			super.onPostExecute(result);
		}
	}
	
	

}
