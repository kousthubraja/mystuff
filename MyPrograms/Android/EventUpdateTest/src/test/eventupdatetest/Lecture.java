package test.eventupdatetest;

public class Lecture {

	String date;
	String venue;
	String name;
	String contents="";
	
	public Lecture(String n, String c, String d, String v ){
		this.date=d;
		this.name=n;
		this.venue=v;
		this.contents=c;
	}
	
	public Lecture(String n, String d, String v ){
		this.date=d;
		this.name=n;
		this.venue=v;

	}
	
}
