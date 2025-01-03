<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error - Something Went Wrong</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8d7da; /* Light red background for error */
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0;
        }
        .error-card {
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            background-color: white;
            padding: 20px;
            text-align: center;
        }
        .error-image {
            max-height: 120px;
            margin-bottom: 20px;
        }
        .btn-custom {
            background-color: #dc3545;
            color: white;
            border: none;
            font-weight: bold;
        }
        .btn-custom:hover {
            background-color: #c82333;
        }
        .error-header {
            font-size: 2.5rem;
            color: #721c24;
            font-weight: bold;
            margin-top: 10px;
        }
        .error-message {
            font-size: 1.1rem;
            color: #6c757d;
            margin-bottom: 20px;
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
                        <img src="images/caution-sign.png" alt="Error" class="img-fluid error-image mb-3">
                        <h1 class="error-header">Oops! Something Went Wrong</h1>
                        
                        <%
                            String errorMessage = (String) request.getAttribute("errorMessage");
                            if (errorMessage == null) {
                                errorMessage = "An unexpected error occurred. Please try again later.";
                            }
                        %>
                        
                        <p class="error-message">
                            <%= errorMessage %>
                        </p>
                        
                        <!-- Back Button -->
                        <a href="register.jsp" class="btn btn-custom mt-3">Go Back</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
