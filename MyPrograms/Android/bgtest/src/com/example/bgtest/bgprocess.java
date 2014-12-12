package com.example.bgtest;

import java.net.HttpURLConnection;
import java.net.URL;



import android.app.Service;
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
import android.os.IBinder;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

public class bgprocess extends Service implements LocationListener, SensorEventListener {

	
	LocationManager lm;
	String username;
	SharedPreferences sp;
	SensorManager sm;
	Sensor sen;
	Long accel_last_time=(long) 0;
	int accel_last_x=0;
	int accel_last_y=0;
	int accel_last_z=0;
	
	@Override
	public IBinder onBind(Intent arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void onCreate() {
		Toast.makeText(this, "created", Toast.LENGTH_LONG).show();
		super.onCreate();
		
		sp=getSharedPreferences("wru",MODE_PRIVATE);
		

		sm=(SensorManager) getSystemService(SENSOR_SERVICE);
		sen=sm.getDefaultSensor(Sensor.TYPE_ACCELEROMETER);
		sm.registerListener(this, sen,SensorManager.SENSOR_DELAY_NORMAL);
		lm=(LocationManager) getSystemService(LOCATION_SERVICE);
		lm.requestSingleUpdate(LocationManager.GPS_PROVIDER, this, null);
		
		username=sp.getString("username", "");
		if(username.equals("")){
			//Intent i=new Intent(this,Register.class);
			//this.startActivity(i);
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
	public void onDestroy() {
		Toast.makeText(this, "stopped", Toast.LENGTH_LONG).show();
		super.onDestroy();
	}

	@Override
	@Deprecated
	public void onStart(Intent intent, int startId) {
		// TODO Auto-generated method stub
		super.onStart(intent, startId);
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

	@Override
	public void onAccuracyChanged(Sensor arg0, int arg1) {
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
