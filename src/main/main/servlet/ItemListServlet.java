package main.servlet;

import dao.ItemDAO;
import dao.impl.ItemDAOImpl;
import model.Item;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.List;

@WebServlet("/BillingPage")
public class ItemListServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ItemDAO itemDAO = new ItemDAOImpl();
        List<Item> itemList = itemDAO.findAll();

        request.setAttribute("items", itemList);
        request.getRequestDispatcher("billing.jsp").forward(request, response);
    }
}