<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DZ | Upload Form</title>
</head>
<%@ include file="comman.jsp"%>
<%@ include file="header.jsp"%>
<%@ page isELIgnored="false"%>
<div class="row" style="padding-top: 60px">
	<div class="card" style="margin-top: 5px">
		<div class="card-body">

			<div class="container p-5 border border-primary">
				<h2>Upload Image</h2>
				<form action="${pageContext.request.contextPath }/uploadImage" method="post" enctype="multipart/form-data">
					<div class="form-group">
                        <label for="uploadImage" >Select Your Image : </label>					
					    <input type="file" name="uploadImg" id="uploadImage"
					       class="form-control-file">
					</div>
					<button class="btn btn-outline-success">Upload</button>
				</form>
                ${response }
                <img src="<c:url value="/resouces/uploadFiles/${fileName}" />" >
                      
			</div>

		</div>
	</div>
</div>