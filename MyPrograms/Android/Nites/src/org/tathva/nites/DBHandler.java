package org.tathva.nites;

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
		command="CREATE TABLE Nites(name text, contents text, date text, venue text, PRIMARY KEY(name));";
		db.execSQL(command);

	}

	@Override
	public void onUpgrade(SQLiteDatabase db, int oldver, int newver) {
		// TODO Auto-generated method stub

	}
	
	public void addItem(Nite lec){
		SQLiteDatabase db=getWritableDatabase();
		ContentValues val=new ContentValues();
		val.put("name", lec.name);
		val.put("date", lec.date);
		val.put("venue", lec.venue);
		val.put("contents", lec.contents);
		db.insert("Nites", null, val);
	}
	
	public Nite getNite(String name){
		SQLiteDatabase db=getReadableDatabase();
		Cursor cur=db.query("Nites", null, "name=?", new String[]{name}, null, null, null);
		cur.moveToFirst();
		Nite lec=new Nite(cur.getString(0), cur.getString(1), cur.getString(2), cur.getString(3));
		return lec;
	}
	
	public void updateItem(Nite lec){
		SQLiteDatabase db=getWritableDatabase();
		ContentValues val=new ContentValues();

		val.put("name", lec.name);
		val.put("date", lec.date);
		val.put("venue", lec.venue);
		val.put("contents", lec.contents);
		
		db.update("Nites", val, "name=?", new String[]{lec.name});
	}

}
