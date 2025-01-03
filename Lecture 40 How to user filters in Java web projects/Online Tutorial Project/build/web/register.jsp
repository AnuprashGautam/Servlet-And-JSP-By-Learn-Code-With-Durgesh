<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Register Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    </head>

    <body>
        <div class="container d-flex align-items-center justify-content-center min-vh-100">
            <div class="card shadow" style="width: 100%; max-width: 500px;">
                <div class="card-header bg-success text-white text-center">
                    <h4>Register</h4>
                </div>
                <div class="card-body">
                    <form action="Register" method="post">
                        <div class="form-group">
                            <label for="name">Full Name</label>
                            <input type="text" class="form-control" name="name" id="name" placeholder="Enter your full name" required>
                        </div>
                        <div class="form-group">
                            <label class="my-1 mr-2" for="inlineFormCustomSelectType">Type</label>
                            <select class="custom-select my-1 mr-sm-2" name="type" id="inlineFormCustomSelectType">
                                <option selected>Choose...</option>
                                <option value="admin">Admin</option>
                                <option value="teacher">Teacher</option>
                                <option value="student">Student</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="email">Email Address</label>
                            <input type="email" class="form-control" name="email" id="email" placeholder="Enter your email" required>
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="password" class="form-control" name="password" id="password" placeholder="Enter a strong password" required>
                        </div>
                        <div class="form-group">
                            <label for="confirmPassword">Confirm Password</label>
                            <input type="password" class="form-control" name="confirmPassword" id="confirmPassword" placeholder="Re-enter your password" required>
                        </div>


                        <button type="submit" class="btn btn-success btn-block">Register</button>
                    </form>
                    <div class="text-center mt-3">
                        <small>Already have an account?</small>
                        <a href="login.jsp" class="text-success">Login</a>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2LcE7p6X9bGAgzujV6pCtk3sa8y9GAKCF0y7q8vJG0" crossorigin="anonymous"></script>
    </body>

</html>
