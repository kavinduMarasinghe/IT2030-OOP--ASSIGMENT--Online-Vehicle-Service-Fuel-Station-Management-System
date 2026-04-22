package com.mechanic;

public class MechanicService {
	private int serviceId;
    private String customerName;
    private String vehicleInfo;
    private String partNoteType;
    private String currentStatus;
    private String delayReason;
    private String partsUsed;
    private double timeSpent;
    private String notes;
    
    
	public MechanicService(int serviceId, String customerName, String vehicleInfo, String partNoteType, String currentStatus,
			String delayReason, String partsUsed, double timeSpent, String notes) {
		this.serviceId = serviceId;
		this.customerName = customerName;
		this.vehicleInfo = vehicleInfo;
		this.partNoteType = partNoteType;
		this.currentStatus = currentStatus;
		this.delayReason = delayReason;
		this.partsUsed = partsUsed;
		this.timeSpent = timeSpent;
		this.notes = notes;
	}


	public int getServiceId() {
		return serviceId;
	}


	public void setServiceId(int serviceId) {
		this.serviceId = serviceId;
	}


	public String getCustomerName() {
		return customerName;
	}


	public String getVehicleInfo() {
		return vehicleInfo;
	}


	public String getPartNoteType() {
		return partNoteType;
	}


	public String getCurrentStatus() {
		return currentStatus;
	}


	public String getDelayReason() {
		return delayReason;
	}


	public String getPartsUsed() {
		return partsUsed;
	}


	public double getTimeSpent() {
		return timeSpent;
	}


	public String getNotes() {
		return notes;
	}


	
	
	
}
