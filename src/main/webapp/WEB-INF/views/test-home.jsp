<!DOCTYPE html>
<%@ include file="header.jsp"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dz | Test</title>
</head>
<body>


	<div class="row" style="padding-top: 60px">
		<div class="card" style="margin-top: 5px">
			<div class="card-body">

				<div class="card border border-primary" style="width: 20rem;">
					<div class="card-body">
						<h5 class="card-title">Test Interceptors</h5>
						<h6 class="card-subtitle mb-2 text-muted">intercept word have initial start with A</h6>
						<hr>
						 <form action="${ pageContext.request.contextPath }/log-search" class="d-flex">
                            <input class="form-control me-2" type="search" name="keyword"
                                placeholder="Enter Word" aria-label="Search" />
                            <button class="btn btn-outline-success" type="submit">Search</button>
                        </form>
                        ${searchKey }
					</div>
				</div>

			</div>
		</div>
	</div>
</body>
</html>