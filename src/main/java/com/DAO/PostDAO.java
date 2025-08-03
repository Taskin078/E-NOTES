package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.User.Post;

public class PostDAO {

    private Connection conn;

    public PostDAO(Connection conn) {
        super();
        this.conn = conn;
    }

    public boolean addNote(String title, String content, int uid) {
        boolean f = false;
        try {
            String query = "INSERT INTO notes(title, content, uid) VALUES (?, ?, ?)";
            PreparedStatement pstmt = conn.prepareStatement(query);

            pstmt.setString(1, title);
            pstmt.setString(2, content);
            pstmt.setInt(3, uid);

            int i = pstmt.executeUpdate();
            if (i == 1) {
                f = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
 // To get all posts from post Table
 	public List<Post> getData(int id) {

 		List<Post> list = new ArrayList<Post>();
 		Post po;
 		try {
 			String query = "Select * from post where uid=?";
 			PreparedStatement pstmt = conn.prepareStatement(query);

 			pstmt.setInt(1, id);

 			ResultSet rs = pstmt.executeQuery();

 			while (rs.next()) {
 				po = new Post(id, query, query, null, null);
 				po.setId(rs.getInt(1));
 				po.setTittle(rs.getString(2));
 				po.setContent(rs.getString(3));
 				po.setPdate(rs.getTimestamp(4));

 				list.add(po);

 			}

 		} catch (Exception e) {
 			e.printStackTrace();
 		}
 		return list;
 	}
	public boolean UpdateNotes(int uid, String title, String content) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean deleteNotes(int noteid) {
		// TODO Auto-generated method stub
		return false;
	}
}
