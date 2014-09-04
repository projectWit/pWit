package com.wit.member;

import java.util.List;

public interface EmployeeService {
	
	public int insert(Employee employee);
	
	public Employee login(String eId, String ePwd);
	
	public int update(Employee employee);
	
	public void changePwd(Employee employee);
	
	public void delete(Employee employee);

	public List<Employee> getAllEmployees();
	
	public Employee getEmployeeById(String pId);
	
	public List<Employee> getEmployeesByKeyword(String keyword);
	
	public Power getPower(Employee employee);
}
