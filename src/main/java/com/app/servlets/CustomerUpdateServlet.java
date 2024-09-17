package com.app.servlets;

import com.app.controller.CustomerController;
import com.app.entity.Customer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/updateCustomer")
public class CustomerUpdateServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String id = req.getParameter("Id");
        String name = req.getParameter("name");
        String address = req.getParameter("address");
        String salary = req.getParameter("salary");

        // Create a new Customer object and set the values
        Customer customer = new Customer(
                Long.parseLong(id),
                name,
                address,
                Double.parseDouble(salary)
        );

        System.out.println(customer);

        // Save the customer object using the CustomerController class
        CustomerController customerController = new CustomerController();
        boolean isUpdated = customerController.updateCustomer(customer);

        // Check if the customer object is saved successfully
        if (isUpdated) {
            System.out.println("isUpdated: " + isUpdated);
            resp.getWriter().println("Customer updated successfully");
        } else {
            resp.getWriter().println("Failed to update customer");
        }

        // Redirect to the index page
        resp.sendRedirect("index.jsp");
    }
}
