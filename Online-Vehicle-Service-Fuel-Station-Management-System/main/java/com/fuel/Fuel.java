package com.fuel;

public class Fuel {
    private int id;
    private String fuelType; // ✅ consistent with DB field
    private double quantity;
    private double price;

    // Constructors
    public Fuel() {}

    public Fuel(String fuelType, double quantity, double price) {
        this.fuelType = fuelType;
        this.quantity = quantity;
        this.price = price;
    }

    public Fuel(int id, String fuelType, double quantity, double price) {
        this.id = id;
        this.fuelType = fuelType;
        this.quantity = quantity;
        this.price = price;
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFuelType() {
        return fuelType;
    }

    public void setFuelType(String fuelType) {
        this.fuelType = fuelType;
    }

    public double getQuantity() {
        return quantity;
    }

    public void setQuantity(double quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}
