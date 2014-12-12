package org.tathva.triloaded.mainmenu;


import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import org.tathva.triloaded.customviews.FontastiqueText;
import org.tathva.triloaded.customviews.OnFinishListener;
import org.tathva.triloaded.customviews.TathvaMan;
import org.tathva.triloaded.customviews.TathvaText;
import org.tathva.triloaded.events.Competition;
import org.tathva.triloaded.events.EventsMenu;
import org.tathva.triloaded.mainmenu.R;

import android.app.Activity;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.graphics.Point;
import android.os.Bundle;
import android.util.Log;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Toast;

public class Splash extends Activity implements OnFinishListener{
	
	private TathvaMan tathvaman;
	private TathvaText tathvatext;
	private FontastiqueText flashText;
	
	String dbpath=null;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		
		super.onCreate(savedInstanceState);
		
		requestWindowFeature(Window.FEATURE_NO_TITLE);
		getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
				WindowManager.LayoutParams.FLAG_FULLSCREEN);
		
		setContentView(R.layout.splashscreen);
		//startActivity(new Intent(Splash.this, EventsMenu.class));
	
		//Tap to accelerate!!
		
		tathvaman = (TathvaMan) findViewById(R.id.tathvaMan1);
		tathvatext = (TathvaText) findViewById(R.id.tathvaText1);
		flashText = (FontastiqueText) findViewById(R.id.flashText);
		
		checkDB();
		
		tathvaman.setOnFinishListener(this);
		tathvatext.setOnFinishListener(this);
		flashText.setOnFinishListener(this);
		tathvaman.start();
		
		if(checkDB()){
			Toast.makeText(this, "exist", Toast.LENGTH_LONG).show();
		}
		else{
			Toast.makeText(this, "not exist", Toast.LENGTH_LONG).show();
			copyDataBase();
		}
			
		
	}
	@Override
	public boolean onTouchEvent(MotionEvent event) {
		
		switch(event.getAction()){
			case MotionEvent.ACTION_UP: 
				startActivity(new Intent(Splash.this, MainMenu.class));
				finish();
				break;
		}
		
		return super.onTouchEvent(event);
	}
	@Override
	public void onFinish(int id) {
		switch(id){
		case R.id.tathvaMan1: 	tathvatext.start();break;
		case R.id.tathvaText1: 	flashText.start();break;
		case R.id.flashText:	startActivity(new Intent(Splash.this, MainMenu.class));
								finish();
								break;
		}

	}
	
	private boolean checkDB(){
		File fil=this.getDatabasePath("tathva.db");
		dbpath=fil.getPath();
		
		File db=new File(dbpath);
		
		if(!db.exists()){
			File db_dir=db.getParentFile();
			db_dir.mkdirs();
		}
		
		return db.exists();
	}
	
	private void copyDataBase(){ 
	     try{
	    	 
	    	InputStream myInput = this.getAssets().open("tathva.db");
		    String outFileName = dbpath; 
		    OutputStream myOutput = new FileOutputStream(outFileName); 
		    byte[] buffer = new byte[1024];
		    int length;
	    	while ((length = myInput.read(buffer))>0){
	        myOutput.write(buffer, 0, length);
	    }

	    myOutput.flush();
	    myOutput.close();
	    myInput.close(); 
	    }
	    catch(Exception e){
	    	//db can't b copied - abort!
	    	Toast.makeText(this, e.getMessage(), Toast.LENGTH_LONG).show();
	    	Log.d("error", e.getMessage());
	    }
	    
	}
}
