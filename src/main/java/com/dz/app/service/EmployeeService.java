package com.dz.app.service;

import java.util.List;

import com.dz.app.entity.Employee;

public interface EmployeeService {

	public String addEmployee(Employee employee);
	public List<Employee> getEmployees();
	public List<Employee> getEmployeesByPage(Integer pageVal, Integer pageSize);
	public Employee getEmployeeByEid(Long eid);
	public void deleteEmployee(Long eid);
}
