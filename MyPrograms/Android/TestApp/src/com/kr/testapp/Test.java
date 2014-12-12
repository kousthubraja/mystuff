package com.kr.testapp;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.UnknownHostException;

import android.app.Activity;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.Menu;
import android.view.View;
import android.widget.EditText;

public class Test extends Activity {

	EditText t1;
	int i=0;
	
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_test);
        
        t1=(EditText) findViewById(R.id.editText1);
        new Thread(new Runnable(){

			@Override
			public void run() {
					try {
						//mhand.sendMessage("");
						con();
						t1.post(new Runnable(){

							@Override
							public void run() {
								t1.setText(String.valueOf(i++));
								
							}
							
						});
						
					}
					catch(Exception e){;}
			
			}
        	
        }).start();

        
    }

    public void con(){
    	try {
			Socket s=new Socket("google.comt",80);
			
			InputStream is;
			OutputStream os;
			is=s.getInputStream();
			os=s.getOutputStream();
			os.write("HTTP 1.1/".getBytes());
			System.out.println("con");
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.test, menu);
        return true;
    }
    
    public void clicked(View v){
    	
    }
    
    
    Handler mhand=new Handler(){
    	public void handleMessage(Message msg){
    		t1.setText(msg.toString());
    	}
    };
    
    class tim extends AsyncTask<String, Void, String>{
    	EditText t1;
    	
    	public tim(EditText t){
    		t1=t;
    		t=null;
    	}

		@Override
		protected String doInBackground(String... params) {
			String arg=null;
			try {
				Thread.sleep(3000);
				arg=params[0].toUpperCase();
				
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return arg;
		}
		
		protected void onPostExecute(String arg){
			t1.setText(arg);
		}
    	
    }
}
