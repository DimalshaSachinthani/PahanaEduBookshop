package dao;

import model.Item;
import java.util.List;

public interface ItemDAO {
    void save(Item item);
    List<Item> findAll();
    void update(Item item);
}


