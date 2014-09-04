package com.wit.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wit.myBatis.EmployeeMapper;
 
@Service
public class EmployeeServiceImpl implements EmployeeService {
	
	@Autowired
	private EmployeeMapper employeeMapper;
	
	public EmployeeMapper getemployeeMapper() {
		return employeeMapper;
	}

	public void setEmployeeMapper(EmployeeMapper employeeMapper) {
		this.employeeMapper = employeeMapper;
	}

	public int insert(Employee employee) {
		return employeeMapper.insert(employee);
	} 
	
	public Employee login(String eId, String ePwd) {
		return employeeMapper.login(eId, ePwd);
	}
	
	public int update(Employee employee) {
		return employeeMapper.update(employee);
	}
	
	public void changePwd(Employee employee) {
		employeeMapper.changePwd(employee);
	}
	
	public void delete(Employee employee) {
		employeeMapper.delete(employee);
	}

	public List<Employee> getAllEmployees() {
		return employeeMapper.getAllEmployees();
	}
	
	public Employee getEmployeeById(String pId) {
		return employeeMapper.getEmployeeById(pId);
	}
	
	public List<Employee> getEmployeesByKeyword(String keyword) {
		return employeeMapper.getEmployeesByKeyword(keyword);
	}
	
	public Power getPower(Employee employee) {
		return employeeMapper.getPower(employee);
	}
 


}
