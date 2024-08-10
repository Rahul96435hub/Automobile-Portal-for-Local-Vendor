<%@page import="com.entity.HeropartDtls"%>
<%@page import="java.util.List"%>
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
<title>Admin: Hero-All-Part</title>
<%@include file="allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="navbar.jsp"%>
	
	<c:if test="${empty userobj }">
	<c:redirect url="../login.jsp"/>
	</c:if>
	<h3 class="text-center">Hello Admin</h3>
	
	<c:if test="${not empty succMsg}">
							<h5 class="text-center text-success">${succMsg}</h5>
							<c:remove var="succMsg" scope="session" />
						</c:if>

						<c:if test="${not empty failedMsg}">
							<h5 class="text-center text-danger">${failedMsg}</h5>
							<c:remove var="failedMsg" scope="session" />
						</c:if>
	
	<table class="table table-striped ">
		<thead class="text-light bg-primary">
			<tr>
				<th scope="col">Id</th>
				<th scope="col">Image.</th>
				<th scope="col">Part Description</th>
				<th scope="col">Part Number</th>
				<th scope="col">Quantity</th>
				<th scope="col">Part categories</th>
				<th scope="col">Location</th>
				<th scope="col">Part Status</th>
				<th scope="col">Action</th>
			</tr>
		</thead>
		<tbody>
			<%
			HeropartDAOImpl dao = new HeropartDAOImpl(DBConnect.getConn());
			List<HeropartDtls> list = dao.getAllHearopart();
			for (HeropartDtls h : list) {
			%>
			<tr>
				<td><%=h.getPartId()%></td>
				<td><img src="../part/<%=h.getPhotoName()%>"
					style="width: 50px; height: 50px"></td>
				<td><%=h.getPartDescription()%></td>
				<td><%=h.getPartNumber()%></td>
				<td><%=h.getQuantity()%></td>
				<td><%=h.getCategories()%></td>
				<td></td>
				<td><%=h.getStatus()%></td>

				<td><a href="edit_heropart.jsp?id=<%=h.getPartId()%>"class="btn btn-sm btn-primary"><i class="fa-solid fa-pen-to-square"></i> Edit</a> 
					<a href="../herodelete?id=<%=h.getPartId() %>"class="btn btn-sm btn-danger"><i class="fa-solid fa-trash"></i> Delete</a></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>

	<div style="margin-top: 280px;">
		<%@include file="footer.jsp"%></div>

</body>
</html>