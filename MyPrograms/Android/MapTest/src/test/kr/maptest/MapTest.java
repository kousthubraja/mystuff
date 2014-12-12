package test.kr.maptest;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.View;
import android.widget.TextView;

public class MapTest extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_map_test);
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.map_test, menu);
		return true;
	}
	
	public void showMap(View v){
//		Intent i=new Intent(this,Map.class);
		Intent i=new Intent(this,ShowAll.class);
		String lat,lon;
		TextView txtLat=(TextView)findViewById(R.id.txtLat);
		TextView txtLon=(TextView)findViewById(R.id.txtLon);
		lat=txtLat.getText().toString();
		lon=txtLon.getText().toString();
		i.putExtra("lat", lat);
		i.putExtra("lon", lon);
		startActivity(i);
		
	}

}
