package kr.dbtest;

import java.util.ArrayList;
import java.util.List;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class DBHandler extends SQLiteOpenHelper {
	
	public DBHandler(Context context){
		super(context,"mydb",null,1);
	}

	@Override
	public void onCreate(SQLiteDatabase db) {
		String command;
		command="CREATE TABLE contacts (id INTEGER, name TEXT)";
		db.execSQL(command);
	}

	@Override
	public void onUpgrade(SQLiteDatabase db, int oldver, int newver) {
		// TODO Auto-generated method stub

	}
	
	public void addcontact(String id, String name){
		SQLiteDatabase db=this.getWritableDatabase();
		
		ContentValues values = new ContentValues();
		values.put("id", id);
		values.put("name", name);
		
		db.insert("contacts", null, values);
		db.close();
	}

	public Contact getcontact(int id){
		SQLiteDatabase db=this.getReadableDatabase();
		
		Cursor cursor=db.query("contacts", new String[]{"id","name"}, "id=?", new String[]{String.valueOf(id)}, null,null,null);
		
		cursor.moveToFirst();
		Contact contact=new Contact(Integer.parseInt(cursor.getString(0)),cursor.getString(1));
		return contact;
	}
	
//	public List<Contact> getAll(){
//		List<Contact> clist=new ArrayList<Contact>();
//		
//		SQLiteDatabase db=this.getReadableDatabase();
//	}
}
