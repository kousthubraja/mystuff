package com.example.learnapp;

import java.net.HttpURLConnection;
import java.net.URL;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.view.Menu;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

public class LearnApp extends Activity implements LocationListener, SensorEventListener{
	
	private TextView t1,t2;
	LocationManager lm;
	String username;
	SharedPreferences sp;
	Button b;
	EditText text1;
	SensorManager sm;
	Sensor sen;
	Long accel_last_time=(long) 0;
	int accel_last_x=0;
	int accel_last_y=0;
	int accel_last_z=0;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_learn_app);
		
		sp=getSharedPreferences("wru",MODE_PRIVATE);
				
		t1=(TextView) findViewById(R.id.textView1);
		t2=(TextView) findViewById(R.id.textView2);
		
		
		
		username=sp.getString("username", "");
		if(username.equals("")){
			Intent i=new Intent(this,Register.class);
			this.startActivity(i);
			finish();
		}
		else{
			sm=(SensorManager) getSystemService(SENSOR_SERVICE);
			sen=sm.getDefaultSensor(Sensor.TYPE_ACCELEROMETER);
			sm.registerListener(this, sen,SensorManager.SENSOR_DELAY_NORMAL);
			lm=(LocationManager) getSystemService(LOCATION_SERVICE);
			lm.requestSingleUpdate(LocationManager.GPS_PROVIDER, this, null);
		}
		
			
		
		
	}

	@Override
	protected void onResume() {
		super.onResume();
		username=sp.getString("username", "");
		if(username.equals("")){
			Intent i=new Intent(this,Register.class);
			this.startActivity(i);
		}
		else{
			sm=(SensorManager) getSystemService(SENSOR_SERVICE);
			sen=sm.getDefaultSensor(Sensor.TYPE_ACCELEROMETER);
			sm.registerListener(this, sen,SensorManager.SENSOR_DELAY_NORMAL);
			
		}
		
	}

	
	
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.learn_app, menu);
		return true;
	}

	@Override
	public void onLocationChanged(Location location) {
		double lat,lon;
		String slat,slon;
		String time="";
		lat=location.getLatitude();
		lon=location.getLongitude();
		slat=String.valueOf(lat);
		slon=String.valueOf(lon);
//		t1.setText(slat);
//		t2.setText(slon);
		t1.setText("Location updated");
		
		final String addr="http://kr.comze.com/wru.php?user="+username+"&lat="+slat+"&lon="+slon+"&time="+time;
		
		Thread t=new Thread(){
			@Override
			public void run(){
				try {
					URL url = new URL(addr);
					HttpURLConnection con= (HttpURLConnection) url.openConnection();
					con.getInputStream();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		};
		t.start();
		
	}

	@Override
	public void onProviderDisabled(String provider) {
		t1.setText("Turn on GPS to be visible");
		
	}

	@Override
	public void onProviderEnabled(String provider) {
		t1.setText("Searching for GPS satellites...");
		
	}

	@Override
	public void onStatusChanged(String provider, int status, Bundle extras) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void onAccuracyChanged(Sensor sensor, int accuracy) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void onSensorChanged(SensorEvent event) {
		
		
		long cur_time=System.currentTimeMillis();
		if((cur_time-accel_last_time) > 10000){
			
			int x=(int)event.values[0];
			int y=(int)event.values[1];
			int z=(int)event.values[2];
			
			if((x-accel_last_x)>1 || (y-accel_last_y)>1 || (z-accel_last_z)>1)
			{
				accel_last_time=cur_time;
				accel_last_x=x;
				accel_last_y=y;
				accel_last_z=z;
				//t1.setText("Updating Location...");
				lm.requestSingleUpdate(LocationManager.GPS_PROVIDER, this, null);
			}
			
		}
	}

}
