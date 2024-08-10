<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ebook: Register</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="all_component/navbar.jsp"%>
	<div class="conatainer p-3" >
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center text-primary">Registration Page</h4>
						

						<c:if test="${not empty succMsg }">
							<p class="text-center text-success">${succMsg }</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>

						<c:if test="${not empty failedMsg }">
							<p class="text-center text-danger">${failedMsg }</p>
							<c:remove var="failedMsg" scope="session" />
						</c:if>

						<form action="register" method="post">
						
						<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputtext">Full Name*</label> <input type="text"
										class="form-control" id="inputtext" placeholder="Full Name" required="required" name="fname">
								</div>
								
							</div>
						
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail2">Email*</label> <input type="email"
										class="form-control" id="inputEmail4" placeholder="Email" required="required" name="email">
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Password*</label> <input
										type="password" class="form-control" id="inputPassword4"
										placeholder="Password" required="required" name="password">
								</div>
							</div>
							<div class="form-group">
								<label for="inputAddress">Phone No*</label> <input type="text"
									class="form-control" id="inputAddress"
									placeholder="" required="required" name="phno">
							</div>
							<div class="form-group">
								<label for="inputAddress2">Address*</label> <input type="text"
									class="form-control" id="inputAddress2"
									placeholder="" required="required" name="address">
							</div>
							
							<div class="form-group">
								<label for="inputAddress2">Landmark*</label> <input type="text"
									class="form-control" id="inputAddress2"
									placeholder="" required="required" name="landmark">
							</div>
							
							<div class="form-row">
								<div class="form-group col-md-4">
									<label for="inputCity">City*</label> <input type="text"
										class="form-control" id="inputCity" required="required" name="city">
								</div>
								<div class="form-group col-md-4">
									<label for="inputState">State*</label> <select id="inputState"
										class="form-control" required="required" name="state">
										<option selected>Choose...</option>
										<option>Andhra Pradesh </option>
										<option>Arunachal Pradesh </option>
										<option>Assam</option>
										<option>Bihar</option>
										<option>Chhattisgarh</option>
										<option>Goa</option>
										<option>Gujarat</option>
										<option>Haryana</option>
										<option>Himachal Pradesh</option>
										<option>Himachal Pradesh</option>
										<option>Karnataka</option>
										<option>Kerala</option>
										<option>Madhya Pradesh</option>
										<option>Maharashtra</option>
										<option>Manipur</option>
										<option>Meghalaya</option>
										<option>Mizoram</option>
										<option>Nagaland</option>
										<option>Odisha</option>
										<option>Punjab</option>
										<option>Rajasthan</option>
										<option>Sikkim</option>
										<option>Tamil Nadu</option>
										<option>Telangana</option>
										<option>Uttarakhand</option>
										<option>Uttar Pradesh</option>
										<option>Tripura</option>
										<option>West Bengal</option>
										
									</select>
								</div>
								<div class="form-group col-md-4">
									<label for="inputZip">Pin*</label> <input type="text"
										class="form-control" id="inputZip" required="required" name="pincode">
								</div>
							</div>
							<div class="form-group">
								<div class="form-check">
									<input class="form-check-input" type="checkbox" id="gridCheck" required="required" name="check">
									<label class="form-check-label" for="gridCheck"> Check
										me out </label>
								</div>
							</div>
							<button type="submit" class="btn btn-primary">Sign in</button>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
	<div style="margin-top: 3px;">
<%@include file="all_component/footer.jsp"%></div>
</body>
</html>