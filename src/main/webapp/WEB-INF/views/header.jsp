<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<%@ include file="comman.jsp"%>

<div class="row" style="inline-size: min-content;">
	<nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light"
		style="border-left: 116px solid; border-left-color: darkslategray; height: 70px">
		<div class="container-fluid">
			<!-- <a class="navbar-brand" href="http://localhost:8081/spring-mvc-orm-xmlbase-config/" -->
			<a class="navbar-brand" href="${pageContext.request.contextPath }"
				style="margin-left: -110px; font-family: cursive; font-size: 24px; color: white;">
				DZ APP
			</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link" aria-current="page"
						href="${pageContext.request.contextPath }">Home</a></li>

					<li class="nav-item"><a class="nav-link" aria-current="page"
						href="${pageContext.request.contextPath }/employee/employeesByPageNumber?currentPage=1">Employee Master </a></li>
					
					<li class="nav-item"><a class="nav-link" aria-current="page"
                        href="${pageContext.request.contextPath }/complex/">Complex Form</a></li>
                        	
					<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/fileUploadForm/">Upload
							File </a></li>
					<!--<li class="nav-item"><a class="nav-link" aria-current="page" href="addEmployee.jsp">Add Employee</a></li> -->
					<li id="pg" class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath }/testPage/">test</a></li>
				</ul>
				<form action="${pageContext.request.contextPath }/search" class="d-flex">
					<input class="form-control me-2" type="search" name="keyword" placeholder="Enter any Keyword"
						aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Search</button>
				</form>
			</div>
		</div>
	</nav>
</div>

