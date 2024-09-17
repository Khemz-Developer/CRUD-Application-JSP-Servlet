<%@ page import="com.app.controller.CustomerController" %>
<%@ page import="com.app.entity.Customer" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Customer</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <style>
        body {
            background-color: #f4f4f9;
        }
        .container {
            margin-top: 50px;
        }
        .card {
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        .card-header {
            background-color: #dc3545;
            color: white;
            text-align: center;
        }
        .form-control:read-only {
            background-color: #e9ecef;
        }
        .btn-danger {
            margin-top: 20px;
            background-color: #dc3545;
        }
        .btn-danger:hover {
            background-color: #c82333;
        }
        .header-title {
            margin-bottom: 30px;
            text-align: center;
        }
    </style>
</head>
<body>

<%@ include file="header.jsp" %>

<%
    long id = Long.parseLong(request.getParameter("id"));
    Customer customer = new CustomerController().findCustomer(id);
%>

<div class="container">
    <h1 class="header-title">Delete Customer Record</h1>
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">
                    Confirm Delete Customer
                </div>
                <div class="card-body">
                    <form action="/deleteCustomer" method="post">
                        <div class="form-group mb-3">
                            <label for="Id">Customer ID</label>
                            <input type="text" class="form-control" id="Id" name="Id" value="<%= customer.getId() %>" readonly>
                        </div>
                        <div class="form-group mb-3">
                            <label for="name">Name</label>
                            <input type="text" class="form-control" id="name" name="name" value="<%= customer.getName() %>" readonly>
                        </div>
                        <div class="form-group mb-3">
                            <label for="address">Address</label>
                            <input type="text" class="form-control" id="address" name="address" value="<%= customer.getAddress() %>" readonly>
                        </div>
                        <div class="form-group mb-3">
                            <label for="salary">Salary</label>
                            <input type="text" class="form-control" id="salary" name="salary" value="<%= customer.getSalary() %>" readonly>
                        </div>
                        <button class="btn btn-danger col-12" type="submit">Delete Customer</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS (Optional for interactions) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-9ndCyUaT9CrmN91tFWkQsNsAi+VLYFJlyzVVFWOgGJxFSkro1zt7dhfJwM5Dftyo" crossorigin="anonymous"></script>

</body>
</html>
