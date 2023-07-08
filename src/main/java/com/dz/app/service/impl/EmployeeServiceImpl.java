package com.dz.app.service.impl;

import com.dz.app.dao.EmployeeDao;
import com.dz.app.entity.Employee;
import com.dz.app.service.EmployeeService;

public class EmployeeServiceImpl implements EmployeeService{

	private EmployeeDao employeeDao; 
	
	@Override
	public void addEmployee(Employee employee) {
		
		employeeDao.saveEmployee(employee);
		
	}

	
	
	public EmployeeDao getEmployeeDao() {
		return employeeDao;
	}

	public void setEmployeeDao(EmployeeDao employeeDao) {
		this.employeeDao = employeeDao;
	}

	
}
