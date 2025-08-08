package dao.impl;

import dao.ItemDAO;
import model.Item;
import org.junit.jupiter.api.*;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
class ItemDAOTest {

    private static final ItemDAO itemDAO = new ItemDAOImpl();
    private static final Item testItem = new Item();

    @BeforeAll
    static void setup() {
        String uniqueCode = "TEST_ITEM_" + System.currentTimeMillis();

        testItem.setItemCode(uniqueCode);
        testItem.setName("Test Pen");
        testItem.setPrice(150.0);
        testItem.setStock(100);
    }

    @Test
    @Order(1)
    void testSave() {
        itemDAO.save(testItem);

        Item fetched = itemDAO.findByCode(testItem.getItemCode());
        assertNotNull(fetched);
        assertEquals("Test Pen", fetched.getName());

        // Store auto-generated ID for future tests
        testItem.setId(fetched.getId());
    }

    @Test
    @Order(2)
    void testFindByCode() {
        Item item = itemDAO.findByCode(testItem.getItemCode());
        assertNotNull(item);
        assertEquals(testItem.getPrice(), item.getPrice());
        assertEquals(testItem.getStock(), item.getStock());
    }

    @Test
    @Order(3)
    void testFindAll() {
        List<Item> items = itemDAO.findAll();
        assertTrue(items.size() > 0);
    }

    @Test
    @Order(4)
    void testUpdate() {
        testItem.setName("Updated Pen");
        testItem.setPrice(200.0);
        testItem.setStock(50);

        itemDAO.update(testItem);

        Item updated = itemDAO.findByCode(testItem.getItemCode());
        assertEquals("Updated Pen", updated.getName());
        assertEquals(200.0, updated.getPrice());
        assertEquals(50, updated.getStock());
    }

    @Test
    @Order(5)
    void testDeleteById() {
        itemDAO.deleteById(testItem.getId());

        Item deleted = itemDAO.findByCode(testItem.getItemCode());
        assertNull(deleted);
    }
}
