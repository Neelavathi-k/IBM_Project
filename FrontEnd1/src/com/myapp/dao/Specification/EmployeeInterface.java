package com.myapp.dao.Specification;

import java.util.ArrayList;
import com.myapp.dao.entities.Ibm_Employee;

public interface EmployeeInterface {
	public ArrayList<Ibm_Employee> getAllEmployees();
	public int insertEmployeebyUser(Ibm_Employee e);
}
