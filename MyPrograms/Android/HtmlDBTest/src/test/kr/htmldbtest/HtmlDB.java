package test.kr.htmldbtest;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.webkit.WebSettings.LayoutAlgorithm;
import android.webkit.WebView;
import android.widget.Toast;

public class HtmlDB extends Activity {

	DBase db;
	String dbpath;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_html_db);
		
		if(checkDB()){
//			Toast.makeText(this, "exist", Toast.LENGTH_LONG).show();
		}
		else{
//			Toast.makeText(this, "not exist", Toast.LENGTH_LONG).show();
			copyDataBase();
		}
		
		db=new DBase(this);
		db.Update();
		Content content=db.getContent("1");
		
		
		File outDir=getCacheDir();
		try {
			File outFile= new File(outDir.getPath(),content.id+".html");
			
			BufferedWriter writer= new BufferedWriter(new FileWriter(outFile));
			writer.write(content.contents);
			writer.close();
			
			File outImg= new File(outDir.getPath(),"1.gif");
			
			FileOutputStream fos=new FileOutputStream(outImg);
			fos.write(content.image1);
			fos.close();
			
			WebView wv1=(WebView) findViewById(R.id.webView1);
			wv1.loadUrl("file://"+outFile.getAbsolutePath());
			wv1.getSettings().setLayoutAlgorithm(LayoutAlgorithm.SINGLE_COLUMN);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


	
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.html_db, menu);
		return true;
	}
	
	private boolean checkDB(){
		File fil=this.getDatabasePath("htmltest.db");
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
	    	 
	    	InputStream myInput = this.getAssets().open("htmltest.db");
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
