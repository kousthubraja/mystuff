package com.example.bgtest;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.widget.Toast;

public class bootstarter extends BroadcastReceiver {

	@Override
	public void onReceive(Context context, Intent intent) {
		Toast.makeText(context, "created", Toast.LENGTH_LONG).show();
		
		Intent serviceintent=new Intent(context,bgprocess.class);
		context.startService(serviceintent);
		
		
		if(intent.getAction().equals(Intent.ACTION_BOOT_COMPLETED)){
			
			
		}

	}

}
