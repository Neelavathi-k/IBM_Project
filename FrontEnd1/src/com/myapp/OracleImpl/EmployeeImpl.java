package com.myapp.OracleImpl;

import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.swing.plaf.synth.SynthSeparatorUI;

import com.myapp.dao.entities.Ibm_Employee;
import com.myapp.dao.Specification.EmployeeInterface;

public class EmployeeImpl implements EmployeeInterface{
	private Connection conn = null;
	private Statement stmt = null;

	
	private Connection getConnection() {
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "hr";
		String password = "hr";

		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection(url, user, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}

	@Override
	public ArrayList<Ibm_Employee> getAllEmployees() {
		Ibm_Employee e = null;
		ArrayList<Ibm_Employee> empList = new ArrayList();
		getConnection();
		try {
			stmt = conn.createStatement();
			String q = "SELECT * FROM Ibm_Employees";
			ResultSet rs = stmt.executeQuery(q);
			while (rs.next()) {
				e = new Ibm_Employee();
				e.setEmployeeId(rs.getInt("employee_id"));
				e.setEmployeeName(rs.getString("name"));
				e.setEmailId(rs.getString("email_id"));
				e.setPhoneNumber(rs.getString("phone_number"));
				e.setPass_word(rs.getString("pass_word"));
				e.setDoorNo(rs.getString("door_no"));
				e.setStreet(rs.getString("street"));
				e.setArea(rs.getString("area"));
				e.setCity(rs.getString("city"));
				e.setPincode(rs.getInt("pincode"));
				e.setDept(rs.getString("dept"));
				e.setSalary(rs.getInt("salary"));
				e.setHireDate(rs.getDate("hire_data"));
				empList.add(e);
			}
		} catch(Exception exp) {
			exp.printStackTrace();
		}
		try {
			conn.close();
		} catch (SQLException exp) {
			exp.printStackTrace();
		}
		return empList;
	}

	@Override
	public int insertEmployeebyUser(Ibm_Employee e) {
  /*	java.util.Date utilDate = new java.util.Date();
		java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
		SimpleDateFormat sdf = new SimpleDateFormat("dd-MMM-YYYY");
		String stringDate = sdf.format(sqlDate);*/
		int s = 0;
		getConnection();
		try {
			stmt = conn.createStatement();
			String q = "INSERT INTO Ibm_Employees(employee_id,name,email_id,phone_number,pass_word,door_no,street,area,city,pincode)";
				   q = q + "VALUES ( " + e.getEmployeeId();
				   q = q + ", '" +e.getEmployeeName();
				   q = q + "', '" +e.getEmailId();
				   q = q + "', '" +e.getPhoneNumber();
				   q = q + "', '" +e.getPass_word();
				   q = q + "', '" +e.getDoorNo();
				   q = q + "', '" +e.getStreet();
				   q = q + "', '" +e.getArea();
				   q = q + "', '" +e.getCity();
				   q = q + "', " +e.getPincode();
				   q = q + ")";
				   s = stmt.executeUpdate(q);
		//		   System.out.println(q);
		}catch (Exception exp) {
			exp.printStackTrace();
		}
		try {
			conn.close();
		} catch (SQLException exp) {
			exp.printStackTrace();
		}
		return s;
	}
	
	public int insertEmployeebyAdmin(Ibm_Employee e) {
		getConnection();
		int s = 0;
		try {
			stmt = conn.createStatement();
			String q = "UPDATE Ibm_Employees";
				   q = q + " SET dept = '" + e.getDept();
				   q = q + "', salary = " + e.getSalary();
				   q = q + ", status = '" + e.getStatus();
				   q = q + "' WHERE employee_id = " + e.getEmployeeId();
				// System.out.println(q);
				   s = stmt.executeUpdate(q);
		} catch (Exception exp) {
			exp.printStackTrace();
		}
		try {
			conn.close();
		} catch (SQLException exp) {
			exp.printStackTrace();
		}
		return s;
	}
	
	public boolean loginbyUser(int id, String password) {
		Ibm_Employee e = null;
		getConnection();
		try { 
			stmt = conn.createStatement();
			String q = "SELECT employee_id,pass_word FROM ibm_employees";
			ResultSet rs = stmt.executeQuery(q);
			while(rs.next()) {
				e = new Ibm_Employee();
				e.setEmployeeId(rs.getInt("employee_id"));
				e.setPass_word(rs.getString("pass_word"));
				if(id == e.getEmployeeId() && password.equals(e.getPass_word())) {
						try {
							conn.close();
						} catch (SQLException exp) {
							exp.printStackTrace();
						}
						return true;
					}
			}
		} catch (Exception exp) {
			exp.printStackTrace();
		}
		try {
			conn.close();
		} catch (SQLException exp) {
			exp.printStackTrace();
		}
		return false;
	}
	
	public boolean loginbyAdmin(String id, String password) { 
		Ibm_Employee e = null;
		getConnection();
		try { 
			stmt = conn.createStatement();
			if(id.equals("admin") && password.equals("admin")) {
				try {
					conn.close();
				} catch (SQLException exp) {
					exp.printStackTrace();
				}
				return true;
			}
		} catch (Exception exp) {
			exp.printStackTrace();
		}
		try {
			conn.close();
		} catch (SQLException exp) {
			exp.printStackTrace();
		}
		return false;
	}
	
	public Ibm_Employee getEmployeebyId(int id) {
		Ibm_Employee e = null;
		getConnection();
		try {
			stmt = conn.createStatement();
			String q = "SELECT * FROM Ibm_Employees WHERE employee_id="+ id;
			ResultSet rs = stmt.executeQuery(q);
			while (rs.next()) {
				e = new Ibm_Employee();
					e.setEmployeeId(rs.getInt("employee_id"));
					e.setEmployeeName(rs.getString("name"));
					e.setEmailId(rs.getString("email_id"));
					e.setPhoneNumber(rs.getString("phone_number"));
					e.setPass_word(rs.getString("pass_word"));
					e.setDoorNo(rs.getString("door_no"));
					e.setStreet(rs.getString("street"));
					e.setArea(rs.getString("area"));
					e.setCity(rs.getString("city"));
					e.setPincode(rs.getInt("pincode"));
					e.setDept(rs.getString("dept"));
					e.setSalary(rs.getInt("salary"));
					e.setHireDate(rs.getDate("hire_data"));
				}
		}catch (Exception exp) {
			exp.printStackTrace();
		}
		try {
			conn.close();
		} catch (SQLException exp) {
			exp.printStackTrace();
		}
		return e;
	}
	
	
	
	public void updatebyUser() {}
	public void updatebyAdmin() {}
	
	public void Delete(int id) {
		getConnection();
		try {
			stmt = conn.createStatement();
			String q = "DELETE * FROM ibm_employees WHERE employee_id=id";
		//	ResultSet rs = stmt.executeUpdate(q);
		}catch (Exception exp) {
			exp.printStackTrace();
		}
	}
	
	
}
