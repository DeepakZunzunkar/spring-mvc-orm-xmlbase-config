package com.dz.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
		return "index";
	}

	@RequestMapping(path = "/test", method = RequestMethod.GET)
	public String test2() {

		System.out.println("I am alive...dz");
		return "index";
	}

}
