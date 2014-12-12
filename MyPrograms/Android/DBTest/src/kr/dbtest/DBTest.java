package kr.dbtest;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.widget.TextView;

public class DBTest extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_dbtest);
		
		DBHandler db= new DBHandler(this);
		
		db.addcontact("3","tester");
		
		Contact contact=db.getcontact(2);
		
		TextView t1=(TextView) findViewById(R.id.textView1);
		TextView t2=(TextView) findViewById(R.id.textView2);
		
		t1.setText(String.valueOf(contact.getid()));
		t2.setText(contact.getname());
		
		
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.dbtest, menu);
		return true;
	}
	
	

}
