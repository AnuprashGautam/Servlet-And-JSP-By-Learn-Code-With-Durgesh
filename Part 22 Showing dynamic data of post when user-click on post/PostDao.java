// Method to get the post with post id.
public Post getPostById(int postid) {
    Post post = null;
    String query = "SELECT * FROM posts WHERE pid=?";

    try {
        // Fetching the post from the db.

        PreparedStatement pstmt = this.con.prepareStatement(query);
        pstmt.setInt(1, postid);

        ResultSet set = pstmt.executeQuery();

        if (set.next()) {
            
            // Getting the details from the fetched post.
            
            String pTitle = set.getString("pTitle");
            String pContent = set.getString("pContent");
            String pCode = set.getString("pCode");
            String pPic = set.getString("pPic");
            Timestamp date = set.getTimestamp("pDate");
            int userId = set.getInt("userId");
            int catId = set.getInt("catId");

            // Setting the fatched data in the Post object.
            post = new Post(postid, pTitle, pContent, pCode, pPic, date, catId, userId);
        }

    } catch (SQLException e) {
    }
    return post;
}