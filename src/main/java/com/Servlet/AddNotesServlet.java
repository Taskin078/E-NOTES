package com.Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.DAO.PostDAO;
import com.db.DBConnect;
import com.User.Post;


@WebServlet("/AddNotesServlet")
public class AddNotesServlet extends HttpServlet {
	
    

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 
		int uid=Integer.parseInt(request.getParameter("uid"));
		
		String title=request.getParameter("title");
		String content=request.getParameter("content");
		PostDAO dao=new PostDAO(DBConnect.getConn());
		boolean f=dao.addNote(title, content, uid);
		
		if(f) {
			System.out.println("Post Data Inserted");
			
			response.sendRedirect("showNotes.jsp");

		}
		else {
			System.out.println("Post Data Not Inserted");
	}
	
}}

