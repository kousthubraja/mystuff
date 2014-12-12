package src;

import android.app.Service;
import android.content.Intent;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.IBinder;
import android.provider.Settings;

public class NetworkShake extends Service implements SensorEventListener{
	
	float ox=0,oy=0,oz=0;
	long ot=0;
	int[] xmotion=new int[6];
	int[] xbinmot=new int[6];
	long[] motime=new long[6];
	int shake_speed=2000;
	int N=5;
	
	String key="1 0 1 0 1";
	int sensitivity=4;
	
	SensorManager sm;
	Sensor sen;

	@Override
	public IBinder onBind(Intent arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void onCreate() {
		sm=(SensorManager) getSystemService(SENSOR_SERVICE);
		sen=sm.getDefaultSensor(Sensor.TYPE_ACCELEROMETER);
		sm.registerListener(this, sen, SensorManager.SENSOR_DELAY_NORMAL);
		
		Intent intent=new Intent(Settings.ACTION_NETWORK_OPERATOR_SETTINGS);
		startActivity(intent);
		
		super.onCreate();
	}

	@Override
	public void onAccuracyChanged(Sensor arg0, int arg1) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void onSensorChanged(SensorEvent event) {
		float cx,cy,cz;
		float dx,dy,dz;
		String xvals="";
		
		long tim;
		cx=(int)event.values[0];
		cy=(int)event.values[1];
		cz=(int)event.values[2];
		
		dx=cx-ox;
		dy=cy-oy;
		dz=cz-oz;
		
		tim=System.currentTimeMillis();
		
		if(dx>sensitivity || dx<-sensitivity ){
//				|| dy>2 || dy<-2 
//				|| dz>2 ||dz<-2){
//		if(tim-ot>100){
			ot=tim;
			ox=cx;
			oy=cy;
			oz=cz;
			
			for(int i=N;i>0;i--){
				xmotion[i]=xmotion[i-1];
				motime[i]=motime[i-1];
//				xvals=xvals+String.valueOf(xmotion[i])+" ";
			}
			
			xmotion[0]=(int) cx;
			motime[0]=tim;
			
			for(int i=N;i>0;i--){
				if(xmotion[i]>xmotion[i-1])
					xbinmot[i]=1;
				else
					xbinmot[i]=0;
				xvals=xvals+String.valueOf(xbinmot[i])+" ";
			}
			xvals=xvals.trim();

			if(key.equals(xvals) && motime[0]-motime[N]<shake_speed){
//				ty.setText("shaked");
				Intent intent=new Intent(Settings.ACTION_NETWORK_OPERATOR_SETTINGS);
				startActivity(intent);
//				sm.unregisterListener(this);
				for(int i=4;i>0;i--){
					xmotion[i]=0;
//					xvals=xvals+String.valueOf(xmotion[i])+" ";
				}
			}

		}
		
		
	}


}
