
<%@page import="com.entity.HeroCart"%>
<%@page import="com.DAO.HeroCartDAOImpl"%>
<%@page import="java.util.List"%>

<%@page import="com.entity.User"%>
<%@page import="com.DB.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart Page</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="all_component/navbar.jsp"%>

	<c:if test="${empty userobj }">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>

	<c:if test="${not empty succMsg}">
		<div class="alert alert-success" role="alert">${succMsg }</div>
		<c:remove var="succMsg" scope="session" />

	</c:if>

	<c:if test="${not empty failedMsg}">
		<div class="alert alert-danger text-center" role="alert">${failedMsg }</div>
		<c:remove var="failedMsg" scope="session" />

	</c:if>


	<!--<div class="container">  -->
		<div class="row p-2">
			<div class="col-md-6">

				<div class="card bg-white">
					<div class="card-body">
						<h3 class="text-center text-success">Your Selected Item</h3>
						<table class="table table-striped">
							<thead>
								<tr>	
									<th scope="col">Part Des.</th>
									<th scope="col">Part No.</th>
									<th scope="col">Qty</th>
									<th scope="col">Price</th>
									<th scope="col">Amount</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
							<tbody>
								<%
								User u = (User) session.getAttribute("userobj");
								HeroCartDAOImpl dao = new HeroCartDAOImpl(DBConnect.getConn());
								List<HeroCart> cart=dao.getHeropartByUser(u.getId());
								Double amount=0.00;
								Double totalAmount=0.00;
								for(HeroCart k: cart){
									amount = k.getAmount();
									totalAmount = k.getTotalamount();
								
								
								
								%>
								<tr>
									<th scope="row"><%=k.getPartdescription() %></th>
									<td><%=k.getPartNumber() %></td>
									<td><%=k.getQuantity() %></td>
									<td><%=k.getPrice()  %></td>
									<td><%=k.getAmount()  %></td>
									<td><a href="Heroremove_part?pid=<%=k.getPid()%> && uid=<%=k.getUid() %>" class="btn btn-sm btn-danger"><i
											class="fa-solid fa-trash"></i></a></td>
								</tr>	
								<%}
								%>

								



								<tr>
									<td><h5>Total Amount</h5></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td><%=totalAmount %></td>

								</tr>



							</tbody>
						</table>
					</div>
				</div>
			</div>

			<div class="col-md-6">
				<div class="card">
					<div class="card-body">
						<h3 class="text-center text-success">Your Details for Order</h3>
						<form action="order" method="post">
							<input type="hidden" value="${userobj.id }" name="id">

							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">Name</label> <input type="text"
										name="username" class="form-control" id="inputEmail4"
										value="${userobj.name }" required>
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Email</label> <input type="email"
										name="email" class="form-control" id="inputPassword4"
										value="${userobj.email }" required>
								</div>
							</div>

							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">Phone Number</label> <input
										name="phno" type="number" class="form-control"
										id="inputEmail4" value="${userobj.phno }" required>
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Address</label> <input type="text"
										name="address" class="form-control" id="inputPassword4"
										required>
								</div>
							</div>

							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">Landmark</label> <input type="text"
										name="landmark" class="form-control" id="inputEmail4" required>
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">City</label> <input type="text"
										name="city" class="form-control" id="inputPassword4" required>
								</div>
							</div>

							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">State</label> <input type="text"
										name="state" class="form-control" id="inputEmail4" required>
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Pin code</label> <input type="text"
										name="pincode" class="form-control" id="inputPassword4"
										required>
								</div>
							</div>

							<div class="form-group">
								<label>Payment Mode</label> <select class="form-control"
									name="payment">
									<option value="noselect">--Select--</option>
									<option value="COD">Cash On Delivery</option>
								</select>
							</div>

							<div class="text-center">
								<button class="btn btn-warning">Order Now</button>
								<a href="index.jsp" class="btn btn-success">Continue
									Shopping</a>
							</div>

						</form>

					</div>

				</div>

			</div>


		</div>
	</div>
</body>
</html>




