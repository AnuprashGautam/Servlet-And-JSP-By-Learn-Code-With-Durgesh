// Method to get the username by post id.
public User getUserByPostId(int postId) {
    User user=null;
    String query = "SELECT * FROM user INNER JOIN posts ON posts.userId=user.id WHERE pid=?";
    
    // Fetch the user by post id.
    try {
        PreparedStatement pstmt = this.con.prepareStatement(query);
        pstmt.setInt(1, postId);
        
        ResultSet set = pstmt.executeQuery();
        
        if (set.next()) {
            int id = set.getInt("id");
            String name = set.getString("name");
            String email = set.getString("email");
            String password = set.getString("password");
            String gender = set.getString("gender");
            String about = set.getString("about");                
            Timestamp rdate = set.getTimestamp("rdate");
            
            user =new User(id,name,email,password,gender,about,rdate);
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return user;
}