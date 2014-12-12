package kr.shaketest;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Bundle;
import android.app.Activity;
import android.text.method.MovementMethod;
import android.view.Menu;
import android.widget.TextView;

public class ShakeTest extends Activity implements SensorEventListener {

	TextView tx,ty,tz,ttim;
	float ox=0,oy=0,oz=0;
	long ot=0;
	int[] xmotion=new int[6];
	int[] xbinmot=new int[6];
	long[] motime=new long[6];
	int shake_speed=2000;
	int N=5;
	
//	int[] key={1,0,1,0};
	String key="1 0 1 0 1";
	int sensitivity=4;
	
	SensorManager sm;
	Sensor sen;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_shake_test);
		
		tx=(TextView) findViewById(R.id.x);
		ty=(TextView) findViewById(R.id.y);
		tz=(TextView) findViewById(R.id.z);
		ttim=(TextView) findViewById(R.id.tim);
		
		
		sm=(SensorManager) getSystemService(SENSOR_SERVICE);
		sen=sm.getDefaultSensor(Sensor.TYPE_ACCELEROMETER);
		sm.registerListener(this, sen, SensorManager.SENSOR_DELAY_NORMAL);
		
//		for(int i=2;i>0;i--){
//			xmotion[i]=0;
//		}
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.shake_test, menu);
		return true;
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
			ty.setText("");
			if(key.equals(xvals) && motime[0]-motime[N]<shake_speed){
				ty.setText("shaked");
				sm.unregisterListener(this);
				for(int i=4;i>0;i--){
					xmotion[i]=0;
//					xvals=xvals+String.valueOf(xmotion[i])+" ";
				}
			}
//			xvals+=String.valueOf(xmotion[0])+" ";
			tx.setText(xvals);
//			tx.setText(tx.getText().toString()+ " "+ String.valueOf(cx));
//			ty.setText(ty.getText().toString()+ " "+ String.valueOf(cy));
//			tz.setText(tz.getText().toString()+ " "+ String.valueOf(cz));
			
//			ty.setText(String.valueOf(cy));
//			tz.setText(String.valueOf(cz));
//			ttim.setText(String.valueOf(tim));
		}
		
		
		
		
	}
	
	

}
