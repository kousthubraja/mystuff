package test.kr.maptest;



import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;


public class ShowAll extends Activity {

	static ArrayList<String> places=new ArrayList<String>();
	
	List<Location> loclist;
	
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.view_all);
	 
		 checkDB(); 

		MapDB  db=new MapDB(this);
		loclist= db.getLocations();
		
		for(Location l: loclist){
			places.add(l.getName());
		}
		
		
		list();
	}
	
	void checkDB(){
		File fil=new File("/data/data/test.kr.maptest/databases/tathva.db");
			InputStream myInput;
			try {
				myInput = this.getAssets().open("tathva.db");

			    String outFileName = "/data/data/test.kr.maptest/databases/tathva.db";
			     

			    OutputStream myOutput = new FileOutputStream(outFileName);

			    byte[] buffer = new byte[1024];
			    int length;
			    while ((length = myInput.read(buffer))>0){
			    myOutput.write(buffer, 0, length);
			    }

			    myOutput.flush();
			    myOutput.close();
			    myInput.close();
			    
			} catch (IOException e) {
				
				e.printStackTrace();
			}

	}
	
	void list(){
		final ListView l=(ListView) findViewById(R.id.view_all_listView);
		
		ArrayAdapter<String> ad=new ArrayAdapter<String>(this, R.layout.list_item,R.id.list_ca,places);
		l.setAdapter(ad);
		
		l.setOnItemClickListener(new OnItemClickListener() {

			@Override
			public void onItemClick(AdapterView<?> arg0, View arg1, int pos,
					long id) {
				String un=(String) l.getItemAtPosition(pos);
				showMap(loclist.get(pos).place);
//				Toast.makeText(ShowAll.this, loclist.get(pos).getLat(), Toast.LENGTH_LONG).show();
//				showuser(un);
			}
		});
	}
	
	public void showMap(String place){
//		Intent i=new Intent(this,Map.class);
		Intent i=new Intent(this,Map.class);
		
		i.putExtra("place", place);
		startActivity(i);
		
		
		
	}

}
