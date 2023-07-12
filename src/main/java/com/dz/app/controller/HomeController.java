package com.dz.app.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpRequest;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class HomeController {

	// if index.jsp is not present in webapp folder directly then this request is
	// called default.
	// http://localhost:8081/spring-mvc-orm-xmlbase-config/
	// but if index.jsp present in root of webapp folder then , above URL will
	// directly call index.jsp.
	// so delete index.jsp from webapp root folder. or redirect request from that jsp to required path.
	
	@RequestMapping
	public String testLive() {

		System.out.println("I am alive...");
		return "home";
	}

	@RequestMapping(path = "test", method = RequestMethod.GET)
	public String test2() {
		
		
		//raising exception for test
		/*String s="sss";
		System.out.println(s.length());
		Integer.parseInt(s);*/
		
		System.out.println("I am alive...dz");
		return "redirect:/";
	}
	

	@RequestMapping(path = "testPage", method = RequestMethod.GET)
	public String testpPage() {
		return "test-home";
	}

	@RequestMapping("log-search")
	public RedirectView testInterceptor(@RequestParam("keyword") String keyword,Model model,HttpServletRequest request) {
		
		System.out.println("keyword "+keyword); 
		model.addAttribute("searchKey","search.. "+keyword);
//		return "redirect:/";
		RedirectView r = new RedirectView();
		r.setUrl(request.getContextPath()+"/testPage");
		return r;
	}
	
	@RequestMapping("search")
	public RedirectView searchKey(@RequestParam("keyword") String keyword) {

		System.out.println("searching....");
		
		RedirectView redirectView=new RedirectView();
		redirectView.setUrl("https://www.google.com/search?q="+keyword);
		
		return redirectView;
	}
	
	/*@ExceptionHandler({NumberFormatException.class,NullPointerException.class})
	public String handleException(Model model){
		model.addAttribute("msg","Exception has occured..");
		return "error-page";
	}*/
	
	/*@ExceptionHandler(value=Exception.class)
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
	*/
	
}
