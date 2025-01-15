<!--categories-->

<div class="list-group">
    <a href="#" onClick="getPosts(0)" class="list-group-item list-group-item-action active">
        All Posts
    </a>
    <%
        PostDao d = new PostDao(ConnectionProvider.getConnection());
        ArrayList<Category> list = d.getAllCategories();
        for (Category cc : list) {
    %>
    <a href="#" onClick="getPosts(<%=cc.getCid()%>)" class="list-group-item list-group-item-action"><%= cc.getName()%></a>
    <%
        }
    %>
</div>















<!--Loading post using ajax-->
<script>
    function getPosts(catId) {
        $("#loader").show();
        $("#post-container").hide();

        $.ajax({
            url: "load_posts.jsp",
            data: {cid: catId},
            success: function (data, textStatus, jqXHR)
            {
                console.log(data);
                $("#loader").hide();
                $("#post-container").show();
                $("#post-container").html(data);
            }
        });
    }
    $(document).ready(function (e) {
        getPosts(0)
    });
</script>