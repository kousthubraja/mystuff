package test.kr.maptest;

public class Location {

	String place,lat,lon;
	
	public Location(String place, String lat, String lon) {
		this.place=place;
		this.lat=lat;
		this.lon=lon;
	}
	
	public String getPos(){
		return lat+","+lon;
	}
	
	public String getName(){
		return place;
	}
	
	public String getLat(){
		return lat;
	}
	
	public String getLon(){
		return lon;
	}
	

}
