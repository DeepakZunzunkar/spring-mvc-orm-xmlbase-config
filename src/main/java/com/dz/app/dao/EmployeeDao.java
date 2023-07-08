package com.dz.app.dao;

import java.util.List;

import com.dz.app.entity.Employee;

public interface EmployeeDao {


	Employee saveEmployee(Employee employee);
	void updateEmployee(Employee empTrn);
	void deleteEmployee(Employee empTrn);
	Employee findById(long eid);
	List<Employee> getAllEmployees();
}
