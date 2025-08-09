package util;

import org.junit.jupiter.api.Test;

import java.sql.Connection;
import java.sql.SQLException;

import static org.junit.jupiter.api.Assertions.*;

class DBConnectionTest {

    @Test
    void testGetConnection() {
        try (Connection connection = DBConnection.getConnection()) {
            assertNotNull(connection);                    // Ensure connection is not null
            assertFalse(connection.isClosed());           // Ensure connection is open
            System.out.println("✅ Database connected successfully!");
        } catch (SQLException e) {
            fail("❌ Connection failed: " + e.getMessage());
        }
    }
}
