package com.dz.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dz.app.dto.StudentDto;

@Controller
public class StudentController {

	@RequestMapping("complex")
	public String showForm() {
		return "complex-form";
	}
	
	//@ModelAttribute --> bind form data with class fields 
	// and binded data is also available in response page .
	@RequestMapping(path="handledForm",method=RequestMethod.POST)
	public String formHandler(@ModelAttribute("student") StudentDto dto,BindingResult bindingResult) {
		
		if(bindingResult.hasErrors()) {
			return "complex-form";
		}
		
		System.out.println(dto);
		return "complex-response";
	}
	
}
