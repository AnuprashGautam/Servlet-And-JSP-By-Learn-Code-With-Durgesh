import java.sql.PreparedStatement;

public class PostDao {
    public boolean savePost(Post p)
    {
        boolean f=false;
        try {
            String query="INSERT INTO posts(pTitle,pContent,pCode,pPic,catId,userId) VALUES (?,?,?,?,?,?)";
            
            PreparedStatement pstmt=con.prepareStatement(query);
            
            pstmt.setString(1, p.getpTitle());
            pstmt.setString(2, p.getpContent());
            pstmt.setString(3, p.getpCode());
            pstmt.setString(4, p.getpPic());
            pstmt.setInt(5, p.getCatId());
            pstmt.setInt(6, p.getUserId());
            
            pstmt.executeUpdate();
            
            f=true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
}
