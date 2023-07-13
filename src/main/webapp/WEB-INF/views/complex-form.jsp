<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>

<html>
<head>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<link
	href='https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css'
	rel='stylesheet' type='text/css'>
<script
	src='https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js'
	type='text/javascript'></script>

<meta charset="ISO-8859-1">
<title>DZ | ComplexForm</title>
</head>
<%@ include file="header.jsp"%>
<body style="background: #e2e2e2">

	<div class="container mt-4">

		<div class="row" style="margin-top: 77px">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<h3 class="text-center">Complex Form</h3>
						<div class="alert alert-danger alert-dismissible fade show"
							role="alert">
							<strong>Errors : </strong>
							<form:errors path="student.*"/>
							<button type="button" class="close" data-dismiss="alert"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<form
							action="${pageContext.request.contextPath }/handledForm"
							method="post">

							<div class="form-group">
								<label for="name">Your Name </label> <input type="text"
									class="form-control" id="name" name="name"
									placeholder="Enter Name" aria-label="Enter Name">
							</div>

							<div class="form-group">
								<label for="id">Your ID </label> <input type="text"
									class="form-control" id="id" name="id" placeholder="Enter ID"
									aria-label="Enter ID">
							</div>

							<div class="form-group">
								<label for="dob">Your DOB </label> <input type="text"
									class="form-control" id="dob" name="dob"
									placeholder="dd/mm/yyyy" aria-label="Enter DOB">
							</div>

							<div class="form-group">
								<label for="courses">Select Courses</label> <select
									class="form-control" id="courses" name="courses" multiple>
									<option>Java</option>
									<option>Python</option>
									<option>C++</option>
									<option>.Net</option>
									<option>C#</option>
									<option>React</option>
									<option>Angular</option>
									<option>Jquery</option>
									<option>Bootstrap</option>
								</select>
							</div>

							<div class="form-group">
								<span class="mr-3">Select Gender </span>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="gender"
										value="M" id="inlineRadio1"> <label
										class="form-check-label" for="inlineRadio1"> Male </label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="gender"
										value="F" id="flexRadioDefault2"> <label
										class="form-check-label" for="flexRadioDefault2">Female
									</label>
								</div>
							</div>

							<div class="form-group">
								<label for="stype">Select Type</label> <select
									class="form-control" name="stype">
									<option value="Old">Old Student</option>
									<option value="new">New Student</option>
								</select>
							</div>

							<div class="card">
								<div class="card-body">
									<p>Your Address</p>
									<div class="form-group">
										<label for="street">Street </label> <input type="text"
											class="form-control" id="street" name="address.street"
											placeholder="Enter street" aria-label="Enter street">
									</div>
									<div class="form-group">
										<label for="city">City </label> <input type="text"
											class="form-control" id="city" name="address.city"
											placeholder="Enter city" aria-label="Enter city">
									</div>
								</div>
							</div>

							<div class="container text-center">
								<a href="${pageContext.request.contextPath }" class="btn btn-outline-secondary">Back</a>
								<button type="submit" class="btn btn-primary">Submit</button>
							</div>
						</form>
					</div>

				</div>
			</div>
		</div>
	</div>

</body>
</html>