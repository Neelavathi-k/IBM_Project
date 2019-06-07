package com.myapp.dao.specification;

import java.util.ArrayList;

import com.myapp.dao.entities.Employee;

public interface EmployeeDao {
	public ArrayList<Employee> getAllEmployees();
	public ArrayList<Employee> getAllEmployeesByDepartment(int departmentId);
	
	public void insertEmployee(Employee e);
	public void updateEmployee(Employee e);
	public void DeleteEmployee(Employee e);

}
