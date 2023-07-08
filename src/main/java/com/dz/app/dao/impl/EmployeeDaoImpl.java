package com.dz.app.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.transaction.annotation.Transactional;

import com.dz.app.dao.EmployeeDao;
import com.dz.app.entity.Employee;

public class EmployeeDaoImpl implements EmployeeDao{

	
	private HibernateTemplate template;
	
	public HibernateTemplate getTemplate() {
		return template;
	}

	public void setTemplate(HibernateTemplate template) {
		this.template = template;
	}
	
	@Transactional
	@Override
	public Employee saveEmployee(Employee employee) {
		
		Long eid = (Long)this.template.save(employee);
		System.out.println(eid);
		return employee;
	}

	@Override
	public void updateEmployee(Employee empTrn) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteEmployee(Employee empTrn) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Employee findById(long eid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Employee> getAllEmployees() {
		// TODO Auto-generated method stub
		return null;
	}

}
