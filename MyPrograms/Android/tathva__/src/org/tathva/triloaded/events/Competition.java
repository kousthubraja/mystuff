package org.tathva.triloaded.events;

import org.tathva.triloaded.customviews.ScheduleWindow;
import org.tathva.triloaded.mainmenu.R;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.View.OnClickListener;;

public class Competition extends Activity implements OnClickListener {
	
	public static final String COMPETITION_ID = "id";
	

	
	
	String EventId;
	EventDB db=new EventDB(this);
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		
		super.onCreate(savedInstanceState);
		requestWindowFeature(Window.FEATURE_NO_TITLE);
		getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
				WindowManager.LayoutParams.FLAG_FULLSCREEN);
		
		
		setContentView(R.layout.competitions);
		
		Intent i=getIntent();
		EventId=i.getExtras().getString("id");
		//Load Data of competition with id = competitionId
		
		TextView title = (TextView) findViewById(R.id.statusText);
		TextView txtCompDesc= (TextView) findViewById(R.id.txtCompDesc);
		
//		Toast.makeText(this, id , Toast.LENGTH_LONG).show();
		Event event=db.getEvent(EventId);
		title.setText(event.eventName);
		txtCompDesc.setText(event.contents);
		
		//webView.loadUrl("file:///android_asset/"+codeLower+"/"+ codeLower+".html");

		
		
		Button callBtn = (Button) findViewById(R.id.callButton);
		Button navBtn = (Button) findViewById(R.id.navButton);
		Button scheduleBtn = (Button) findViewById(R.id.scheduleButton);
		Button wishBtn = (Button) findViewById(R.id.wishButton);
		Button fShareBtn = (Button) findViewById(R.id.fButton);
		Button resultBtn = (Button) findViewById(R.id.resultButton);
		
		
		callBtn.setOnClickListener(this);
		navBtn.setOnClickListener(this);
		scheduleBtn.setOnClickListener(this);
		wishBtn.setOnClickListener(this);
		fShareBtn.setOnClickListener(this);
		resultBtn.setOnClickListener(this);
		
	}
	
	
	
	@Override
	public void onClick(View btn) {
		switch(btn.getId()){
			case R.id.callButton : break;
			case R.id.navButton : break;
			case R.id.scheduleButton:
				Event event=db.getEvent(EventId);
				ScheduleWindow schedule = new ScheduleWindow(Competition.this,event);
				schedule.show(); 
				break;
			case R.id.wishButton: break;
			case R.id.fButton: break;
			case R.id.resultButton: break;
		}
		
	}
	
	
}
