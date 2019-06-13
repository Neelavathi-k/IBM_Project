package com.myapp.dao.entities;

import java.util.Date;

public class Ibm_Employee {
	public int employeeId;
	public String employeeName;
	public String emailId;
	public String phoneNumber;
	public String pass_word;
	public String doorNo;
	public String street;
	public String area;
	public String city;
	public int pincode;
	public String dept;
	public int salary;
	public Date hireDate;
	public String status;
	
	public Ibm_Employee() {
	}
	
	public Ibm_Employee(int employeeId, String dept, int salary, String status) {
		this.employeeId = employeeId;
		this.dept = dept;
		this.salary = salary;
		this.status = status;
	}
	
	public Ibm_Employee(int id, String employeeName, String emailId, String phoneNumber, String pass_word, String doorNo, String street, String area, String city, int pin) {
		super();
		this.employeeId = id;
		this.employeeName = employeeName;
		this.emailId = emailId;
		this.phoneNumber = phoneNumber;
		this.pass_word = pass_word;
		this.doorNo = doorNo;
		this.street = street;
		this.area = area;
		this.city = city;
		this.pincode = pin;
	}
	
	public Ibm_Employee(String emailId, String phoneNumber, String pass_word, String doorNo, String street, String area, String city, int pin) {
		super();
		this.emailId = emailId;
		this.phoneNumber = phoneNumber;
		this.pass_word = pass_word;
		this.doorNo = doorNo;
		this.street = street;
		this.area = area;
		this.city = city;
		this.pincode = pin;
	}

	public Ibm_Employee(String dept, int salary, Date hireDate) {
		this.dept = dept;
		this.salary = salary;
		this.hireDate = hireDate;
	}
	
	public int getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}
	public String getEmployeeName() {
		return employeeName;
	}
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getPass_word() {
		return pass_word;
	}
	public void setPass_word(String pass_word) {
		this.pass_word = pass_word;
	}
	public String getDoorNo() {
		return doorNo;
	}
	public void setDoorNo(String doorNo) {
		this.doorNo = doorNo;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public int getPincode() {
		return pincode;
	}
	public void setPincode(int pincode) {
		this.pincode = pincode;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	public Date getHireDate() {
		return hireDate;
	}
	public void setHireDate(Date hireDate) {
		this.hireDate = hireDate;
	}
	
	
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return employeeId + "," + employeeName + "," + emailId
				+ "," + phoneNumber + ", " + pass_word + "," + doorNo + ","
				+ street + ", " + area + "," + city + "," + pincode + ", " + dept + ","
				+ salary + "," + hireDate;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((area == null) ? 0 : area.hashCode());
		result = prime * result + ((city == null) ? 0 : city.hashCode());
		result = prime * result + ((dept == null) ? 0 : dept.hashCode());
		result = prime * result + ((doorNo == null) ? 0 : doorNo.hashCode());
		result = prime * result + ((emailId == null) ? 0 : emailId.hashCode());
		result = prime * result + employeeId;
		result = prime * result + ((employeeName == null) ? 0 : employeeName.hashCode());
		result = prime * result + ((hireDate == null) ? 0 : hireDate.hashCode());
		result = prime * result + ((pass_word == null) ? 0 : pass_word.hashCode());
		result = prime * result + ((phoneNumber == null) ? 0 : phoneNumber.hashCode());
		result = prime * result + pincode;
		result = prime * result + salary;
		result = prime * result + ((street == null) ? 0 : street.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Ibm_Employee other = (Ibm_Employee) obj;
		if (area == null) {
			if (other.area != null)
				return false;
		} else if (!area.equals(other.area))
			return false;
		if (city == null) {
			if (other.city != null)
				return false;
		} else if (!city.equals(other.city))
			return false;
		if (dept == null) {
			if (other.dept != null)
				return false;
		} else if (!dept.equals(other.dept))
			return false;
		if (doorNo == null) {
			if (other.doorNo != null)
				return false;
		} else if (!doorNo.equals(other.doorNo))
			return false;
		if (emailId == null) {
			if (other.emailId != null)
				return false;
		} else if (!emailId.equals(other.emailId))
			return false;
		if (employeeId != other.employeeId)
			return false;
		if (employeeName == null) {
			if (other.employeeName != null)
				return false;
		} else if (!employeeName.equals(other.employeeName))
			return false;
		if (hireDate == null) {
			if (other.hireDate != null)
				return false;
		} else if (!hireDate.equals(other.hireDate))
			return false;
		if (pass_word == null) {
			if (other.pass_word != null)
				return false;
		} else if (!pass_word.equals(other.pass_word))
			return false;
		if (phoneNumber == null) {
			if (other.phoneNumber != null)
				return false;
		} else if (!phoneNumber.equals(other.phoneNumber))
			return false;
		if (pincode != other.pincode)
			return false;
		if (salary != other.salary)
			return false;
		if (street == null) {
			if (other.street != null)
				return false;
		} else if (!street.equals(other.street))
			return false;
		return true;
	}
	
	
}
