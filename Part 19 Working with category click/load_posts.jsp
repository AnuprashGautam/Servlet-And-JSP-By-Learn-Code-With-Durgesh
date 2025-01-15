<%
    PostDao d = new PostDao(ConnectionProvider.getConnection());
    int cid=Integer.parseInt(request.getParameter("cid"));
    List<Post>posts=null;
    if(cid==0){
        posts = d.getAllPosts();
    }else{
        posts = d.getPostsByCatId(cid);
    }
    if(posts.size()==0){
        out.println("<h3 class='display-3 text-center'> No post in this category...</h3>");
        return;
    }
    for (Post p : posts) {
%>