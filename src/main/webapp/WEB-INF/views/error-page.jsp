<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<%@ include file="comman.jsp"%>
<%@ include file="header.jsp"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>DZ | Error</title>
</head>
<body>


	<div class="row" style="padding-top: 60px">
		<div class="card" style="margin-top: 5px">
			<div class="card-body">

				<div class="alert alert-danger" role="alert">
			 		<strong>
    		          		${ msg }
					</strong>
				</div>

			</div>
		</div>
	</div>

</body>
</html>