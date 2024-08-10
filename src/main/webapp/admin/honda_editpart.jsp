<%@page import="com.entity.HondapartDtls"%>
<%@page import="com.DAO.HONDApartDAOImpl"%>
<%@page import="com.entity.HeropartDtls"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.HeropartDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: HONDA_Edit_Part</title>
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
						<h4 class="text-center">HONDA Edit Part</h4>
						
						<%
						int id = Integer.parseInt(request.getParameter("id"));
						HONDApartDAOImpl dao = new HONDApartDAOImpl(DBConnect.getConn());
						HondapartDtls h = dao.getHONDApartById(id);
						%>
						
						<form action="../edithondapart " method="post">	
							<input type= "hidden" name="id" value="<%=h.getPartId() %>">

							<div class="form-group">
								<label for="exampleInputEmail1">Part Description*</label> <input
									name="pdes" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp" value="<%=h.getPartDescription()%>">

							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Part Number*</label> <input
									name="pnumber" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp" value="<%=h.getPartNumber()%>">

							</div>
							
							<div class="form-group">
								<label for="exampleInputEmail1">Quantity*</label> <input
									name="qun" type="number" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp" value="<%=h.getQuantity()%>">

							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Price*</label> <input
									name="price" type="number" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp" value="<%=h.getPrice()%>">

							</div>

							

							<div class="form-group">
						<label for="exampleInputEmail1">Part Status*</label> <select
							id="exampleInputEmail1 " name="status" class="form-control">
							<%
							if ("Active".equals(h.getStatus())) {
							%>
							<option value="Active">Active</option>
							<option value="Inactive">Inactive</option>
							<%
							} else {
							%>
							<option value="Inactive">Inactive</option>
							<option value="Active">Active</option>
							<%
							}
							%>
						</select>
					</div>
					<button type="submit" class="btn btn-primary">Update</button>
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