<%@ page import="com.app.controller.CustomerController" %>
<%@ page import="com.app.entity.Customer" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Customer</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <style>
        body {
            background-color: #f7f7f9;
        }
        .container {
            margin-top: 50px;
        }
        .card {
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        .card-header {
            background-color: #007bff;
            color: white;
            text-align: center;
        }
        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
        }
        .btn-primary:hover {
            background-color: #0056b3;
        }
        .header-title {
            margin-bottom: 30px;
            text-align: center;
        }
        .form-group label {
            font-weight: bold;
        }
    </style>
</head>
<body>

<%@ include file="header.jsp" %>

<%
    String idParam = request.getParameter("id");
    if (idParam != null && !idParam.isEmpty()) {
        try {
            long id = Long.parseLong(idParam);
            Customer customer = new CustomerController().findCustomer(id);
%>

<div class="container">
    <h1 class="header-title">Edit Customer Details</h1>
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">
                    Update Customer Information
                </div>
                <div class="card-body">
                    <form action="/updateCustomer" method="post">
                        <div class="form-group mb-3">
                            <label for="Id">Customer ID</label>
                            <input type="text" class="form-control" id="Id" name="Id" value="<%= customer.getId() %>" readonly>
                        </div>
                        <div class="form-group mb-3">
                            <label for="name">Name</label>
                            <input type="text" class="form-control" id="name" name="name" value="<%= customer.getName() %>" required>
                        </div>
                        <div class="form-group mb-3">
                            <label for="address">Address</label>
                            <input type="text" class="form-control" id="address" name="address" value="<%= customer.getAddress() %>" required>
                        </div>
                        <div class="form-group mb-3">
                            <label for="salary">Salary</label>
                            <input type="text" class="form-control" id="salary" name="salary" value="<%= customer.getSalary() %>" required>
                        </div>
                        <button class="btn btn-primary col-12 mt-3" type="submit">Update Customer</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<%
        } catch (NumberFormatException e) {
            out.println("<p style='color:red;'>Invalid customer ID format.</p>");
        }
    } else {
        out.println("<p style='color:red;'>Customer ID is missing.</p>");
    }
%>

<!-- Bootstrap JS (Optional for interactions) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-9ndCyUaT9CrmN91tFWkQsNsAi+VLYFJlyzVVFWOgGJxFSkro1zt7dhfJwM5Dftyo" crossorigin="anonymous"></script>

</body>
</html>
