<%@page import="com.entity.TVSpartDtls"%>
<%@page import="com.DAO.TVSpartDAOImpl"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: TVS-All-Part</title>
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
				<th scope="col">Part Status</th>
				<th scope="col">Action</th>
			</tr>
		</thead>
		<tbody>
			<%
			TVSpartDAOImpl dao = new TVSpartDAOImpl(DBConnect.getConn());
			List<TVSpartDtls> list = dao.getAllTVSpart();
			for (TVSpartDtls h : list) {
			%>
			<tr>
				<td><%=h.getPartId()%></td>
				<td><img src="../part/<%=h.getPhotoName()%>"
					style="width: 50px; height: 50px"></td>
				<td><%=h.getPartDescription()%></td>
				<td><%=h.getPartNumber()%></td>
				<td><%=h.getQuantity()%></td>
				<td><%=h.getCategories()%></td>
				<td><%=h.getStatus()%></td>

				<td><a href="tvs_editpart.jsp?id=<%=h.getPartId()%>"class="btn btn-sm btn-primary"><i class="fa-solid fa-pen-to-square"></i> Edit</a> 
					<a href="../tvsdelete?id=<%=h.getPartId() %>"class="btn btn-sm btn-danger"><i class="fa-solid fa-trash"></i> Delete</a></td>
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