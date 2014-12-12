package com.example.announcements;

import java.util.ArrayList;
import java.util.List;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;

public class NotifyDB extends SQLiteOpenHelper {

	public NotifyDB(Context context) {
		super(context, "announcements.db",null, 1);
		// TODO Auto-generated constructor stub
	}

	public NotifyDB(Context context, String name, CursorFactory factory,
			int version, DatabaseErrorHandler errorHandler) {
		super(context, name, factory, version, errorHandler);
		// TODO Auto-generated constructor stub
	}

	@Override
	public void onCreate(SQLiteDatabase db) {
		String sql="CREATE TABLE Announcements( code TEXT, title TEXT, body TEXT);";
		db.execSQL(sql);

	}

	@Override
	public void onUpgrade(SQLiteDatabase arg0, int arg1, int arg2) {
		// TODO Auto-generated method stub

	}
	
	public void Add(Announcement announcement){
		SQLiteDatabase db=getWritableDatabase();
		ContentValues val=new ContentValues();
		val.put("code", announcement.code);
		val.put("title", announcement.title);
		val.put("body", announcement.body);
		db.insert("Announcements", null, val);
		
	}
	
	public List<Announcement> getAll(){
		SQLiteDatabase db=getReadableDatabase();
		List<Announcement> list=new ArrayList<Announcement>();
		Cursor cur=db.rawQuery("SELECT * FROM Announcements", null);
		if(cur.moveToFirst()){
			do{
				Announcement an=new Announcement(
						cur.getString(cur.getColumnIndex("code")), 
						cur.getString(cur.getColumnIndex("title")),
						cur.getString(cur.getColumnIndex("body")));
				list.add(an);
			}while(cur.moveToNext());
		}
		
		return list;
	}

}
