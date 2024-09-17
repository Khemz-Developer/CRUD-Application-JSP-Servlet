<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer Form</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <style>
        /* Custom styling */
        .navbar-custom {
            background-color: #563d7c; /* Custom dark purple background */
        }

        .navbar-brand {
            font-weight: bold;
            color: #ffffff !important;
        }

        .nav-link {
            color: #ffffff !important;
        }

        .nav-link:hover {
            color: #d1d1d1 !important; /* Light gray hover effect */
        }

        .container-fluid {
            padding: 15px 30px; /* Adjust padding for better spacing */
        }

        .navbar-toggler {
            border-color: #ffffff;
        }

        .navbar-toggler-icon {
            filter: invert(100%);
        }
    </style>
</head>
<body>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-custom">
    <div class="container-fluid">
        <!-- Navbar brand (title) -->
        <a class="navbar-brand" href="/">Customer Form</a>

        <!-- Toggler for mobile view -->
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Navbar links -->
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto"> <!-- "ms-auto" aligns menu to the right -->
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/new_customer.jsp">New Customer</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Bootstrap JS (Optional for interactive navbar) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-9ndCyUaT9CrmN91tFWkQsNsAi+VLYFJlyzVVFWOgGJxFSkro1zt7dhfJwM5Dftyo" crossorigin="anonymous"></script>

</body>
</html>
