package com.myapp.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.myapp.dao.entities.Ibm_Employee;
import com.myapp.OracleImpl.EmployeeImpl;

@WebServlet("/EmployeeController")
public class EmployeeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public EmployeeController() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type = request.getParameter("type");
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		int empid = Integer.parseInt(id);
		
		EmployeeImpl employeeDeo = new EmployeeImpl();
	//	if(type.equals("loginbyUser")) {
		/*	boolean flag = employeeDeo.loginbyUser(empid, password);
			if(flag) {
				request.setAttribute("result", flag);
				request.setAttribute("id", empid);
				RequestDispatcher rd = request.getRequestDispatcher("afterHomePage.jsp");
				rd.forward(request, response);
			}
			else {
				RequestDispatcher rd = request.getRequestDispatcher("ErrorPage.jsp");
				rd.forward(request, response);
			}
		}
		else if(type.equals("loginbyAdmin")) {
			
		}
	*/	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
}
