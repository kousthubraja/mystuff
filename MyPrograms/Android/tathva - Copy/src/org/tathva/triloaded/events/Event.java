package org.tathva.triloaded.events;

public class Event {
	
	public static final int COMPETITION = 1;
	public static final int WORKSHOP = 2;
	public static final int EXHIBITION = 3;
	public static final int LECTURES = 4;
	
	private String eventId;
	private String eventName;
	private int eventType;
	private String eventDescription;
	private String status;
	private String time;
	private String venue;
	
	public Event(String eventId,String eventName,int eventType) {
		
		this.eventId = eventId;
		this.eventName = eventName;
		this.eventType = eventType;
		
	}
	
	public Event(String eventId,String eventName,String status,String time, String venue) {
		
		this.eventId = eventId;
		this.eventName = eventName;
		this.status = status;
		this.time = time;
		this.venue = venue;
	
		
	}
	
	public String getId(){
		return eventId;
	}
	public String getName(){
		return eventName;
	}
	public String getStatus(){
		return status;
	}
	public String getTime(){
		return time;
	}
	public String getVenue(){
		return venue;
	}
	public int getType(){
		return eventType;
	}
	
}
