package com.bookings;

public class Booking {
	private int id;
	private String fname;
	private String lname;
	private String phone;
	private String vehiType;
	private String vehiNum;
	private String service;
	private String branch;
	private String date;
	private String time;
	private String comments;
	
	public Booking(int id, String fname, String lname, String phone, String vehiType, String vehiNum, String service,
			String branch, String date, String time, String comments) {
		
		this.id = id;
		this.fname = fname;
		this.lname = lname;
		this.phone = phone;
		this.vehiType = vehiType;
		this.vehiNum = vehiNum;
		this.service = service;
		this.branch = branch;
		this.date = date;
		this.time = time;
		this.comments = comments;
	}

	public int getId() {
		return id;
	}

	public String getFname() {
		return fname;
	}

	public String getLname() {
		return lname;
	}

	public String getPhone() {
		return phone;
	}

	public String getVehiType() {
		return vehiType;
	}

	public String getVehiNum() {
		return vehiNum;
	}

	public String getService() {
		return service;
	}

	public String getBranch() {
		return branch;
	}

	public String getDate() {
		return date;
	}

	public String getTime() {
		return time;
	}

	public String getComments() {
		return comments;
	}
	
	
}
