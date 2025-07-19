package main.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import dao.CustomerDAO;
import dao.impl.CustomerDAOImpl;
import model.Customer;

import java.io.IOException;
import java.util.List;

@WebServlet("/Customer")
public class CustomerServlet extends HttpServlet {
    private CustomerDAO customerDAO;

    @Override
    public void init() {
        customerDAO = new CustomerDAOImpl();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            List<Customer> customerList = customerDAO.findAll();
            request.setAttribute("customers", customerList);
            request.getRequestDispatcher("customer.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Unable to retrieve customers");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        String action = request.getParameter("action");

        try {
            if ("delete".equalsIgnoreCase(action)) {
                int id = Integer.parseInt(request.getParameter("id"));
                customerDAO.delete(id);
                response.sendRedirect("Customer?success=deleted");
                return;
            }

            String accNo = request.getParameter("accNo");
            String name = request.getParameter("name");
            String address = request.getParameter("address");
            String phone = request.getParameter("phone");
            String email = request.getParameter("email");

            if ("update".equalsIgnoreCase(action)) {
                int id = Integer.parseInt(request.getParameter("id"));

                Customer customer = new Customer();
                customer.setId(id);
                customer.setAccNo(accNo);
                customer.setName(name);
                customer.setAddress(address);
                customer.setPhone(phone);
                customer.setEmail(email);

                customerDAO.update(customer);
                response.sendRedirect("Customer?success=updated");
            } else {
                // Default: Create New Customer
                Customer customer = new Customer();
                customer.setAccNo(accNo);
                customer.setName(name);
                customer.setAddress(address);
                customer.setPhone(phone);
                customer.setEmail(email);

                customerDAO.saveWithValidation(customer);
                response.sendRedirect("Customer?success=created");
            }

        } catch (Exception e) {
            e.printStackTrace();
            // Could redirect to an error page or show error message
            response.sendRedirect("Customer?error=true");
        }
    }
}
