package com.dz.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dz.app.entity.Employee;
import com.dz.app.service.EmployeeService;

@Controller
@RequestMapping("employee")
public class EmployeeController {
	
	private static Integer pageSize=5;
	
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
		String msg = employeeService.addEmployee(employee);
		model.addAttribute("msg", msg);
		return "redirect:employeesByPageNumber?currentPage=1";
	}

	@RequestMapping("employees")
	public String getEmployees(Model model) {
			
		List<Employee> employees =employeeService.getEmployees();
		model.addAttribute("empList",employees);
		return "empList";
	}
	
	@RequestMapping("employeesByPageNumber")
	public String getEmployeesByPageNumber(@RequestParam("currentPage") Integer currentPage,Model model) {

		
		model.addAttribute("currentPage",currentPage);
		Integer pageVal=(currentPage!=null)?currentPage-1:0;
		pageVal=pageVal*pageSize;
		
		List<Employee> employees = employeeService.getEmployeesByPage(pageVal, pageSize);
		model.addAttribute("empList",employees);
		model.addAttribute("totalEmployeeCount", employeeService.getEmployees().stream().count());
		model.addAttribute("pageSize",pageSize);
		
		return "employeeList";
	}

	@RequestMapping("editEmployee/{id}")
	public String editEmployee(@PathVariable("id") Long eid,Model model) {
		
		Employee employee=employeeService.getEmployeeByEid(eid);
		model.addAttribute("EmployeeForm", employee);
		return "employeeForm";
	}
	
	@RequestMapping("deleteEmployee/{id}")
	public String deletEmployee(@PathVariable("id") Long eid,Model model) {
		employeeService.deleteEmployee(eid);
		return "redirect:/employee/employeesByPageNumber?currentPage=1";
	}
}
