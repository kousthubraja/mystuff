package org.tathva.triloaded.events;

import org.tathva.triloaded.customviews.ScheduleWindow;
import org.tathva.triloaded.mainmenu.R;

import android.app.Activity;
import android.os.Bundle;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.View.OnClickListener;

public class Workshop extends Activity implements OnClickListener{
	
	
	public static final String WORKSHOP_ID = "id";
	

	
	private int workshopId;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		
		super.onCreate(savedInstanceState);
		requestWindowFeature(Window.FEATURE_NO_TITLE);
		getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
				WindowManager.LayoutParams.FLAG_FULLSCREEN);
		
		
		
		setContentView(R.layout.workshop);
		workshopId = getIntent().getExtras().getInt(WORKSHOP_ID);
		
		//Load Data of competition with id = competitionId
		TextView title = (TextView) findViewById(R.id.statusText);
		
		WebView webView = (WebView) findViewById(R.id.webview);
		webView.loadUrl("file:///android_asset/Workshop/5/5.html");
		
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
				ScheduleWindow schedule = new ScheduleWindow(Workshop.this,workshopId);
				schedule.show(); 
				break;
		case R.id.wishButton: break;
		case R.id.fButton: break;
	}
		
	}
	
}
