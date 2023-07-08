
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="com.dz.app.utility.DateUtils"%>
<%@page import="java.util.List"%>
<%@page import="com.dz.app.entity.Employee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="comman.jsp"%>
<%@ include file="header.jsp"%>
<div class="row" style="padding-top: 60px">

	<%!Integer currentPage = 1;
	Integer nextPage;
	Integer previousPage;

	Long totalEmployeeCount = 0l;
	Integer pageSize = 5;
	Double totalPages = 0.0;
	List<Employee> employees = null;
	private static final DecimalFormat df = new DecimalFormat("0.00");
	private static final SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/YYYY");%>

	<%
		employees = (List<Employee>) request.getAttribute("empList");
		currentPage = (Integer) request.getAttribute("currentPage");

		pageSize = (Integer) request.getAttribute("pageSize");
		totalEmployeeCount = (Long) request.getAttribute("totalEmployeeCount");
		totalPages = (double) Math.ceil(totalEmployeeCount.doubleValue() / pageSize.doubleValue());

		nextPage = (currentPage + 1 > totalPages) ? totalPages.intValue() : currentPage + 1;
		previousPage = (currentPage - 1 == 0) ? 1 : currentPage - 1;
	%>

	<div class="card">
		<div class="card-title">
			<ul class="nav justify-content-center">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="./employee?currentPage=1">Employee List</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Upload
						Employee</a></li>
			</ul>
		</div>
		<div class="card-body">

			<!-- <nav class="navbar navbar-light bg-light">
			<div class="container-fluid">
				<form class="d-flex">
					<input class="form-control me-2" type="search" placeholder="Search"
						aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Search</button>
				</form>
			</div>
		</nav> -->

			<%
				if (employees == null) {
			%>
			<div class="d-flex justify-content-center">
				<div class="spinner-border" role="status">
					<span class="visually-hidden">Loading...</span>
				</div>
			</div>
			<%
				} else {
			%>
			<table class="table table-dark table-hover">
				<thead>
					<tr>
						<th scope="col">#</th>
						<th scope="col">Name</th>
						<th scope="col">STATUS</th>
						<th scope="col">AGE</th>
						<th scope="col">SALARY</th>
						<th scope="col">CREATED ON</th>
						<th scope="col" colspan="2">ACTION</th>
					</tr>
				</thead>
				<tbody>

					<%
						if (employees != null && !employees.isEmpty()) {

								for (Employee emp : employees) {
					%>
					<tr>
						<td><%=emp.getEid()%></td>
						<td><%=emp.getFirstName() + " " + emp.getLastName()%></td>
						<td><%=emp.getStatus()%></td>
						<td><%=DateUtils.getAge(DateUtils.convertJUtilDateTimeToString(emp.getBirthDate()))%></td>
						<td><%=df.format(emp.getSalary())%></td>
						<td><%=sdf.format(emp.getBaseProperties().getCreatedOn())%></td>
						<td><a href="employee?eid=<%=emp.getEid()%>">Edit</a></td>
						<td><a href="employee?eid=<%=emp.getEid()%>">Delete</a></td>
					</tr>
					<%
						}

							} else {
					%>
					<tr>
						<td colspan="5">No Data Found</td>
					</tr>
					<%
						}
					%>
				</tbody>
			</table>
			<%
				}
			%>

			<nav aria-label="Page navigation">
				<ul class="pagination">
					<li class="page-item"><a class="page-link"
						href="./employee?currentPage=<%=previousPage%>">Previous</a></li>
					<%
						for (int i = 1; i <= totalPages; i++) {
					%>

					<li class="page-item "><a class="page-link"
						href="./employee?currentPage=<%=i%>"> <%=i%></a></li>
					<%
						}
					%>
					<li class="page-item"><a class="page-link"
						href="./employee?currentPage=<%=nextPage%>">Next</a></li>
				</ul>
			</nav>
		</div>
		<%-- 	<span style="font-weight: bold">totalEmployeeCount : <%= totalEmployeeCount %>  </span>
	<% out.print(currentPage);  %> 
	<% out.print(totalPages);  %> --%>
	</div>

</div>




