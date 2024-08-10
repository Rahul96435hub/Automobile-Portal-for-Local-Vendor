<%@page import="com.entity.BajajpartDtls"%>
<%@page import="com.DAO.BajajpartDAOImpl"%>
<%@page import="com.entity.HeropartDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.HeropartDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bajaj: parts</title>
<%@include file="all_component/allCss.jsp"%>
<style type="text/css">
.crd-ho:hover {
	background-color: #fcf0f0;
}
</style>
</head>
<body style="background-color: #f7f7f7;">
	<%@include file="all_component/navbar.jsp"%>
	
	
	<div class="container p-2">
		<h3 class="text-center text-dark">Bajaj Parts</h3>
		<div class="row">
			<%
			BajajpartDAOImpl dao = new BajajpartDAOImpl(DBConnect.getConn());
			List<BajajpartDtls> list = dao.getBajajPart();
			for (BajajpartDtls h : list) {
			%>
			<div class="col-md-3 mt-1"> 
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="part/<%=h.getPhotoName()%>"
							Style="width: 100px; heigth: 150px" class="img-thumblin">
						<p>Part Des:<%=h.getPartDescription()%></p>
						<p>Part Num.:<%=h.getPartNumber()%></p>
						<p>Qty:<%=h.getQuantity()%></p>
						<p>Categories:<%=h.getCategories()%></p>
						<div class="row text-center">
							<a href="" class="btn btn-danger btn-sm ml-0"><i
								class="fa-solid fa-cart-shopping"></i>Add cart</a> <a href=""view_details.jsp?pid=<%=h.getPartId() %>""
								class="btn btn-success btn-sm ml-1">View Details</a> <a href=""
								class="btn btn-danger btn-sm ml-1"><%=h.getPrice()%></a>
						</div>

					</div>

				</div>

			</div>
			
			
			<%
			}
			%>
			</div>
</div>
			<div style="margin-top: 150px;">
		<%@include file="all_component/footer.jsp"%></div>
</body>
</html>