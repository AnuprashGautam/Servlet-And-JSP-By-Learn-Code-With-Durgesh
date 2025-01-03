<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>

<body>
    <div class="container d-flex align-items-center justify-content-center min-vh-100">
        <div class="card shadow" style="width: 100%; max-width: 400px;">
            <div class="card-header bg-primary text-white text-center">
                <h4>Login</h4>
            </div>
            <div class="card-body">
                <form action="Login" method="post">
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="email" class="form-control" name="email" placeholder="Enter your email" required>
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input type="password" class="form-control" name="password" placeholder="Enter your password"required>
                    </div>
                    <button type="submit" class="btn btn-primary btn-block">Login</button>
                </form>
                <div class="text-center mt-3">
                    <small>Don't have an account?</small>
                    <a href="register.jsp" class="text-primary">Register</a>
                </div>
            </div>
        </div>
    </div>

</body>

</html>
