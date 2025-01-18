<div class="card-footer primary-background text-white">
    <%
        LikeDao ld=new LikeDao(ConnectionProvider.getConnection());
    %>
    
    <a href="#!" onclick="doLike(<%=p.getPid()%>,<%=luser.getId()%>)" class="btn btn-outline-light primary-background btn-sm"><i class="fa fa-thumbs-o-up"></i><span class="like-counter"> <%=ld.countLikeOnPost(p.getPid())%></span></a>
    <a href="#!" class="btn btn-outline-light primary-background btn-sm"><i class="fa fa-commenting"></i><span> 20</span></a>
</div>