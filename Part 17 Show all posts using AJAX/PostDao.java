package com.tech.blog.dao;

import com.tech.blog.entities.Category;
import com.tech.blog.entities.Post;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PostDao {

    Connection con;

    public PostDao(Connection con) {
        this.con = con;
    }

    // Method to get all the posts in the form of a list.
    public List<Post> getAllPosts(){
        List<Post> list = new ArrayList<>();
        
        // Fetch all the posts.
        try {
            String query="SELECT * FROM posts";
            
            PreparedStatement pstmt=con.prepareStatement(query);
            ResultSet set=pstmt.executeQuery();
            
            while(set.next())
            {
                int pid=set.getInt("pid");
                String pTitle=set.getString("pTitle");
                String pContent=set.getString("pContent");
                String pCode=set.getString("pCode");
                String pPic=set.getString("pPic");
                Timestamp date=set.getTimestamp("pDate");
                int catId=set.getInt("catId");
                int userId=set.getInt("userId");
                
                Post post=new Post(pid,pTitle, pContent, pCode, pPic, date, catId, userId);
                
                list.add(post);
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    
    // Method to get all the posts by category.
    public List<Post> getPostByCatId(int catId){
         List<Post> list = new ArrayList<>();
        
        // Fetch all the posts by id.
        try {
            String query="SELECT * FROM posts WHERE catId=?";
            
            PreparedStatement pstmt=con.prepareStatement(query);
            pstmt.setInt(1, catId);
            ResultSet set=pstmt.executeQuery();
            
            while(set.next())
            {
                int pid=set.getInt("pid");
                String pTitle=set.getString("pTitle");
                String pContent=set.getString("pContent");
                String pCode=set.getString("pCode");
                String pPic=set.getString("pPic");
                Timestamp date=set.getTimestamp("pDate");
                int userId=set.getInt("userId");
                
                Post post=new Post(pid,pTitle, pContent, pCode, pPic, date, catId, userId);
                
                list.add(post);
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
