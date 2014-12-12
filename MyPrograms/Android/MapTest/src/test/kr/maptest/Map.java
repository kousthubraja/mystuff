package test.kr.maptest;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Point;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.view.Display;
import android.view.Menu;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebView;
import android.widget.Toast;

public class Map extends Activity implements LocationListener{

	int zoom=18;
	String pos,place;
	WebView wv;
	int w,h;
	MapDB  db=new MapDB(this);
	LocationManager lm;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		 requestWindowFeature(Window.FEATURE_NO_TITLE);
	        getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
	            WindowManager.LayoutParams.FLAG_FULLSCREEN);
	        
		setContentView(R.layout.activity_map);
		wv=(WebView) findViewById(R.id.webView1);
		
		lm=(LocationManager) getSystemService(LOCATION_SERVICE);
		lm.requestLocationUpdates(LocationManager.GPS_PROVIDER, 1000, 5, this);
		
		Intent i=getIntent();
		place=i.getExtras().getString("place");
		Location loc=db.getPlace(place);
		pos=loc.lat+","+loc.lon;
		
		
		Display disp=getWindowManager().getDefaultDisplay();
		Point size=new Point();
		disp.getSize(size);
		
		w=size.x;
		h=size.y;
		
		wv.loadUrl("http://maps.googleapis.com/maps/api/staticmap?markers=color:blue|label:X|"+pos+"&zoom=18&size="+String.valueOf(w)+"x"+String.valueOf(h)+"&sensor=false");
		//wv.loadUrl("http://maps.googleapis.com/maps/api/staticmap?markers=color:blue|label:X|"+pos+"&zoom=18&size=500x500&maptype=hybrid&sensor=false");
		
		
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.map, menu);
		return true;
	}
	
	public void zoomin(View v){
		zoom++;
		wv.loadUrl("http://maps.googleapis.com/maps/api/staticmap?markers=color:blue|label:X|"+pos+"&zoom="+String.valueOf(zoom)+"&size="+String.valueOf(w)+"x"+String.valueOf(h)+"&sensor=false");
	}

	public void zoomout(View v){
		zoom--;
		wv.loadUrl("http://maps.googleapis.com/maps/api/staticmap?markers=color:blue|label:X|"+pos+"&zoom="+String.valueOf(zoom)+"&size="+String.valueOf(w)+"x"+String.valueOf(h)+"&sensor=false");
	}

	@Override
	public void onLocationChanged(android.location.Location loc) {
		
		Location myLoc=new Location("Me",String.valueOf(loc.getLatitude()),String.valueOf(loc.getLongitude()));
		//@aaki: Add myLoc on the Map somehow
		Toast.makeText(this, myLoc.lat+","+myLoc.lon, Toast.LENGTH_SHORT).show();
		
		lm.removeUpdates(this);
	}

	@Override
	public void onProviderDisabled(String arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void onProviderEnabled(String arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void onStatusChanged(String arg0, int arg1, Bundle arg2) {
		// TODO Auto-generated method stub
		
	}
}
