package org.tathva.nites;

public class Nite {

	String date;
	String venue;
	String name;
	String contents="";
	
	public Nite(String n, String c, String d, String v ){
		this.date=d;
		this.name=n;
		this.venue=v;
		this.contents=c;
	}
	
	public Nite(String n, String d, String v ){
		this.date=d;
		this.name=n;
		this.venue=v;

	}
	
}
