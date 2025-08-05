package dao;

import model.Orders;

import java.sql.SQLException;
import java.util.List;

public interface OrderDAO {
    boolean placeOrder(Orders orders) throws SQLException;
    List<Orders> findAll();
}