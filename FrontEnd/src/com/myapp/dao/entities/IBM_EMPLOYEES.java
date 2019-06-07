package com.myapp.dao.entities;
import java.util.Date;

public class IBM_EMPLOYEES {
	private int employee_id;
	private String name;
	private String email_id;
	private int phone_number;
	private String pass_word;
	private String door_no;
	private String street;
	private String area;
	private String city;
	private int pincode;
	private Date hire_date;
	private String dept;
	private int salary;
	
	public void setEmployee_id(int employee_id) {
		this.employee_id = employee_id;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}
	public void setPhone_number(int phone_number) {
		this.phone_number = phone_number;
	}
	public void setPass_word(String pass_word) {
		this.pass_word = pass_word;
	}
	public void setDoor_no(String door_no) {
		this.door_no = door_no;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public void setPincode(int pincode) {
		this.pincode = pincode;
	}
	public void setHire_date(Date hire_date) {
		this.hire_date = hire_date;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	public int getEmployee_id() {
		return employee_id;
	}
	public String getName() {
		return name;
	}
	public String getEmail_id() {
		return email_id;
	}
	public int getPhone_number() {
		return phone_number;
	}
	public String getPass_word() {
		return pass_word;
	}
	public String getDoor_no() {
		return door_no;
	}
	public String getStreet() {
		return street;
	}
	public String getArea() {
		return area;
	}
	public String getCity() {
		return city;
	}
	public int getPincode() {
		return pincode;
	}
	public Date getHire_date() {
		return hire_date;
	}
	public String getDept() {
		return dept;
	}
	public int getSalary() {
		return salary;
	}
	@Override
	public String toString() {
		return "IBM_EMPLOYEES [employee_id=" + employee_id + ", name=" + name + ", email_id=" + email_id
				+ ", phone_number=" + phone_number + ", pass_word=" + pass_word + ", door_no=" + door_no + ", street="
				+ street + ", area=" + area + ", city=" + city + ", pincode=" + pincode + ", hire_date=" + hire_date
				+ ", dept=" + dept + ", salary=" + salary + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((area == null) ? 0 : area.hashCode());
		result = prime * result + ((city == null) ? 0 : city.hashCode());
		result = prime * result + ((dept == null) ? 0 : dept.hashCode());
		result = prime * result + ((door_no == null) ? 0 : door_no.hashCode());
		result = prime * result + ((email_id == null) ? 0 : email_id.hashCode());
		result = prime * result + employee_id;
		result = prime * result + ((hire_date == null) ? 0 : hire_date.hashCode());
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + ((pass_word == null) ? 0 : pass_word.hashCode());
		result = prime * result + phone_number;
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
		IBM_EMPLOYEES other = (IBM_EMPLOYEES) obj;
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
		if (door_no == null) {
			if (other.door_no != null)
				return false;
		} else if (!door_no.equals(other.door_no))
			return false;
		if (email_id == null) {
			if (other.email_id != null)
				return false;
		} else if (!email_id.equals(other.email_id))
			return false;
		if (employee_id != other.employee_id)
			return false;
		if (hire_date == null) {
			if (other.hire_date != null)
				return false;
		} else if (!hire_date.equals(other.hire_date))
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (pass_word == null) {
			if (other.pass_word != null)
				return false;
		} else if (!pass_word.equals(other.pass_word))
			return false;
		if (phone_number != other.phone_number)
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
