package kr.dbtest;

public class Contact {

	int _id;
	String _name;
	
	public Contact(int id, String name){
		this._id=id;
		this._name=name;
	}
	
	public int getid(){
		return this._id;	
	}
	
	public String getname(){
		return this._name;
	}
}
