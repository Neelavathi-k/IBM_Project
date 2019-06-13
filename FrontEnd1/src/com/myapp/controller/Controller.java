package com.myapp.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.myapp.OracleImpl.EmployeeImpl;
import com.myapp.dao.entities.Ibm_Employee;

@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Controller() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type = request.getParameter("type");
		PrintWriter out = response.getWriter();
		EmployeeImpl emp = new EmployeeImpl();
		if(type.equals("getAllEmployee")) {
			ArrayList<Ibm_Employee> employeeList = emp.getAllEmployees();
			request.setAttribute("empList", employeeList);
			RequestDispatcher rd = request.getRequestDispatcher("PrintAllEmployee.jsp");
			rd.forward(request, response);
		}
		else if (type.equals("register")) {
			String id = request.getParameter("employee_id");
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String phoneNo = request.getParameter("phone no");
			String password = request.getParameter("password");
			String doorNo = request.getParameter("door no");
			String street = request.getParameter("street");
			String area = request.getParameter("area");
			String city = request.getParameter("city");
			String pin = request.getParameter("pin code");
			int empId = Integer.parseInt(id);
			int pinCode = Integer.parseInt(pin);
			Ibm_Employee e = new Ibm_Employee(empId, name, email, phoneNo, password, doorNo, street, area, city, pinCode);
			int flag = emp.insertEmployeebyUser(e);
			if(flag == 1) {
				out.println("<h6>YOU SUCCESSFULLY REGISTERED<h6>");
				RequestDispatcher rd = request.getRequestDispatcher("UserLogin.jsp");
				rd.forward(request, response);
			}
			else
				out.println("REGISTRATION FAILURE");
		}
		else if(type.equals("InsertbyAdmin")) {
			String id = request.getParameter("id");
			String hire_date = request.getParameter("date");
			String dept = request.getParameter("dept");
			String sal = request.getParameter("salary");
			String status = request.getParameter("status");
			int empId = Integer.parseInt(id);
			int salary = Integer.parseInt(sal);
		//	Date hiredate = (Date)hire_date;
			Ibm_Employee e = new Ibm_Employee(empId, dept, salary, status);
			int flag = emp.insertEmployeebyAdmin(e);
			if(flag == 1) {
				RequestDispatcher rd = request.getRequestDispatcher("WelcomeAdmin.jsp");
				rd.forward(request, response);
			}
		}
		else if(type.equals("loginbyUser")) {
			String id = request.getParameter("id");
			String password = request.getParameter("password");
			int empid = Integer.parseInt(id);
			boolean flag = emp.loginbyUser(empid, password);
			if(flag) {
			//	System.out.println("Successfully login");
				HttpSession session = request.getSession();
				Ibm_Employee employeeList = emp.getEmployeebyId(empid);
				session.setAttribute("empList", employeeList);
				RequestDispatcher rd = request.getRequestDispatcher("Welcome.jsp");
				rd.forward(request, response);
			}
			else
				out.print("LOGIN FAIL");
		}
		else if(type.equals("loginbyAdmin")) {
			String id = request.getParameter("id");
			String password = request.getParameter("password");
			boolean flag = emp.loginbyAdmin(id, password);
			if(flag) {
				HttpSession session = request.getSession();
				RequestDispatcher rd = request.getRequestDispatcher("WelcomeAdmin.jsp");
				rd.forward(request, response);
		}
		else
			out.print("LOGIN FAIL");
		}
/*		else if(type.equals("UserEdit")) {
			String email = request.getParameter("Email_id");
			String phoneNo = request.getParameter("Phone_no");
			String password = request.getParameter("password");
			String doorNo = request.getParameter("Door_No");
			String street = request.getParameter("Street");
			String area = request.getParameter("Area");
			String city = request.getParameter("City");
			String pin = request.getParameter("Pin");
			int pinCode = Integer.parseInt(pin);
			Ibm_Employee e = new Ibm_Employee(email, phoneNo, password, doorNo, street, area, city, pinCode);
			int flag = emp.UpdatebyUser(e);

		}*/
		else if(type.equals("particularUser")) {
			String id = request.getParameter("id");
			int empid = Integer.parseInt(id);
			HttpSession session = request.getSession();
			Ibm_Employee employeeList = emp.getEmployeebyId(empid);
			session.setAttribute("empList", employeeList);
			RequestDispatcher rd = request.getRequestDispatcher("Profile.jsp");
			rd.forward(request, response);
		}
		else if(type.equals("entireUser")) {
			ArrayList<Ibm_Employee> employeeList = emp.getAllEmployees();
			request.setAttribute("empList", employeeList);
			RequestDispatcher rd = request.getRequestDispatcher("PrintAllEmployee.jsp");
			rd.forward(request, response);
		}
		
		/*PrintWriter out = response.getWriter();
		out.println("HAI");*/
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
}
