<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: Bajaj Add Part</title>
<%@include file="allCss.jsp"%>
</head>
<body style="background-color: #f0f2f2">

	<%@include file="navbar.jsp"%>
	
	<c:if test="${empty userobj }">
	<c:redirect url="../login.jsp"/>
	</c:if>
	
	<div class="container">
		<div class="form-row p-5">
			<div class="col-md-5 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Bajaj Add Part</h4>

						<c:if test="${not empty succMsg}">
							<p class="text-center text-success">${succMsg}</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>

						<c:if test="${not empty failedMsg}">
							<p class="text-center text-danger">${failedMsg}</p>
							<c:remove var="failedMsg" scope="session" />
						</c:if>



						<form action=" ../bajajaddpart" method="post" 
							enctype="multipart/form-data">

							<div class="form-group">
								<label for="exampleInputEmail1">Part Description*</label>
									 <input
									name="pdes" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp">

							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Part Number*</label> <input
									name="pnumber" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp">

							</div>
							
							<div class="form-group">
								<label for="exampleInputEmail1">Quantity*</label> <input
									name="qun" type="number" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp">

							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Price*</label> <input
									name="price" type="number" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp">

							</div>

							<div class="form-group">
								<label for="inputState">Part Categories</label> <select
									id="inputState" name="categories" class="form-control">
									<option selected>--select--</option>
									<option value="Bajaj">Bajaj Part</option>
								</select>
							</div>

							<div class="form-group">
								<label for="inputState">Part Status</label> <select
									id="inputState" name="status" class="form-control">
									<option selected>--select--</option>
									<option value="Active">Active</option>
									<option value="Inactive">Inactive</option>
								</select>
							</div>


							<div class="form-group">
								<label for="exampleFromCotrolFile1">Upload Photo</label> <input
									name="bimg" type="file" class="form-contro=file"
									id="exampleFromCotrolFile1">

							</div>

							<button type="submit" class="btn btn-primary">Add</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div style="margin-top: 40px;">
		<%@include file="footer.jsp"%></div>

</body>
</html>