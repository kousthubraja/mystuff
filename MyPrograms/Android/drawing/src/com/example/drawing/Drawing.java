package com.example.drawing;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Bundle;
import android.view.Menu;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

public class Drawing extends Activity implements OnTouchListener,SensorEventListener{

	float x,y;
	int width,height;

	MyCanvas canv;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		
		
		super.onCreate(savedInstanceState);
//		setContentView(R.layout.activity_drawing);
		canv=new MyCanvas(this);
		canv.setOnTouchListener(this);
		SensorManager sm=(SensorManager) getSystemService(SENSOR_SERVICE);
		Sensor sen=sm.getDefaultSensor(Sensor.TYPE_ACCELEROMETER);
		sm.registerListener(this, sen,SensorManager.SENSOR_DELAY_GAME);
//		canv.setDrawingCacheEnabled(true);
//		bmp=canv.getDrawingCache();
		setContentView(canv);
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.drawing, menu);
		return true;
	}
	
	@Override
	public boolean onTouch(View v, MotionEvent event) {
		x=event.getX();
		y=event.getY();

		v.invalidate();
		
		return true;
	}
	
	public class MyCanvas extends View{

		
		
		public MyCanvas(Context context) {
			super(context);
			setOnTouchListener(Drawing.this);
		}

		@Override
		public void draw(Canvas canvas) {
			//super.draw(canvas);
			
			
			
			width=canvas.getWidth();
			height=canvas.getHeight();

			Paint paint=new Paint();
			paint.setStyle(Paint.Style.FILL);
			paint.setColor(Color.BLUE);
			
			canvas.drawPaint(paint);
			
			paint.setColor(Color.WHITE);
			canvas.drawCircle(x, y, 50, paint);
			
			
		}

		
		
		
	}

	@Override
	public void onAccuracyChanged(Sensor arg0, int arg1) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void onSensorChanged(SensorEvent event) {
		float ax,ay;
		ax=event.values[0];
		ay=event.values[1];
		
		if(!((ax<0 && x<100) || (ax>0 && x>width-100)))
		x-=ax;
		y+=ay;
		canv.invalidate();
		
		
	}

}

