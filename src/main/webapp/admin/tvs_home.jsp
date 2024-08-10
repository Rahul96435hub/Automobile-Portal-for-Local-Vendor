<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: TVS</title>
<%@include file="allCss.jsp"%>
<style type="text/css">
a {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration: none;
	color: black;
}
</style>

</head>
<body style="background-color: #f0f1f2;">
	<%@include file="navbar.jsp"%>
	<c:if test="${empty userobj }">
		<c:redirect url="../login.jsp" />
	</c:if>
	
	<div class="container">
<h3 class="text-danger text-center p-3">----TVS Motors Part----</h3>
		<div class="row p-5">
		
<!-- Start of TVS Part -->
			<div class="col-md-3 p-2">
				<a href="tvs_addpart.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-gears fa-3x text-primary"></i><br>
							<h4>Add Parts</h4>
							------------
						</div>
					</div>
				</a>
			</div>


			<div class="col-md-3 p-2">
				<a href="tvs_allpart.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-gear fa-3x text-danger"></i><br>
							<h4>All Parts</h4>
							------------
						</div>
					</div>
				</a>
			</div>
			<div class="col-md-3 p-2">
				<a href="tvs_allorder_part.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-box-open fa-3x text-warning	"></i><br>
							<h4>Order</h4>
							------------
						</div>
					</div>
				</a>
			</div>
			
			<div class="col-md-3 p-2">
				<a href="tvs_catalogue.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-box-open fa-3x text-warning	"></i><br>
							<h4>e-Parts Catalogue</h4>
							------------
						</div>
					</div>
				</a>
			</div>
			
			<div class="col-md-3 p-2">
				<a data-toggle="modal" data-target="#exampleModalCenter">

					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-right-from-bracket fa-3x text-primary"></i><br>
							<h4>Logout</h4>
							------------
						</div>
					</div>

				</a>
			</div>
		</div>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="exampleModalCenter" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle"></h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="text-center">
						<h4>Do You Want logout</h4>
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
						<a href="../logout" type="button"
							class="btn btn-primary text-white">Logout</a>
					</div>
				</div>
				<div class="modal-footer"></div>
			</div>
		</div>
	</div>

	<!-- end logout model -->
	
<!-- end  -->

	<div style="margin-top: 185px;">
		<%@include file="footer.jsp"%></div>
</body>
</html>