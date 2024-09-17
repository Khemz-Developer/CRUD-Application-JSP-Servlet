//package com.app.servlets;
//
//import com.app.controller.CustomerController;
//import com.app.entity.Customer;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//
//
//@WebServlet("/saveCustomer")
//public class CustomerServlet extends HttpServlet {
//
//    @Override
//    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//
//        String id = req.getParameter("Id");
//        String name = req.getParameter("name");
//        String address = req.getParameter("address");
//        String salary = req.getParameter("salary");
//
//        // Create a new Customer object and set the values
//        Customer customer = new Customer(
//                Long.parseLong(id),
//                name,
//                address,
//                Double.parseDouble(salary)
//        );
//
//        System.out.println(customer);
//
//        // Save the customer object using the CustomerController class
//        CustomerController customerController = new CustomerController();
//        boolean isSaved = customerController.saveCustomer(customer);
//
//        // Check if the customer object is saved successfully
//        if (isSaved) {
//            System.out.println("isSaved: " + isSaved);
//            resp.getWriter().println("Customer saved successfully");
//        } else {
//            resp.getWriter().println("Failed to save customer");
//
//        }
//
//        // Redirect to the index page
//        resp.sendRedirect("index.jsp");
//    }
//}
package com.app.servlets;

import com.app.controller.CustomerController;
import com.app.entity.Customer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/saveCustomer")
public class CustomerServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("Id");
        String name = req.getParameter("name");
        String address = req.getParameter("address");
        String salary = req.getParameter("salary");

        if (id == null || name == null || address == null || salary == null ||
                id.isEmpty() || name.isEmpty() || address.isEmpty() || salary.isEmpty()) {
            resp.getWriter().println("All fields are required.");
            return;
        }

        try {
            Customer customer = new Customer(
                    Long.parseLong(id),
                    name,
                    address,
                    Double.parseDouble(salary)
            );

            CustomerController customerController = new CustomerController();
            boolean isSaved = customerController.saveCustomer(customer);

            if (isSaved) {
                resp.getWriter().println("Customer saved successfully");
            } else {
                resp.getWriter().println("Failed to save customer");
            }

        } catch (NumberFormatException e) {
            resp.getWriter().println("Invalid number format for ID or salary.");
        }

        resp.sendRedirect("index.jsp");
    }
}