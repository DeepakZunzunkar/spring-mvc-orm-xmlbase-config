package com.dz.app.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.dz.app.dao.EmployeeDao;
import com.dz.app.entity.BaseProperties;
import com.dz.app.entity.Employee;
import com.dz.app.service.EmployeeService;
import com.dz.app.utility.Constant.EmployeeStatus;

@Component
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	private EmployeeDao employeeDao;

	@Override
	public String addEmployee(Employee trn) {
		
		trn.setBaseProperties(new BaseProperties("A", new Date(), "spring-mvc-orm", null, null));
		trn.setStatus(EmployeeStatus.ACTIVE.getEmployeeStatusCode());
		employeeDao.saveEmployee(trn);
		return "updated";

		/*if (trn.getEid() != null) {
			trn.getBaseProperties().setUpdatedBy("spring-mvc-orm");
			trn.getBaseProperties().setUpdatedOn(new Date());
			employeeDao.updateEmployee(trn);
			return "succes";
		}*/
	}

	@Override
	public List<Employee> getEmployees() {

		List<Employee> allEmployees = employeeDao.getAllEmployees();
		long count = allEmployees.stream().count();
		System.out.println("Count " + count);
		return allEmployees;
	}

	@Override
	public List<Employee> getEmployeesByPage(Integer pageVal, Integer pageSize) {

		return employeeDao.getEmployeeByPage(pageVal, pageSize);
	}

	@Override
	public Employee getEmployeeByEid(Long eid) {
		return employeeDao.findById(eid);
	}

	
	
	public EmployeeDao getEmployeeDao() {
		return employeeDao;
	}

	public void setEmployeeDao(EmployeeDao employeeDao) {
		this.employeeDao = employeeDao;
	}

	@Override
	public void deleteEmployee(Long eid) {
		this.employeeDao.deleteEmployee(getEmployeeByEid(eid));
	}
}
