package dao;
import model.User;

public interface UserDAO {
    boolean registerUser(User user);
    User authenticateUser(String username, String password);
    boolean registerWithValidation(User user);
}
