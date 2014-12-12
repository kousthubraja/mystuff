package kr.rootest;

import android.app.Activity;
import android.os.Bundle;
import android.os.PowerManager;
import android.os.SystemClock;
import android.provider.Settings.System;
import android.util.Log;
import android.view.Menu;
import android.view.View;

public class Rootest extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_rootest);
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.rootest, menu);
		return true;
	}

	public void offline(View v){
		//System sys=new System();
		//System.putString(getContentResolver(), "AIRPLANE_MODE_ON", "airplane_mode_on");
		
		android.provider.Settings.System.putInt(getContentResolver(), android.provider.Settings.System.SCREEN_BRIGHTNESS, 150);
		PowerManager pm=(PowerManager) getSystemService(POWER_SERVICE);
		pm.userActivity(SystemClock.uptimeMillis(), false);
		Log.d("myapp", "done");
	}
}
