package com.wit.myBatis;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.wit.member.Employee;
import com.wit.member.Member;
import com.wit.member.Power;

public interface EmployeeMapper {
	
	public int insert(Employee employee);
	
	public Employee login(@Param("eId") String eId, @Param("ePwd") String ePwd);
	
	public int update(Employee employee);
	
	public void changePwd(Employee employee);
	
	public void delete(Employee employee);

	public List<Employee> getAllEmployees();
	
	public Employee getEmployeeById(String eId);
	
	public List<Employee> getEmployeesByKeyword(String keyword);
	
	public Power getPower(Employee employee);

}
