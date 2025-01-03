<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container my-5">
        <h1 class="text-center mb-4">Welcome, Student</h1>
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card shadow-lg">
                    <div class="card-header bg-info text-white">
                        <h4 class="mb-0">Student Details</h4>
                    </div>
                    <div class="card-body">
                        <p><strong>Name:</strong> ${userName}</p>
                        <p><strong>Email:</strong> ${userEmail}</p>
                        <p><strong>Role:</strong> ${userType}</p>
                    </div>
                    <div class="card-footer text-center">
                        <a href="viewCourses.jsp" class="btn btn-info">View Courses</a>
                        <a href="assignments.jsp" class="btn btn-secondary">View Assignments</a>
                        <a href="Logout" class="btn btn-danger">Logout</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
