package com.app.servlets;

import com.app.controller.CustomerController;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/deleteCustomer")
public class CustomerDeleteServlets extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id=request.getParameter("Id");

        if (new CustomerController().deleteCustomer(Long.parseLong(id))){
            response.sendRedirect("index.jsp");
        }else{
            System.out.println("error");
        }

    }
}
