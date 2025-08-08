package dao.impl;

import dao.CustomerDAO;
import model.Customer;
import org.junit.jupiter.api.*;
import java.sql.SQLException;


import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
class CustomerDAOTest {

    private static final CustomerDAO customerDAO = new CustomerDAOImpl();
    private static final Customer testCustomer = new Customer();

    @BeforeAll
    static void init() {
        testCustomer.setAccNo("1055");
        testCustomer.setName("Test User");
        testCustomer.setAddress("Test City");
        testCustomer.setPhone("0771234567");
        testCustomer.setEmail("testuser@example.com");
    }

    @Test
    @Order(1)
    void testSave() {
        customerDAO.save(testCustomer);
        Customer fetched = customerDAO.findByAccountNumber("1055");
        assertNotNull(fetched);
        assertEquals("Test User", fetched.getName());
        testCustomer.setId(fetched.getId()); // save ID for next tests
    }

    @Test
    @Order(2)
    void testFindById() {
        Customer result = customerDAO.findById(testCustomer.getId());
        assertNotNull(result);
        assertEquals("Test User", result.getName());
    }

    @Test
    @Order(3)
    void testFindByAccountNumber() {
        Customer result = customerDAO.findByAccountNumber("1055");
        assertNotNull(result);
        assertEquals("Test City", result.getAddress());
    }

    @Test
    @Order(4)
    void testFindByName() {
        Customer result = customerDAO.findByName("Test User");
        assertNotNull(result);
        assertEquals("testuser@example.com", result.getEmail());
    }

    @Test
    @Order(5)
    void testFindAll() {
        List<Customer> customers = customerDAO.findAll();
        assertTrue(customers.size() > 0);
    }

    @Test
    @Order(6)
    void testUpdate() {
        testCustomer.setName("Updated User");
        customerDAO.update(testCustomer);
        Customer result = customerDAO.findById(testCustomer.getId());
        assertEquals("Updated User", result.getName());
    }

    @Test
    @Order(7)
    void testSaveWithValidation() {
        Customer invalid = new Customer();
        invalid.setAccNo("1056");
        invalid.setName(""); // invalid name
        invalid.setPhone("01234"); // invalid phone
        invalid.setEmail("bademail"); // invalid email
        assertFalse(customerDAO.saveWithValidation(invalid));
    }

    @Test
    @Order(8)
    void testDelete() throws SQLException {
        customerDAO.delete(testCustomer.getId());
        Customer result = customerDAO.findById(testCustomer.getId());
        assertNull(result);
    }

}
