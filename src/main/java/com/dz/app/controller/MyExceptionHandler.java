package com.dz.app.controller;

import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;

@ControllerAdvice
public class MyExceptionHandler {

	@ExceptionHandler(value=Exception.class)
	public String handleGenericException(Model model){
		model.addAttribute("msg","Something Went Wrong....");
		return "error-page";
	}

	@ResponseStatus(value=HttpStatus.INTERNAL_SERVER_ERROR)
	@ExceptionHandler(value=NullPointerException.class)
	public String handleNullPointerException(Model model){
		model.addAttribute("msg","Null Pointer Exception has occured..");
		return "error-page";
	}
	
	@ResponseStatus(value=HttpStatus.INTERNAL_SERVER_ERROR)
	@ExceptionHandler(value=NumberFormatException.class)
	public String handleNumberFormatException(Model model){
		model.addAttribute("msg","Number FormatException Exception has occured..");
		return "error-page";
	}
	
}
