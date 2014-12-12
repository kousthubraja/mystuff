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
import android.view.View.OnClickListener;;

public class Competition extends Activity implements OnClickListener {
	
	public static final String COMPETITION_ID = "id";
	
	public static final int GAME_OF_BUGS = 0;
	public static final int IBM_VIRTUAL_TUX = 1;
	public static final int KODERKOMBAT = 2;
	public static final int TUX_OF_WAR = 3;
	
	public static final int ACCELERO_BOTX = 4;
	public static final int CIRCUITRACE = 5;
	public static final int OSCILLO_AGON = 6;
	public static final int PURETRICS = 7;
	
	
	private int competitionId;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		
		super.onCreate(savedInstanceState);
		requestWindowFeature(Window.FEATURE_NO_TITLE);
		getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
				WindowManager.LayoutParams.FLAG_FULLSCREEN);
		
		
		setContentView(R.layout.competitions);
		
		competitionId = getIntent().getExtras().getInt(COMPETITION_ID);
		//Load Data of competition with id = competitionId
		
		TextView title = (TextView) findViewById(R.id.statusText);
		WebView webView = (WebView) findViewById(R.id.webview);
		webView.loadUrl("file:///android_asset/Competition/4/4.html");
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
					ScheduleWindow schedule = new ScheduleWindow(Competition.this,competitionId);
					schedule.show(); 
					break;
			case R.id.wishButton: break;
			case R.id.fButton: break;
			case R.id.resultButton: break;
		}
		
	}
	
	
}
