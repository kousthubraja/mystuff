package org.tathva.triloaded.customviews;

import org.tathva.triloaded.events.Event;
import org.tathva.triloaded.mainmenu.R;

import android.R.anim;
import android.app.ActionBar.LayoutParams;
import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.TabHost;
import android.widget.TabHost.TabContentFactory;
import android.widget.TextView;

public class ScheduleWindow extends Dialog {

	private int eventId;
	private Event event;
	
	public ScheduleWindow(Context context, int eventId) {
		super(context,R.style.ScheduleDialog);
		
		this.eventId = eventId;
		//replace with event data from db
		event = new Event("", "Botics", "Pending", "10:30 AM", "Baskara");
		
	}
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		
		super.onCreate(savedInstanceState);
		requestWindowFeature(Window.FEATURE_NO_TITLE);
		getWindow().setBackgroundDrawable(new ColorDrawable(android.graphics.Color.TRANSPARENT));
		getWindow().setLayout(LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT);
		
		
		TabHost tab = (TabHost) getLayoutInflater().inflate(R.layout.schedule_details, null);
		tab.setup();
		
		TabHost.TabSpec tabpage1 = tab.newTabSpec("tag1");
		tabpage1.setIndicator(getTabIndicator(getContext(),"Day 1"));
		tabpage1.setContent(new ContentFactory(event));
		tab.addTab(tabpage1);
		
		TabHost.TabSpec tabpage2 = tab.newTabSpec("tag2");
		tabpage2.setIndicator(getTabIndicator(getContext(),"Day 2"));
		tabpage2.setContent(new ContentFactory(new Event("", "some", "Progressing", "8:00 AM", "ELHC")));
		tab.addTab(tabpage2);
		
		TabHost.TabSpec tabpage3 = tab.newTabSpec("tag3");
		tabpage3.setIndicator(getTabIndicator(getContext(),"Day 3"));
		tabpage3.setContent(new ContentFactory(new Event("", "some", ":D ", "9:00 AM", "RajPath")));
		tab.addTab(tabpage3);
		
		setContentView(tab);
		
	}
	private View getTabIndicator(Context context,String text) {
		View view = LayoutInflater.from(context).inflate(R.layout.tabindicator, null);
		TextView tv = (TextView) view.findViewById(R.id.tabText);
		tv.setText(text);
		return view;
	}
	
	
	private class ContentFactory implements TabContentFactory{
		Event event;
		public ContentFactory(Event e) {
			this.event = e;
		}
		@Override
		public View createTabContent(String tag) {
			View view = LayoutInflater.from(getContext()).inflate(R.layout.schedule_content, null);
			TextView statusTv = (TextView) view.findViewById(R.id.statusText);
			TextView timeTv = (TextView) view.findViewById(R.id.timeText);
			TextView venueTv = (TextView) view.findViewById(R.id.venueText);
			//Setting Data
			statusTv.setText("Status : "+event.getStatus());
			timeTv.setText("Time : "+event.getTime());
			venueTv.setText("Venue : "+event.getVenue());
			
			return view;
		}
		
	}
	
}
