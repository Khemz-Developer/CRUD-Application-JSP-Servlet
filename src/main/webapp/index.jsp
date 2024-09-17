<%@ page import="com.app.entity.Customer" %>
<%@ page import="java.util.List" %>
<%@ page import="com.app.controller.CustomerController" %>
<html>
<head>
    <title>Customer CRUD Application</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <style>
        body {
            background-color: #f8f9fa;
        }
        .header-title {
            margin-top: 30px;
            margin-bottom: 30px;
            text-align: center;
        }
        .table-container {
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        }
        .action-btns a {
            margin-right: 10px;
        }
    </style>
</head>
<body>
<%@include file="header.jsp" %>

<div class="container">
    <h1 class="header-title">Customer Management CRUD Application</h1>

    <div class="row">
        <div class="col-12">
            <div class="table-container">
                <table class="table table-hover table-striped">
                    <thead class="table-dark">
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Name</th>
                        <th scope="col">Address</th>
                        <th scope="col">Salary</th>
                        <th scope="col">Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <%
                        List<Customer> customers = new CustomerController().findAllCustomers();
                        if (customers != null && !customers.isEmpty()) {
                            for (Customer customer : customers) {
                    %>
                    <tr>
                        <td><%= customer.getId() %></td>
                        <td><%= customer.getName() %></td>
                        <td><%= customer.getAddress() %></td>
                        <td><%= customer.getSalary() %></td>
                        <td class="action-btns">
                            <a class="btn btn-danger" href="delete_customer.jsp?id=<%= customer.getId() %>">Delete</a>
                            <a class="btn btn-primary" href="edit_customer.jsp?id=<%= customer.getId() %>">Edit</a>
                        </td>
                    </tr>
                    <%
                        }
                    } else {
                    %>
                    <tr>
                        <td colspan="5" class="text-center">No customers found</td>
                    </tr>
                    <%
                        }
                    %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

</body>

<%@include file="footer.jsp" %>
</html>
