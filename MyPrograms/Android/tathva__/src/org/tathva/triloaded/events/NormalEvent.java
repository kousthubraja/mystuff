package org.tathva.triloaded.events;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;

import org.tathva.triloaded.customviews.ScheduleWindow;
import org.tathva.triloaded.mainmenu.R;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebView;
import android.webkit.WebSettings.LayoutAlgorithm;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

public class NormalEvent extends Activity implements OnClickListener{


	
	EventDB db=new EventDB(this);
	private String EventId;

	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		
		super.onCreate(savedInstanceState);
		requestWindowFeature(Window.FEATURE_NO_TITLE);
		getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
				WindowManager.LayoutParams.FLAG_FULLSCREEN);
		
		
		setContentView(R.layout.normalevent);
		
		Intent i=getIntent();
		EventId=i.getExtras().getString("id");
		
		//Load Data of competition with id = competitionId
		TextView title = (TextView) findViewById(R.id.statusText);

		
		
		//txtDesc.setText(event.contents);
		Updater updater=new Updater(this);
		updater.updateEventContents(EventId);
		
		Event event=db.getEvent(EventId);
		title.setText(event.eventName);
		
		File outDir=getCacheDir();
		try {
//			Log.d("eventId", event.eventId);
//			Log.d("eventId", event.HTML);
			
			if(event.HTML!=null){
				File outFile= new File(outDir.getPath(),event.eventId+".html");
				BufferedWriter writer= new BufferedWriter(new FileWriter(outFile));
				writer.write(event.HTML);
				writer.close();
				
				if(event.img1!=null){
					File outImg= new File(outDir.getPath(),EventId+"_1.jpg");
					FileOutputStream fos=new FileOutputStream(outImg);
					fos.write(event.img1);
					fos.close();
				}
				
				if(event.img2!=null){
					File outImg= new File(outDir.getPath(),EventId+"_2.jpg");
					FileOutputStream fos=new FileOutputStream(outImg);
					fos.write(event.img2);
					fos.close();
				}
				if(event.img3!=null){
					File outImg= new File(outDir.getPath(),EventId+"_3.jpg");
					FileOutputStream fos=new FileOutputStream(outImg);
					fos.write(event.img3);
					fos.close();
				}
				WebView wv1=(WebView) findViewById(R.id.normalevent_webview);
				wv1.loadUrl("file://"+outFile.getAbsolutePath());
				wv1.getSettings().setLayoutAlgorithm(LayoutAlgorithm.SINGLE_COLUMN);
			}
			
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		Button callBtn = (Button) findViewById(R.id.callButton);
		Button navBtn = (Button) findViewById(R.id.navButton);
		Button scheduleBtn = (Button) findViewById(R.id.scheduleButton);
		Button wishBtn = (Button) findViewById(R.id.wishButton);
		Button fShareBtn = (Button) findViewById(R.id.fButton);
		
		
		
		callBtn.setOnClickListener(this);
		navBtn.setOnClickListener(this);
		scheduleBtn.setOnClickListener(this);
		wishBtn.setOnClickListener(this);
		fShareBtn.setOnClickListener(this);
	}

	@Override
	public void onClick(View btn) {
		switch(btn.getId()){
		case R.id.callButton : break;
		case R.id.navButton : break;
		case R.id.scheduleButton:
				Event event=db.getEvent(EventId);
				ScheduleWindow schedule = new ScheduleWindow(NormalEvent.this,event);
				schedule.show(); 
				break;
		case R.id.wishButton: break;
		case R.id.fButton: break;
	}
		
	}
	
	
	
}

