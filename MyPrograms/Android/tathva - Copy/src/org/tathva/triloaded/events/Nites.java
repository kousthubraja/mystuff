package org.tathva.triloaded.events;
/*
import com.example.tathva14.R;
import com.example.tathva14.R.drawable;
import com.example.tathva14.R.id;
import com.example.tathva14.R.layout;
import com.example.tathva14.R.string;
*/

import org.tathva.triloaded.mainmenu.R;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ViewSwitcher.ViewFactory;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

public class Nites extends Activity implements View.OnClickListener {

	TextView nitesTitle;
	ImageView poster;
	TextView nitesDetail;
	LinearLayout buttonsPalette, gridLayout;
	Typeface tf1, tf2;
	GridView gridview;

	Button call, fb, schedule, location, favorite;

	Integer[] mThumbIds = { R.drawable.tdt_poster,R.drawable.tdt_poster,R.drawable.tdt_poster,R.drawable.tdt_poster, };

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);

		/** Fullscreen **/
		requestWindowFeature(Window.FEATURE_NO_TITLE);
		getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
				WindowManager.LayoutParams.FLAG_FULLSCREEN);
		setContentView(R.layout.nites_new);

		initialise();
		
		//nitesTitle.setTypeface(tf1);

		call.setOnClickListener(this);
		fb.setOnClickListener(this);
		schedule.setOnClickListener(this);
		location.setOnClickListener(this);
		favorite.setOnClickListener(this);

		/** GRID VIEW ON LEFT **/
		gridview = (GridView) findViewById(R.id.gvImageThumbnails);
		gridview.setAdapter(new ImageAdapter(this));

		gridview.setOnItemClickListener(new OnItemClickListener() {
			public void onItemClick(AdapterView<?> parent, View v,
					int position, long id) {
				poster.setImageDrawable(getResources().getDrawable(
						mThumbIds[position]));
				switch (position) {
				case 0:
				case 4:
				case 8:
					nitesTitle.setText("SUNBURN CAMPUS");
					nitesTitle.setBackgroundColor(Color.parseColor("#81F7F3"));

					nitesDetail.setText(R.string.sunburn_details);

					buttonsPalette.setBackgroundColor(Color
							.parseColor("#81F7F3"));
					gridview.setBackgroundColor(Color.parseColor("#81F7F3"));

					break;

				case 1:
				case 5:
				case 9:
					nitesTitle.setText("ROCK BAND");
					nitesTitle.setBackgroundColor(Color.parseColor("#F79F81"));

					nitesDetail.setText(R.string.rock_band_details);

					buttonsPalette.setBackgroundColor(Color
							.parseColor("#F79F81"));
					gridview.setBackgroundColor(Color.parseColor("#F79F81"));

					break;

				case 2:
				case 6:
				case 10:
					nitesTitle.setText("SOUTHERN COMBO");
					nitesTitle.setBackgroundColor(Color.parseColor("#F3F781"));

					nitesDetail.setText(R.string.southern_combo_details);

					buttonsPalette.setBackgroundColor(Color
							.parseColor("#F3F781"));

					gridview.setBackgroundColor(Color.parseColor("#F3F781"));

					break;

				case 3:
				case 7:
				case 11:
					nitesTitle.setText("THE DOWN TRODDENCE");
					nitesTitle.setBackgroundColor(Color.parseColor("#9FF781"));

					nitesDetail.setText(R.string.the_down_troddence_details);

					buttonsPalette.setBackgroundColor(Color
							.parseColor("#9FF781"));

					gridview.setBackgroundColor(Color.parseColor("#9FF781"));

					break;

				default:
					break;
				}
			}
		});

	}

	private void initialise() {
		// TODO Auto-generated method stub
		nitesTitle = (TextView) findViewById(R.id.tvNitesTitle);
		poster = (ImageView) findViewById(R.id.ivPoster);
		nitesDetail = (TextView) findViewById(R.id.tvNitesDetails);
		buttonsPalette = (LinearLayout) findViewById(R.id.llButtons);
		gridLayout = (LinearLayout) findViewById(R.id.llGridPalette);
		gridview = (GridView) findViewById(R.id.gvImageThumbnails);

		//tf1 = Typeface.createFromAsset(getAssets(), "fonts/timbers.ttf");

		call = (Button) findViewById(R.id.bCallEventManager);
		fb = (Button) findViewById(R.id.bFacebook);
		schedule = (Button) findViewById(R.id.bSchedule);
		location = (Button) findViewById(R.id.bLocation);
		favorite = (Button) findViewById(R.id.bFavorites);
	}

	public class ImageAdapter extends BaseAdapter {
		private Context mContext;

		public ImageAdapter(Context c) {
			mContext = c;
		}

		public int getCount() {
			return mThumbIds.length;
		}

		public Object getItem(int position) {
			return null;
		}

		public long getItemId(int position) {
			return 0;
		}

		// create a new ImageView for each item referenced by the Adapter
		public View getView(int position, View convertView, ViewGroup parent) {
			ImageView imageView;
			if (convertView == null) { // if it's not recycled, initialize some
										// attributes
				
				imageView = new ImageView(mContext);
				imageView.setLayoutParams(new GridView.LayoutParams(parent.getWidth(), parent.getWidth()));
				imageView.setScaleType(ImageView.ScaleType.FIT_XY);
				imageView.setPadding(1, 5, 1, 5);
			} else {
				imageView = (ImageView) convertView;
			}

			imageView.setImageResource(mThumbIds[position]);
			return imageView;
		}

	}

	@SuppressWarnings("deprecation")
	@Override
	public void onClick(View arg0) {
		// TODO Auto-generated method stub
		switch (arg0.getId()) {
		case R.id.bCallEventManager:
			break;
		case R.id.bFacebook:
			break;
		case R.id.bSchedule:
			break;
		case R.id.bLocation:
			break;
		case R.id.bFavorites:
			break;
		default:
			break;

		}

	}

}
