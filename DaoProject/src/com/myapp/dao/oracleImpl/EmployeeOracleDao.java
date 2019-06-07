package com.myapp.dao.oracleImpl;

import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.myapp.dao.entities.Employee;
import com.myapp.dao.specification.EmployeeDao;

public class EmployeeOracleDao implements EmployeeDao {
	private Connection conn = null;
	private Statement stmt = null;
	Employee e = null;

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

	public ArrayList<Employee> getAllEmployees() {
		ArrayList<Employee> employeeList = new ArrayList<>();
		getConnection();
		try {
			stmt = conn.createStatement();
			String q = "SELECT * FROM employees";
			ResultSet rs = stmt.executeQuery(q);
			while (rs.next()) {
				e = new Employee();
				e.setEmployeeId(rs.getInt("employee_id"));
				e.setFirstName(rs.getString("first_name"));
				e.setLastName(rs.getString("last_name"));
				e.setEmail(rs.getString("email"));
				e.setPhoneNo(rs.getString("phone_Number"));
				e.setHireDate(rs.getDate("hire_Date"));
				e.setSalary(rs.getDouble("salary"));
				e.setComissionPct(rs.getDouble("commission_Pct"));
				e.setManagerId(rs.getInt("manager_Id"));
				e.setDepartmentId(rs.getInt("department_Id"));

				employeeList.add(e);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return employeeList;
	}

	public ArrayList<Employee> getAllEmployeesByDepartment(int departmentId) {
		return null;
	}

	public void insertEmployee(Employee e) {
		java.util.Date utilDate = new java.util.Date();
		java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
		SimpleDateFormat sdf = new SimpleDateFormat("dd-MMM-YYYY");
		String stringDate = sdf.format(sqlDate);
		getConnection();
		try {
			stmt = conn.createStatement();
			String q = "INSERT INTO employees(employee_id, first_name, last_name,email, phone_Number, hire_Date, salary, commission_Pct, manager_Id, department_Id)";
				q = q + " values(" + e.getEmployeeId();
				q = q + ", '" + e.getFirstName();
				q = q + "', '" + e.getLastName();
				q = q + "', '" + e.getEmail();
				q = q + "', '" + e.getPhoneNo();
				q = q + "', '" + stringDate;
				q = q + "', " + e.getSalary();
				q = q + ", " + e.getComissionPct();
				q = q + ", " + e.getManagerId();
				q = q + ", " + e.getDepartmentId();
				q = q + ")";
				stmt.executeUpdate(q);
				//System.out.println(q);
		}catch(Exception e1) {
			e1.printStackTrace();
		}

	}

	public void updateEmployee(Employee e) {
	}

	public void DeleteEmployee(Employee e) {
	}
}
