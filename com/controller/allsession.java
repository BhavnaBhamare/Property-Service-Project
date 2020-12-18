package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.BLManager;
import com.pojo.Property;
import com.pojo.Register;

/**
 * Servlet implementation class allsession
 */
@WebServlet("/allsession")
public class allsession extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	BLManager bl=new BLManager();
	Register reg=new Register();
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String email=(String)session.getAttribute("email");
		reg=bl.serachbyemail(email);
		
		if(email!=null){
			
			BLManager bl=new BLManager();
			List<Property> p=bl.searchallPropertylist();
			session.setAttribute("pro", p);
			response.sendRedirect("ViewAllProperty.jsp");
			
		}
		else{
			response.sendRedirect("login1.jsp");
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
