package main.servlet;

import dao.impl.ItemDAOImpl;
import model.Item;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.List;

@WebServlet("/Item")
public class ItemServlet extends HttpServlet {

    private final ItemDAOImpl itemDAO = new ItemDAOImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Item> itemList = itemDAO.findAll();
        request.setAttribute("items", itemList);
        request.getRequestDispatcher("items.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String itemCode = request.getParameter("itemCode");
        String name = request.getParameter("itemName");
        String priceStr = request.getParameter("price");
        String stockStr = request.getParameter("stock");

        if (itemCode == null || itemCode.trim().isEmpty() ||
                name == null || name.trim().isEmpty() ||
                priceStr == null || priceStr.trim().isEmpty() ||
                stockStr == null || stockStr.trim().isEmpty()) {

            request.setAttribute("error", "All fields are required.");
            forwardWithItems(request, response);
            return;
        }

        try {
            double price = Double.parseDouble(priceStr.trim());
            int stock = Integer.parseInt(stockStr.trim());

            Item item = new Item();
            item.setItemCode(itemCode.trim());
            item.setName(name.trim());
            item.setPrice(price);
            item.setStock(stock);

            itemDAO.save(item);
            response.sendRedirect(request.getContextPath() + "/Item?success=created");

        } catch (NumberFormatException e) {
            request.setAttribute("error", "Invalid number format.");
            forwardWithItems(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Server error occurred.");
            forwardWithItems(request, response);
        }
    }

    private void forwardWithItems(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Item> items = itemDAO.findAll();
        request.setAttribute("items", items);
        request.getRequestDispatcher("items.jsp").forward(request, response);
    }
}
