package com.dz.app;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

//public class MyInterCeptor implements HandlerInterceptor {
public class MyInterCeptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		System.out.println("1. Before Handler called...prehandle");
		
		String keyword = request.getParameter("keyword");
		if(keyword.startsWith("a")) {
			
			response.setContentType("text/html");
			response.getWriter().println("<h2>Interceptor Work ... !</h2>");
			response.getWriter().println("<h3>Request will not process further as it start with letter a... </h3>");
			response.getWriter().println("<h3>try word which is not start with letter a... </h3>");
			return false;
		}
		
		return true;
//		return super.preHandle(request, response, handler);
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
		System.out.println("2. After Handler called...posthandle");
		
		super.postHandle(request, response, handler, modelAndView);
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		
		System.out.println("3. After view resolver ...");
		
		super.afterCompletion(request, response, handler, ex);
	}

	

}
