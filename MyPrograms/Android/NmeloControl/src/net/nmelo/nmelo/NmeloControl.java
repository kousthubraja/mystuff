package net.nmelo.nmelo;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import android.app.Activity;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.Menu;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class NmeloControl extends Activity {

	EditText t;
	EditText tv;
	Button b;
	Executor ex=null;
	boolean isExecuting=false;
	
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_nmelo_control);
		
		t=(EditText) findViewById(R.id.editText1);
		tv=(EditText) findViewById(R.id.editText2);
		b=(Button) findViewById(R.id.button1);
		ex=new Executor();
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.nmelo_control, menu);
		return true;
	}
	
	public void execute(View v){
		

		if(isExecuting){
			ex.cancel(false);
		}
		else{
			String cmd=t.getText().toString();
			cmd=cmd.replaceAll(" ", "%20");
			ex.execute(cmd);
		}
		
		
		
	}
	
	public class Executor extends AsyncTask<String, Void, String>{

		@Override
		protected String doInBackground(String... address) {
			String cmd=address[0];
			String out="";
			
			try {
				URL addr=new URL("http://nmelo.net/ssh.php?cmd="+cmd);
				HttpURLConnection con=(HttpURLConnection) addr.openConnection();
				InputStreamReader is=new InputStreamReader(con.getInputStream());
				BufferedReader reader=new BufferedReader(is);

				String tmp;
				
				while((tmp=reader.readLine())!=null){
					out+=tmp+"\n";
				}

			} catch (Exception e) {
				return e.toString();
			}
			return out;
		}

		@Override
		protected void onPreExecute() {
//			b.setEnabled(false);
			t.setEnabled(false);
			b.setText("Cancel");
			isExecuting=true;
			super.onPreExecute();
		}

		@Override
		protected void onPostExecute(String result) {
//			b.setEnabled(true);
			t.setEnabled(true);
			b.setText("Execute");
			isExecuting=false;
			tv.setText(result);
			super.onPostExecute(result);
		}
		
	}

}
