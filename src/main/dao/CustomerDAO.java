package dao;

import model.Customer;

import java.sql.SQLException;
import java.util.List;

public interface CustomerDAO {
    void save(Customer customer);
    List<Customer> findAll();

    boolean saveWithValidation(Customer customer);


}