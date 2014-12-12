package in.ac.nitc.here;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.widget.Toast;

public class BootStarter extends BroadcastReceiver {

	@Override
	public void onReceive(Context context, Intent intent) {
		
		Intent serviceintent=new Intent(context,LocationSender.class);
		context.startService(serviceintent);
		

	}

}
