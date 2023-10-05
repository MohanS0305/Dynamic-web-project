package com.webproject.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname = request.getParameter("name");
		String uemail = request.getParameter("email");
		String upswd = request.getParameter("password");
		String udob = request.getParameter("dob");
		String umobileno = request.getParameter("mobileno");
		RequestDispatcher dispatcher = null;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project_db?user=root&password=mohan2001");
			pstmt = con.prepareStatement("insert into Users(uname, uemail, upswd, udob, umobileno) values(?,?,?,?,?)");
			pstmt.setString(1, uname);
			pstmt.setString(2, uemail);
			pstmt.setString(3, upswd);
			pstmt.setString(4, udob);
			pstmt.setString(5, umobileno);
			
			int rowCount = pstmt.executeUpdate();
			dispatcher = request.getRequestDispatcher("register.jsp");
			
			if(rowCount > 0) {
				request.setAttribute("status", "success");
			} else {
				request.setAttribute("status", "error");
			}
			
			dispatcher.forward(request, response);
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
				pstmt.close();
			} catch (SQLException s1) {
				s1.printStackTrace();
			}
		}
	}

}
