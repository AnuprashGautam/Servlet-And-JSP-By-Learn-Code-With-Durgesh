<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Invalid User</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8d7da; /* Light red background for error */
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .error-card {
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }
        .error-image {
            max-height: 120px;
        }
        .btn-custom {
            background-color: #dc3545;
            color: white;
            border: none;
        }
        .btn-custom:hover {
            background-color: #c82333;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6 col-lg-4">
                <!-- Error Card -->
                <div class="card text-center error-card border-danger">
                    <div class="card-body">
                        <img src="images/authentication.png" alt="Error" class="img-fluid error-image mb-3">
                        <h1 class="display-6 text-danger">Oops! Something went wrong</h1>
                        
                        <%
                            String errorMessage = (String) request.getAttribute("errorMessage");
                        %>
                        
                        <p class="text-muted mb-4">
                            Invalid user. Can't access this page. Login first.
                        </p>
                        
                        <!-- Back Button -->
                        <a href="login.jsp" class="btn btn-custom mt-3">Login</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

