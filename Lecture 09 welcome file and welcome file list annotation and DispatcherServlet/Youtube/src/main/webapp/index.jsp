<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Registration Page</title>
    <style>
        .container{
            width:40%;
            border: 5px solid black;
            margin: auto;
            padding: 20px;
            font-size: 20px;
        }

        #myform table tr td input{
            font-size: 20px;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Welcome! Register here</h1>
    <form id="myform" action="register" method="post">
        <table>
            <tr>
                <td>
                    Enter name:
                </td>

                <td>
                    <input type="text" name="name" placeholder="Enter your name">
                </td>
            </tr>

            <tr>
                <td>
                    Enter password:
                </td>

                <td>
                    <input type="password" name="password" placeholder="Enter password">
                </td>
            </tr>

            <tr>
                <td>
                    Enter email:
                </td>

                <td>
                    <input type="text" name="email" placeholder="Enter your email">
                </td>
            </tr>

            <tr>
                <td>
                     Select Gender
                </td>

                <td><input type="radio" name="gender" value="Male">Male &nbsp; &nbsp;<input type="radio" name="gender" value="Female">Female</td>
            </tr>

            <tr>
                <td>
                    Select your course
                </td>
                <td>
                    <select name="course">
                        <option value="Java">Java</option>
                        <option value="Python">Python</option>
                        <option value="R">R</option>
                        <option value="Ruby">Ruby</option>
                    </select>
                </td>
            </tr>

            <tr>
                <td style="text-align:right">
                    <input type="checkbox" value="checked" name="condition"/>
                </td>
                <td>
                    Agree terms and conditions
                </td>
            </tr>

            <tr>
                <td>

                </td>

                <td>
                    <button type="submit">Register</button>
                    <button type="reset">Reset</button>
                </td>
            </tr>

        </table>
    </form>
</div>
</body>
</html>