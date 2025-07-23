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


}
