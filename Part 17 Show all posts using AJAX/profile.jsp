<%@page import="com.tech.blog.entities.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page import="com.tech.blog.dao.PostDao"%>
<%@page import="com.tech.blog.entities.User"%>
<%@page import="com.tech.blog.entities.Message"%>
<%@page errorPage="error_page.jsp" %>

<%
    User user = (User) session.getAttribute("currentUser");

    if (user == null) {
        response.sendRedirect("login_page.jsp");
    }
%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
        <!--CSS-->        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .banner-background{
                clip-path: polygon(50% 0%, 100% 0, 100% 35%, 100% 100%, 82% 94%, 57% 100%, 21% 91%, 0 100%, 0% 35%, 0 0);
            }
        </style>
    </head>
    <body>
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-dark primary-background">
            <a class="navbar-brand" href="index.jsp"><span class="fa fa-xing"></span> Tech Blog</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#"><span class="fa fa-bell-o"></span> LearnCode with Durgesh <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span class="fa fa-check-square-o"></span> Categories
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#">Programming Language</a>
                            <a class="dropdown-item" href="#">Project Implementation</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Data Structure</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#"><span class="fa fa-address-book-o"></span> Contact</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#" data-toggle="modal" data-target="#add-post-modal"><span class="fa fa-pencil-square-o"></span> Do Post</a>
                    </li>


                </ul>

                <ul class="navbar-nav mr-right">
                    <li class="nav-item">
                        <a class="nav-link active" href="#!" data-toggle="modal" data-target="#profile-modal"><span class="fa fa-user"></span> <%= user.getName()%></a>
                    </li>

                    <li class="nav-item active">
                        <a class="nav-link" href="LogoutServlet"><span class="fa fa-user-times"></span> Logout</a>
                    </li>
                </ul>
            </div>
        </nav>

        <!-- End of navbar -->

        <!-- Update message start-->

        <%
            Message msg = (Message) session.getAttribute("msg");

            if (msg != null) {
        %>

        <div class="alert <%= msg.getCssClass()%>" role="alert">
            <%= msg.getContent()%>
        </div>

        <%
                session.removeAttribute("msg");
            }
        %>

        <!--Update message end-->

        <!--Start of the main body-->

        <main>
            <div class="container">
                <div class="row">
                    <!--First Column-->
                    <div class="col-md-4 mt-4">
                        <!--categories-->

                        <div class="list-group">
                            <a href="#" class="list-group-item list-group-item-action active">
                                All Posts
                            </a>
                            <%
                                PostDao d = new PostDao(ConnectionProvider.getConnection());
                                ArrayList<Category> list = d.getAllCategories();
                                for (Category cc : list) {
                            %>
                                    <a href="#" class="list-group-item list-group-item-action"><%= cc.getName()%></a>
                            <%
                                        }
                            %>
                        </div>
                    </div>

                    <!--Second Column-->
                    <div class="col-md-8">
                        <!--posts-->
                        <div class="container text-center" id="loader">
                            <i class="fa fa-refresh fa-4x fa-spin"></i>
                            <h3 class="mt-2">Loading...</h3>
                        </div>
                        
                        <div class="container-fluid" id="post-container">
                            
                        </div>
                    </div>   
                </div>
            </div>
        </main>


        <!--End of the main body-->

        <!-- Start of Profile Modal -->

        <div class="modal fade" id="profile-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header primary-background text-white text-center">
                        <h5 class="modal-title" id="exampleModalLabel">Tech Blog</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="container text-center">
                            <img src="pics/<%=user.getProfile()%>" class="img-fluid" style="border-radius: 50%; max-width: 100px"/>
                            <br>
                            <h5 class="modal-title mt-3" id="exampleModalLabel"><%=user.getName()%></h5>

                            <!--Details-->

                            <div id="profile-details">
                                <table class="table">

                                    <tbody>
                                        <tr>
                                            <th scope="row">ID :</th>
                                            <td><%= user.getId()%></td>

                                        </tr>
                                        <tr>
                                            <th scope="row">Email :</th>
                                            <td><%= user.getEmail()%></td>

                                        </tr>
                                        <tr>
                                            <th scope="row"> Gender :</th>
                                            <td><%= user.getGender().toUpperCase()%></td>

                                        </tr>
                                        <tr>
                                            <th scope="row"> Status :</th>
                                            <td><%= user.getAbout()%></td>

                                        </tr>
                                        <tr>
                                            <th scope="row"> Registered on :</th>
                                            <td><%= user.getRdate().toString()%></td>

                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                            <!--profile edit-->  

                            <div id="profile-edit" style="display: none;">
                                <h3 class="mt-2">Please Edit Carefully</h3>
                                <form action="EditServlet" method="POST" enctype="multipart/form-data">
                                    <table class="table">
                                        <tr>
                                            <td>ID :</td>
                                            <td><%= user.getId()%></td>
                                        </tr>
                                        <tr>
                                            <td>Email :</td>
                                            <td><input type="email" name="user_email" class="form-control" value="<%= user.getEmail()%>"></td>
                                        </tr>
                                        <tr>
                                            <td>Name :</td>
                                            <td><input type="text" name="user_name" class="form-control" value="<%= user.getName()%>"></td>
                                        </tr>
                                        <tr>
                                            <td>Password :</td>
                                            <td><input type="password" name="user_password" class="form-control" value="<%= user.getPassword()%>"></td>
                                        </tr>
                                        <tr>
                                            <td>Gender :</td>
                                            <td><%= user.getGender().toUpperCase()%></td>
                                        </tr>
                                        <tr>
                                            <td>Status :</td>
                                            <td>
                                                <textarea rows=3 class="form-control" name="user_about"><%=user.getAbout()%>
                                                </textarea>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>New Profile:</td>
                                            <td>
                                                <input type="file" name="image" class="form-control">
                                            </td>
                                        </tr>
                                    </table>

                                    <div class="container">
                                        <button type="submit" class="btn btn-outline-primary">Save</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" id="edit-profile-button" class="btn btn-primary">Edit</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- End of Profile Modal -->

        <!--Start of Post modal-->

        <!-- Modal -->
        <div class="modal fade" id="add-post-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Provide the post details.</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form id="add-post-form" action="AddPostServlet" method="POST" enctype="multipart/form-data">
                            <div class="form-group">
                                <select name="cid" class="form-control">
                                    <option selected disabled>---Select Category---</option>
                                    <%
                                        PostDao postd = new PostDao(ConnectionProvider.getConnection());
                                        ArrayList<Category> l = postd.getAllCategories();
                                        for (Category c : l) {
                                    %>
                                    <option value="<%= c.getCid()%>"><%= c.getName()%></option>
                                    <%
                                        }
                                    %>
                                </select>
                            </div>
                            <div class="form-group">
                                <input name="pTitle" type="text" placeholder="Enter post Title" class="form-control">
                            </div>
                            <div class="form-group">
                                <textarea name="pContent" class="form-control" style="height:200px;" placeholder="Enter your content" ></textarea>
                            </div>
                            <div class="form-group">
                                <textarea name="pCode" class="form-control" style="height:100px;" placeholder="Enter your program (if any)" ></textarea>
                            </div>
                            <div class="form-group">
                                <label>Select your pic</label>
                                <br>
                                <input name="pic" type="file" class="form-control">
                            </div>
                            <div class="container text-center">
                                <button type="submit" class="btn btn-outline-primary">Post</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <!--End of Post modal-->

        <!--JavaScript-->
        <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>

        <script>
            $(document).ready(function () {
                let editStatus = false;

                $('#edit-profile-button').click(function () {
                    if (editStatus == false)
                    {
                        $('#profile-details').hide();
                        $('#profile-edit').show();
                        editStatus = true;
                        $(this).text("Back");
                    } else
                    {
                        $('#profile-details').show();
                        $('#profile-edit').hide();
                        editStatus = false;
                        $(this).text("Edit");
                    }
                });
            });
        </script>

        <!--Now add post js-->
        <script>
            $(document).ready(function (e) {
                // Attach a submit event listener to the form
                $("#add-post-form").on("submit", function (event) {
                    // Prevent the default form submission behavior
                    event.preventDefault();

                    // Log a message to the console to confirm the event handler is working
                    console.log("You have clicked the submit button.");

                    // Create a FormData object with the form's data
                    let form = new FormData(this);

                    // Make an AJAX request to submit the form data to the server
                    $.ajax({
                        url: "AddPostServlet", // Server-side endpoint
                        type: 'POST', // HTTP method
                        data: form, // Form data
                        success: function (data, textStatus, jqXHR) {
                            // Log a success message if the request is successful
                            console.log(data);
                            if (data.trim() == "done")
                            {
                                swal("Good job!", "Saved successfully!", "success");
                            } else {
                                swal("Error !", "Something went wrong!", "error");

                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            // Log an error message if the request fails
                            console.log("Error in submission:", errorThrown);
                        },
                        processData: false, // Prevent automatic processing of data
                        contentType: false // Prevent automatic setting of content type
                    });
                });
            });

        </script>
        
        <!--Loading post using ajax-->
        <script>
            $(document).ready(function(e){
                $.ajax({
                    url:"load_posts.jsp",
                    success: function(data, textStatus, jqXHR)
                    {
                        console.log(data);
                        $("#loader").hide();
                        $("#post-container").html(data);
                    }
                });
            });
        </script>
    </body>
</html>
