package com.kr.kmm;

import java.io.BufferedWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.Socket;
import java.net.UnknownHostException;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;



public class KMM extends Activity{

	int i;
	TextView t1;
	TextView ct;
	Handler hand;
	Socket s;
	
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_kmm);
        i=0;
        Button b1=(Button) findViewById(R.id.b1);
        t1=(TextView) findViewById(R.id.t1);
        ct=(TextView) findViewById(R.id.chat_txt);
        
       
        new Thread(new client()).start();
        
        
        b1.setOnClickListener(new OnClickListener() {
			
			public void onClick(View arg0) {
				PrintWriter out;
				try {
					out = new PrintWriter(new BufferedWriter(new OutputStreamWriter(s.getOutputStream())),true);
					out.println(t1.getText().toString());
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
		});	
    }


    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.kmm, menu);
        return true;
    }
    
    void set(){
    	String txt;
		String oldtxt;
		oldtxt=ct.getText().toString();
		txt=t1.getText().toString();
		txt="Me : "+txt+'\n'+oldtxt;
		ct.setText(txt);
		t1.setText("");
    }

    class client implements Runnable{

		@Override
		public void run() {
			try {
				s=new Socket("localhost",8085);
				
			} catch (UnknownHostException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
    	
    }

}
