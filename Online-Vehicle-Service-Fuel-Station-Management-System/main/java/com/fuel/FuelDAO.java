package com.fuel;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class FuelDAO {

    private final String jdbcURL = "jdbc:mysql://localhost:3306/vehicleservicesystem";
    private final String jdbcUsername = "root";
    private final String jdbcPassword = "Peshi@2001";

    private static final String INSERT_FUEL_SQL =
        "INSERT INTO fuel (fuelType, quantity, price) VALUES (?, ?, ?)";
    private static final String SELECT_FUEL_BY_ID =
        "SELECT * FROM fuel WHERE id = ?";
    private static final String SELECT_ALL_FUEL =
        "SELECT * FROM fuel";
    private static final String DELETE_FUEL_SQL =
        "DELETE FROM fuel WHERE id = ?";
    private static final String UPDATE_FUEL_SQL =
        "UPDATE fuel SET fuelType = ?, quantity = ?, price = ? WHERE id = ?";

    public FuelDAO() {}

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); // MySQL 8+
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }

    public void insertFuel(Fuel fuel) {
        try (Connection connection = getConnection();
             PreparedStatement stmt = connection.prepareStatement(INSERT_FUEL_SQL)) {
            stmt.setString(1, fuel.getFuelType());
            stmt.setDouble(2, fuel.getQuantity());
            stmt.setDouble(3, fuel.getPrice());
            stmt.executeUpdate();
            System.out.println("✅ [DAO] Fuel inserted: " + fuel.getFuelType());
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    public Fuel getFuel(int id) {
        Fuel fuel = null;
        try (Connection connection = getConnection();
             PreparedStatement stmt = connection.prepareStatement(SELECT_FUEL_BY_ID)) {
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                String fuelType = rs.getString("fuelType");
                double quantity = rs.getDouble("quantity");
                double price = rs.getDouble("price");
                fuel = new Fuel(id, fuelType, quantity, price);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return fuel;
    }

    public List<Fuel> getAllFuels() {
        List<Fuel> fuels = new ArrayList<>();
        try (Connection connection = getConnection();
             PreparedStatement stmt = connection.prepareStatement(SELECT_ALL_FUEL)) {
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");
                String fuelType = rs.getString("fuelType");
                double quantity = rs.getDouble("quantity");
                double price = rs.getDouble("price");
                fuels.add(new Fuel(id, fuelType, quantity, price));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return fuels;
    }

    public boolean updateFuel(Fuel fuel) {
        boolean rowUpdated = false;
        try (Connection connection = getConnection();
             PreparedStatement stmt = connection.prepareStatement(UPDATE_FUEL_SQL)) {
            stmt.setString(1, fuel.getFuelType());
            stmt.setDouble(2, fuel.getQuantity());
            stmt.setDouble(3, fuel.getPrice());
            stmt.setInt(4, fuel.getId());
            rowUpdated = stmt.executeUpdate() > 0;

            if (rowUpdated) {
                System.out.println("✅ [DAO] Fuel updated: ID = " + fuel.getId());
            } else {
                System.out.println("⚠️ [DAO] Update failed — no row with ID: " + fuel.getId());
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return rowUpdated;
    }

    public boolean deleteFuel(int id) {
        boolean rowDeleted = false;
        try (Connection connection = getConnection();
             PreparedStatement stmt = connection.prepareStatement(DELETE_FUEL_SQL)) {
            stmt.setInt(1, id);
            rowDeleted = stmt.executeUpdate() > 0;

            if (rowDeleted) {
                System.out.println("🗑️ [DAO] Fuel deleted: ID = " + id);
            } else {
                System.out.println("⚠️ [DAO] Delete failed — no row with ID: " + id);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return rowDeleted;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
            }
        }
    }
}
