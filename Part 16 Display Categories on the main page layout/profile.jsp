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
                    </div>   
                </div>
            </div>
        </main>


        <!--End of the main body-->