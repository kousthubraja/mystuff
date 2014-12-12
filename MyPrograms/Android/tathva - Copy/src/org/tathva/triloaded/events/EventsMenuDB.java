package org.tathva.triloaded.events;

import java.util.ArrayList;
import java.util.List;

import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;

public class EventsMenuDB extends SQLiteOpenHelper {

	public EventsMenuDB(Context context) {
		super(context, "tathva.db", null, 1);
		// TODO Auto-generated constructor stub
	}

	public EventsMenuDB(Context context, String name, CursorFactory factory,
			int version, DatabaseErrorHandler errorHandler) {
		super(context, name, factory, version, errorHandler);
		// TODO Auto-generated constructor stub
	}

	@Override
	public void onCreate(SQLiteDatabase db) {
		// TODO Auto-generated method stub

	}

	@Override
	public void onUpgrade(SQLiteDatabase arg0, int arg1, int arg2) {
		// TODO Auto-generated method stub

	}
	
	public List<Event> getWorkshopsList(){
		List<Event> list=new ArrayList<Event>();
		String query="SELECT code,name FROM events WHERE type='WORKSHOPS'";
		SQLiteDatabase db=this.getReadableDatabase();
		Cursor cursor=db.rawQuery(query,null);
		
		if(cursor.moveToFirst()){
			do{
				Event event=new Event(cursor.getString(0),cursor.getString(1),Event.WORKSHOP);
				list.add(event);
			}while(cursor.moveToNext());
		}
		
		return list;
		
	}
	
	public List<Event> getLecturesList(){
		List<Event> list=new ArrayList<Event>();
		String query="SELECT code,name FROM events WHERE type='LECTURES'";
		SQLiteDatabase db=this.getReadableDatabase();
		Cursor cursor=db.rawQuery(query,null);
		
		if(cursor.moveToFirst()){
			do{
				Event event=new Event(cursor.getString(0),cursor.getString(1),Event.WORKSHOP);
				list.add(event);
			}while(cursor.moveToNext());
		}
		
		return list;
		
	}
	
	public List<Event> getExhibitionsList(){
		List<Event> list=new ArrayList<Event>();
		String query="SELECT code,name FROM events WHERE type='EXHIBITIONS'";
		SQLiteDatabase db=this.getReadableDatabase();
		Cursor cursor=db.rawQuery(query,null);
		
		if(cursor.moveToFirst()){
			do{
				Event event=new Event(cursor.getString(0),cursor.getString(1),Event.WORKSHOP);
				list.add(event);
			}while(cursor.moveToNext());
		}
		
		return list;
		
	}
	
	public List<String> getBranchList(){
		List<String> list=new ArrayList<String>();
		String query="SELECT DISTINCT genre FROM events WHERE genre IS NOT NULL";
		SQLiteDatabase db=this.getReadableDatabase();
		Cursor cursor=db.rawQuery(query,null);
		
		if(cursor.moveToFirst()){
			do{
				list.add(cursor.getString(0));
			}while(cursor.moveToNext());
		}
		
		return list;
		
	}
	
	public List<String> getCompList(String branch){
		List<String> list=new ArrayList<String>();
		String query="SELECT name FROM events WHERE genre='" + branch+"'";
		SQLiteDatabase db=this.getReadableDatabase();
		Cursor cursor=db.rawQuery(query,null);
		
		if(cursor.moveToFirst()){
			do{
				list.add(cursor.getString(0));
			}while(cursor.moveToNext());
		}
		
		return list;
		
	}
	
	

}
