<!--categories-->

<div class="list-group">
    <a href="#" onClick="getPosts(0,this)" class="c-link list-group-item list-group-item-action active">
        All Posts
    </a>
    <%
        PostDao d = new PostDao(ConnectionProvider.getConnection());
        ArrayList<Category> list = d.getAllCategories();
        for (Category cc : list) {
    %>
    <a href="#" onClick="getPosts(<%=cc.getCid()%>,this)" class="c-link list-group-item list-group-item-action"><%= cc.getName()%></a>
    <%
        }
    %>
</div>













<!--Loading post using ajax-->
<script>
    function getPosts(catId,temp) {
        $("#loader").show();
        $("#post-container").hide();
        
        $(".c-link").removeClass('active');

        $.ajax({
            url: "load_posts.jsp",
            data: {cid: catId},
            success: function (data, textStatus, jqXHR)
            {
                console.log(data);
                $("#loader").hide();
                $("#post-container").show();
                $("#post-container").html(data);
                $(temp).addClass('active');
            }
        });
    }
    $(document).ready(function (e) {
        let allPostRef=$('.c-link')[0]
        getPosts(0,allPostRef)
    });
</script>