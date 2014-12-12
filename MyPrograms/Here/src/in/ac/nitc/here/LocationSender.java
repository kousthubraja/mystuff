package in.ac.nitc.here;

import java.net.HttpURLConnection;
import java.net.URL;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.drawable.Drawable;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.IBinder;
import android.os.PowerManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

public class LocationSender extends Service implements LocationListener{

	LocationManager lm;
	private PowerManager pm;
	private String username;
	private SharedPreferences sp;
	private SensorManager sm;
	private Sensor sen;
	private boolean isSearchingSatellite=false;
	private boolean isScreenOff=true;

	
	@Override
	public void onCreate() {
		sp=getSharedPreferences("in.ac.nitc.here",MODE_PRIVATE);
		
		username=sp.getString("username", "");
		if(!username.equals("")){

			lm=(LocationManager) getSystemService(LOCATION_SERVICE);
			pm=(PowerManager) getSystemService(POWER_SERVICE);
			
			new UpdateLoop().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR);
			new GPSEnabledChecker().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR);
		}	
		super.onCreate();
	}



	@Override
	public void onLocationChanged(Location location) {
		
		
		double lat,lon;
		String slat,slon;

		lat=location.getLatitude();
		lon=location.getLongitude();
		isSearchingSatellite=false;
		lm.removeUpdates(LocationSender.this);
		
		slat=String.valueOf(lat);
		slon=String.valueOf(lon);

		
		final String addr="http://kr.comze.com/wru.php?user="+username+"&lat="+slat+"&lon="+slon;
		
		
		Thread t=new Thread(){
			@Override
			public void run(){
				
				try {
					URL url = new URL(addr);
					HttpURLConnection con= (HttpURLConnection) url.openConnection();
					con.getInputStream();
					
					//Looper.prepare();Looper.loop();
					
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		};
		t.start();
		
	}
	
	public boolean isOnline(){
		ConnectivityManager man=(ConnectivityManager) getSystemService(CONNECTIVITY_SERVICE);
		NetworkInfo netinfo=man.getActiveNetworkInfo();
		
		if(netinfo!=null && netinfo.isConnectedOrConnecting()){
			return true;
		}
		return false;
	}
	
	@Override
	public IBinder onBind(Intent arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	public class ScreenWakeReciever extends BroadcastReceiver {
		@Override
		public void onReceive(Context arg0, Intent arg1) {
			isScreenOff=false;
			lm.removeUpdates(LocationSender.this);
		}
	}
	
	public class ScreenSleepReciever extends BroadcastReceiver {
		@Override
		public void onReceive(Context arg0, Intent arg1) {
			isScreenOff=true;
		}
	}

	void add_satellite_request(){
		if(!isSearchingSatellite && !pm.isScreenOn()){
			lm.requestLocationUpdates(LocationManager.GPS_PROVIDER, 1000, 10, this);
			new GPSTimeouter().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR);
			isSearchingSatellite=true;
		}
	}

	class UpdateLoop extends AsyncTask<Void, Void, Void>{

		@Override
		protected Void doInBackground(Void... arg0) {
				try {
					Thread.sleep(180000);
				} catch (InterruptedException e) {

					e.printStackTrace();
				}
				return null;
			
		}

		@Override
		protected void onPreExecute() {
			if(isOnline())
				add_satellite_request();
			super.onPreExecute();
		}

		@Override
		protected void onPostExecute(Void result) {
			
			new UpdateLoop().execute();
			super.onPostExecute(result);
		}
		
	}
	
	class GPSEnabledChecker extends AsyncTask<Void, Void, Void>{

		@Override
		protected Void doInBackground(Void... arg0) {
				try {
					Thread.sleep(3600000);
				} catch (InterruptedException e) {

					e.printStackTrace();
				}
				return null;
			
		}

		@Override
		protected void onPreExecute() {
			final LocationManager manager = (LocationManager) getSystemService( Context.LOCATION_SERVICE );

		    if ( !manager.isProviderEnabled( LocationManager.GPS_PROVIDER ) ) {
		        Toast t=Toast.makeText(LocationSender.this, "Turn on GPS", Toast.LENGTH_LONG);
		        LinearLayout ll = new LinearLayout(LocationSender.this);
		        ll.setOrientation(LinearLayout.VERTICAL);
		        TextView myTextView = new TextView(LocationSender.this);

		        ImageView img=new ImageView(LocationSender.this);
		        img.setImageResource(R.drawable.ic_launcher);
		        myTextView.setText("Turn on GPS to be visible");
		        int lHeight = LinearLayout.LayoutParams.FILL_PARENT;
		        int lWidth = LinearLayout.LayoutParams.WRAP_CONTENT;
		        
		        ll.addView(myTextView, new LinearLayout.LayoutParams(lHeight, lWidth));
		        ll.addView(img);
		        ll.setPadding(0, 0, 0, 0);
		        t.setView(ll);
		        t.show();
		        t.setDuration(Toast.LENGTH_LONG);
		        t.show();
		    	//Toast.makeText(LocationSender.this, "Turn on GPS to be visible", Toast.LENGTH_LONG).show();
		    }

		  
			super.onPreExecute();
		}

		@Override
		protected void onPostExecute(Void result) {
			
			new GPSEnabledChecker().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR);
			super.onPostExecute(result);
		}
		
	}

	class GPSTimeouter extends AsyncTask<Void, Void, Void>{

		@Override
		protected Void doInBackground(Void... params) {
			try {
				Thread.sleep(60000);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return null;
		}

		@Override
		protected void onPostExecute(Void result) {
			lm.removeUpdates(LocationSender.this);
			isSearchingSatellite=false;
			super.onPostExecute(result);
		}
		
	}

	@Override
	public void onStatusChanged(String arg0, int arg1, Bundle arg2) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void onProviderDisabled(String arg0) {
		Toast.makeText(this, "Enable GPS to be visible", Toast.LENGTH_LONG).show();
		
	}

	@Override
	public void onProviderEnabled(String arg0) {
		// TODO Auto-generated method stub
		
	}
	
}
