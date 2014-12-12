package src;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class BootStarter extends BroadcastReceiver {

	@Override
	public void onReceive(Context context, Intent arg1) {
		Intent in=new Intent(context,NetworkShake.class);
		context.startService(in);
	}


}
