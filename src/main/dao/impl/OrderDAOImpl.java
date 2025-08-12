package dao.impl;

import dao.OrderDAO;
import model.Orders;
import util.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class OrderDAOImpl implements OrderDAO {

    @Override
    public boolean placeOrder(Orders orders) {
        String sql = "INSERT INTO orders (customer_id, items_json, total) VALUES (?, ?, ?)";
        System.out.println("Save method called with: " + orders.getCustomerId() + ", " + orders.getItemsJson() + ", " + orders.getTotal());

        try (Connection con = DBConnection.getConnection();
             PreparedStatement stmt = con.prepareStatement(sql)) {

            stmt.setInt(1, orders.getCustomerId());
            stmt.setString(2, orders.getItemsJson());
            stmt.setDouble(3, orders.getTotal());

            int rows = stmt.executeUpdate();
            System.out.println("Rows affected: " + rows); // Debug log
            return rows > 0;

        } catch (Exception e) {
            System.err.println("Error in placeOrder: " + e.getMessage());
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public List<Orders> findAll() {
        List<Orders> orders = new ArrayList<>();
        String query = "SELECT * FROM orders ORDER BY created_at DESC";

        try (Connection conn = DBConnection.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(query)) {

            while (rs.next()) {
                Orders order = extractOrder(rs);
                orders.add(order);

            }
            System.out.println("Total orders found: " + orders.size()); // Debug log

        } catch (SQLException e) {
            System.err.println("SQL Error in findAll: " + e.getMessage());
            e.printStackTrace();
            throw new RuntimeException("Database error while fetching orders", e);
        }

        return orders;
    }
    private Orders extractOrder(ResultSet rs) throws SQLException {
        Orders orders = new Orders();
        orders.setId(rs.getInt("id"));
        orders.setCustomerId(rs.getInt("customer_id"));
        orders.setItemsJson(rs.getString("items_json"));
        orders.setTotal(rs.getDouble("total"));
        orders.setCreatedAt(rs.getTimestamp("created_at"));
        return orders;
    }
}