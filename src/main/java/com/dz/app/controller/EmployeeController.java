package com.dz.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dz.app.entity.Employee;
import com.dz.app.service.EmployeeService;

@Controller
@RequestMapping("employee")
public class EmployeeController {

	@Autowired
	private EmployeeService employeeService; 
	
//	Initialize form 
	@RequestMapping("empform")
	public String BindEmptyObject(Model model) {

		model.addAttribute("EmployeeForm", new Employee());
		return "employeeForm";
	}
	
	
	@RequestMapping("add")
	public String addEmployee(Model model, @ModelAttribute("EmployeeForm") Employee employee) {

		System.out.println(employee);
		employeeService.addEmployee(employee);
		
		return "redirect:empform";
	}
	
}
