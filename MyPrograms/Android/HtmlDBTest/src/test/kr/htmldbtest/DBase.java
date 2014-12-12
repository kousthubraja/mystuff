package test.kr.htmldbtest;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.AsyncTask;
import android.util.Log;
import android.webkit.WebView.FindListener;
import android.widget.TextView;

public class DBase extends SQLiteOpenHelper {

	public DBase(Context context) {
		super(context, "htmltest.db",null,1);
		// TODO Auto-generated constructor stub
	}


	@Override
	public void onCreate(SQLiteDatabase arg0) {
		// TODO Auto-generated method stub

	}

	@Override
	public void onUpgrade(SQLiteDatabase arg0, int arg1, int arg2) {
		// TODO Auto-generated method stub

	}
	
	public Content getContent(String id){
		SQLiteDatabase db=getReadableDatabase();
		String query="SELECT id,content,image FROM htmls WHERE id="+id;
		Cursor cursor=db.rawQuery(query,null);
		cursor.moveToFirst();
		Content content=new Content(cursor.getString(0),cursor.getString(1),cursor.getBlob(2));
		return content;
//		return cursor.getString(0);
	}
	
	public void Update(){
		new AsyncTask<Void, Void, Void>(){

			@Override
			protected Void doInBackground(Void... arg0) {
				try {
					URL url=new URL("http://tri.comule.com/sql/sqlupdate.sql");
					HttpURLConnection con= (HttpURLConnection) url.openConnection();
					InputStreamReader isr= new InputStreamReader(con.getInputStream());
					BufferedReader reader= new BufferedReader(isr);
					String line;
					List<String> sql=new ArrayList<String>();
					StringBuilder st=new StringBuilder();
					
					while((line=reader.readLine())!=null){
						if(line.startsWith("<!--"))
							break;
						sql.add(line);
					}
					
					SQLiteDatabase db=getReadableDatabase();
					for(String com: sql){
						Log.d("sql",com);
					db.execSQL(com);
					}
					
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return null;
			}
			
		}.execute();
	}
	
	

}
