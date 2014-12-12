package test.eventupdatetest;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;

public class DBHandler extends SQLiteOpenHelper {

	public DBHandler(Context context) {
		super(context, "EventDB", null, 1);
	}

	@Override
	public void onCreate(SQLiteDatabase db) {
		String command;
		command="CREATE TABLE Lectures(name text, contents text, date text, venue text, PRIMARY KEY(name));";
		db.execSQL(command);

	}

	@Override
	public void onUpgrade(SQLiteDatabase db, int oldver, int newver) {
		// TODO Auto-generated method stub

	}
	
	public void addItem(Lecture lec){
		SQLiteDatabase db=getWritableDatabase();
		ContentValues val=new ContentValues();
		val.put("name", lec.name);
		val.put("date", lec.date);
		val.put("venue", lec.venue);
		val.put("contents", lec.contents);
		db.insert("Lectures", null, val);
	}
	
	public Lecture getLecture(String name){
		SQLiteDatabase db=getReadableDatabase();
		Cursor cur=db.query("Lectures", null, "name=?", new String[]{name}, null, null, null);
		cur.moveToFirst();
		Lecture lec=new Lecture(cur.getString(0), cur.getString(1), cur.getString(2), cur.getString(3));
		return lec;
	}
	
	public void updateItem(Lecture lec){
		SQLiteDatabase db=getWritableDatabase();
		ContentValues val=new ContentValues();
		val.put("name", lec.name);
		val.put("date", lec.date);
		val.put("venue", lec.venue);
		
		db.update("Lectures", val, "name=?", new String[]{lec.name});
	}

}
