package dao;

import model.Customer;

import java.util.List;

public interface CustomerDAO {
    void save(Customer customer);



    boolean saveWithValidation(Customer customer);
}
