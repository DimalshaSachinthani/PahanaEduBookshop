package dao.impl;

import dao.OrderDAO;
import model.Orders;
import org.junit.jupiter.api.*;

import java.sql.SQLException;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
class OrdersDAOTest {

    private static final OrderDAO orderDAO = new OrderDAOImpl();
    private static final Orders testOrder = new Orders();

    @BeforeAll
    static void setup() {
        try {
            int validCustomerId = 5;  // Make sure this exists in your DB
            testOrder.setCustomerId(validCustomerId);
            testOrder.setItemsJson("[{\"item_code\":\"123\"\"name\":\"Notebook\",\"qty\":2,\"price\":500}]");
            testOrder.setTotal(1000.00);
        } catch (Exception e) {
            e.printStackTrace();
            fail("Setup failed: " + e.getMessage());
        }
    }

    @Test
    @Order(1)
    void testPlaceOrder() throws SQLException {
        boolean success = orderDAO.placeOrder(testOrder);
        assertTrue(success, "Order placement failed");
    }

    @Test
    @Order(2)
    void testFindAll() {
        List<Orders> orders = orderDAO.findAll();
        assertNotNull(orders);
        assertFalse(orders.isEmpty(), "No orders found");

        Orders latest = orders.get(0);
        assertEquals(testOrder.getCustomerId(), latest.getCustomerId());
        assertEquals(testOrder.getTotal(), latest.getTotal());
        assertTrue(latest.getItemsJson().contains("Notebook"));
    }
}
