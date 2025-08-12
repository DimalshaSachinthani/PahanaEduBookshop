package dao.impl;

import dao.UserDAO;
import model.User;
import org.junit.jupiter.api.*;

import static org.junit.jupiter.api.Assertions.*;

@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
class UserDAOTest {

    private static final UserDAO userDAO = new UserDAOImpl();
    private static final User testUser = new User();

    @BeforeAll
    static void setup() {
        // Prepare a unique username (to avoid conflicts)
        String uniqueUsername = "testuser" + System.currentTimeMillis();

        testUser.setUserName(uniqueUsername);
        testUser.setEmail("testuser@example.com");
        testUser.setPhoneNum("0771234567");
        testUser.setPassword("Password123!");
        testUser.setRole("customer");
    }

    @Test
    @Order(1)
    void testRegisterUser() {
        boolean registered = userDAO.registerUser(testUser);
        assertTrue(registered, "User should be registered successfully");
    }

    @Test
    @Order(2)
    void testRegisterWithValidation() {
        // Should pass validation and register
        boolean registered = userDAO.registerWithValidation(testUser);
        assertTrue(registered);

        // Test invalid user: empty username
        User invalidUser = new User();
        invalidUser.setUserName("");
        invalidUser.setEmail("bademail");
        invalidUser.setPhoneNum("123");
        invalidUser.setPassword("pass");
        invalidUser.setRole("customer");

        boolean invalidRegistered = userDAO.registerWithValidation(invalidUser);
        assertFalse(invalidRegistered, "Invalid user should fail validation");
    }

    @Test
    @Order(3)
    void testAuthenticateUser() {
        User authUser = userDAO.authenticateUser(testUser.getUserName(), testUser.getPassword());
        assertNotNull(authUser, "Authentication should succeed with correct credentials");
        assertEquals(testUser.getUserName(), authUser.getUserName());

        // Wrong password
        User failedAuth = userDAO.authenticateUser(testUser.getUserName(), "WrongPassword");
        assertNull(failedAuth, "Authentication should fail with wrong password");
    }
}
