package kr.test.camtest;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.provider.MediaStore;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;

public class CamTest extends Activity {

	ImageView imgview;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_cam_test);
		
		imgview= (ImageView) findViewById(R.id.imageView1);
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.cam_test, menu);
		return true;
	}

	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		// Handle action bar item clicks here. The action bar will
		// automatically handle clicks on the Home/Up button, so long
		// as you specify a parent activity in AndroidManifest.xml.
		int id = item.getItemId();
		if (id == R.id.action_settings) {
			return true;
		}
		return super.onOptionsItemSelected(item);
	}
	
	public void opencam(View v){
		//Camera cam= Camera.open();
		//Parameters param = cam.getParameters();
		//List<Camera.Size> ls =  param.getSupportedPictureSizes();
		dispatchTakePictureIntent();
	}
	
	public void compress(View v){
//	    if (requestCode == REQUEST_IMAGE_CAPTURE && resultCode == RESULT_OK) {
//        Bundle extras = data.getExtras();
//        Bitmap imageBitmap = (Bitmap) extras.get("data");
//        imgview.setImageBitmap(imageBitmap);
//    }
	Log.e("Error msg", "activ");
	try {
        FileOutputStream out = new FileOutputStream(fn);
        Bitmap bm = BitmapFactory.decodeStream(new FileInputStream(fn));
        bm.compress(Bitmap.CompressFormat.JPEG, 90, out);
        out.flush();
        out.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
}
	
	
	static final int REQUEST_IMAGE_CAPTURE = 1;

	static final int REQUEST_TAKE_PHOTO = 1;

	
	String mCurrentPhotoPath;

	private String fn;

	private File createImageFile() throws IOException {
	    // Create an image file name
	    String timeStamp = new SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date());
	    String imageFileName = "JPEG_" + timeStamp + "_";
	    File storageDir = Environment.getExternalStoragePublicDirectory(
	            Environment.DIRECTORY_DCIM);
	   // File storageDir = Environment.getExternalStoragePublicDirectory(
	    //        "/sdcard");
	    //fn= Environment.DIRECTORY_DCIM + "/" + imageFileName +".jpg";
	    File image = File.createTempFile(
	        imageFileName,  /* prefix */
	        ".jpg",         /* suffix */
	        storageDir      /* directory */
	    );

	    // Save a file: path for use with ACTION_VIEW intents
	    mCurrentPhotoPath = "file:" + image.getAbsolutePath();
	    Log.d("filepath", mCurrentPhotoPath);
	    fn=mCurrentPhotoPath;
	    return image;
	}
	
	private void dispatchTakePictureIntent() {
	    Intent takePictureIntent = new Intent(MediaStore.ACTION_IMAGE_CAPTURE);
	    // Ensure that there's a camera activity to handle the intent
	    if (takePictureIntent.resolveActivity(getPackageManager()) != null) {
	        // Create the File where the photo should go
	        File photoFile = null;
	        try {
	            photoFile = createImageFile();
	        } catch (IOException ex) {
	           Log.e("Error msg", ex.getMessage());
	        }
	        // Continue only if the File was successfully created
	        if (photoFile != null) {
	            takePictureIntent.putExtra(MediaStore.EXTRA_OUTPUT,
	                    Uri.fromFile(photoFile));
	            startActivityForResult(takePictureIntent, REQUEST_TAKE_PHOTO);
	        }
	    }
	}
	


}
