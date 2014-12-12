package org.tathva.triloaded.mainmenu;


import org.tathva.triloaded.customviews.MenuCircle;
import org.tathva.triloaded.customviews.MenuTitleBar;
import org.tathva.triloaded.customviews.MenuCircle.onClickMenu;
import org.tathva.triloaded.events.Competition;
import org.tathva.triloaded.events.EventsMenu;
import org.tathva.triloaded.mainmenu.R;

import android.R.id;
import android.app.Activity;
import android.app.ActionBar;
import android.app.Fragment;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.Bundle;
import android.util.Log;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnHoverListener;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import android.os.Build;

public class MainMenu extends Activity {


    private MenuCircle menu;
    private MenuTitleBar title;

	@Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        
        requestWindowFeature(Window.FEATURE_NO_TITLE);
		getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
				WindowManager.LayoutParams.FLAG_FULLSCREEN);
       
		setContentView(R.layout.main_menu);
      
		//startActivity(new Intent(MainMenu.this, EventsMenu.class));
		
        overridePendingTransition(R.anim.fade, R.anim.hold);
      
        menu = (MenuCircle) findViewById(R.id.menuCircle);
        title = (MenuTitleBar) findViewById(R.id.titlebar);
        title.setVisibility(View.INVISIBLE);
        
        /* MENU EVENTS */
        menu.setOnClickMenu(new onClickMenu() {
			
			@Override
			public void onClick(int SectionCode) {
				/* Click Implementation */
				
				switch(SectionCode){
					case MenuCircle.EVENTS:
					
						startActivity(new Intent(MainMenu.this, EventsMenu.class));
						
						break;
					case MenuCircle.ANNOUNCEMENTS:
						
						startActivity(new Intent(MainMenu.this, EventsMenu.class));
						
						break;
					case MenuCircle.WISHLIST:
						
						startActivity(new Intent(MainMenu.this, EventsMenu.class));
						
						break;
					case MenuCircle.DEV_NERDS:
						
						startActivity(new Intent(MainMenu.this, EventsMenu.class));
						
						break;
					case MenuCircle.NAVIGATION:
						
						startActivity(new Intent(MainMenu.this, EventsMenu.class));
						
						break;
					case MenuCircle.EXPERIENCE:
						
						startActivity(new Intent(MainMenu.this, EventsMenu.class));
						
						break;
					default: break;
				}
				
				
			}
		});
        
        menu.setHoverListener(new MenuCircle.onHoverMenu() {
			
			@Override
			public void onHover(int section) {
				
				if(section == 0){
					title.flyOut();
				}else{
					title.setVisibility(View.VISIBLE);
					title.setSectionCode(section);
					title.flyIn();
				}
				
			}
		});
      
    }
        
	
	@Override
	protected void onResume() {
		menu.refreshState();
		super.onPause();
	}
	@Override
	protected void onPause() {
		title.flyOut();
		super.onPause();
	}
   

}
