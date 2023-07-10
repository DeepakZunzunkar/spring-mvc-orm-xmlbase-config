<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>DZ | Home </title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script> -->

<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

<!-- Bootstrap -->
<link href='https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css' rel='stylesheet' type='text/css'>
<script src='https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js' type='text/javascript'></script>

<!-- Datepicker -->
<link href='https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css' rel='stylesheet' type='text/css'>
<script src='https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js' type='text/javascript'></script>

<!-- font awssome  -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<style type="text/css">
div {
	margin: 15px;
}

body {
	font-family: "Sofia", sans-serif;
}

.appFontStyle{
    font-family: cursive;
}

.inpSty{
    border-left: 10px solid; 
    border-left-color: #007cfffa;
}
.inpStyInValid{
    border-left: 10px solid; 
    border-left-color: red;
}
</style>

<script type="text/javascript">
$(document).ready(function(){
    $('.datepicker').datepicker({
    	orientation: "bottom"
    }); 
});

function checkform(){
	
	
	if($("#firstName").val()==""){
		
		$("#firstName").addClass("inpStyInValid");
	    $("#firstName").removeClass("inpSty");
	}else{
		$("#firstName").addClass("inpSty");
	}
}

function chk(){
	alert("kok");
}

</script>
</head>
<body class="container-fluid appFontStyle">
    <%-- <img alt="my img12" src="<c:url value="/resources/images/bcgrd.jpg" />"> --%>
</body>
</html>

