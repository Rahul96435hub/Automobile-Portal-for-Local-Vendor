<%@page import="com.entity.User"%>
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
<title>Hero: parts</title>
<%@include file="all_component/allCss.jsp"%>
<style type="text/css">
.crd-ho:hover {
	background-color: #fcf0f0;
}

 #toast {
	min-width: 300px;
	position: fixed;
	bottom: 30px;
	left: 50%;
	margin-left: -125px;
	background: #333;
	padding: 10px;
	color: white;
	text-align: center;
	z-index: 1;
	font-size: 18px;
	visibility: hidden;
	box-shadow: 0px 0px 100px #000;
}

#toast.display {
	visibility: visible;
	animation: fadeIn 0.5, fadeOut 0.5s 2.5s;
}

@keyframes fadeIn {from { bottom:0;
	opacity: 0;
}

to {
	bottom: 30px;
	opacity: 1;
}

}
@keyframes fadeOut {form { bottom:30px;
	opacity: 1;
}

to {
	bottom: 0;
	opacity: 0;
}
}


</style>
</head>
<body style="background-color: #f7f7f7;">

<c:if test="${not empty addCart }">
<div id="toast"> ${addCart} </div>

<script type="text/javascript">
		showToast();
		function showToast(content)
		{
		    $('#toast').addClass("display");
		    $('#toast').html(content);
		    setTimeout(()=>{
		        $("#toast").removeClass("display");
		    },2000)
		}	
</script>
<c:remove var="addCart" scope="session"/>
</c:if>	




	<%
		User u = (User)session.getAttribute("userobj");
	%>

	<%@include file="all_component/navbar.jsp"%>
	<div class="container p-2">
		<h3 class="text-center text-dark">Hero Parts</h3>
		<div class="row">
			<%
			HeropartDAOImpl dao = new HeropartDAOImpl(DBConnect.getConn());
			List<HeropartDtls> list = dao.getAllHearopart();
			for (HeropartDtls h : list) {
			%>
			<div class="col-md-3 mt-2">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="part/<%=h.getPhotoName()%>"
							Style="width: 100px; heigth: 150px" class="img-thumblin">
						<p>
							Part Des:<span class="text-success"><%=h.getPartDescription()%></span>
						</p>
						<p>
							Part Num.:<span class="text-success"><%=h.getPartNumber()%></span>
						</p>
						<p>
							Qty:<span class="text-success"><%=h.getQuantity()%></span>
						</p>

						<p>
							<%
							if (h.getCategories().equals("Dealer")) {
							%>
							Categories:<%=h.getCategories()%></p>
						<div class="row text-center">
						
						<%
						if (u== null){
							%>
							<a href="login.jsp" class="btn btn-danger btn-sm ml-0"><i
								class="fa-solid fa-cart-shopping"></i>Add cart</a>
							
						<%}else{
							%>
							<a href="herocart?pid=<%=h.getPartId() %>&&uid=<%=u.getId() %>" class="btn btn-danger btn-sm ml-0"><i
								class="fa-solid fa-cart-shopping"></i>Add cart</a>
							
						<%}
						
						%>
							 <a
								href="view_details.jsp?id=<%=h.getPartId()%>"
								class="btn btn-success btn-sm ml-1">View Details</a> <a href=""
								class="btn btn-danger btn-sm ml-1"><span><%=h.getPrice()%></span></a>
						</div>

						<%
						} else {
						%>
						Categories:<%=h.getCategories()%>
						<div class="row text-center">
						<%
						if (u== null){
							%>
							<a href="login.jsp" class="btn btn-danger btn-sm ml-0"><i
								class="fa-solid fa-cart-shopping"></i>Add cart</a>
							
						<%}else{
							%>
							<a href="herocart?pid=<%=h.getPartId() %>&&uid=<%=u.getId() %>" class="btn btn-danger btn-sm ml-0"><i
								class="fa-solid fa-cart-shopping"></i>Add cart</a>
							
						<%}
						
						%>
						
						
							 <a
								href="view_details.jsp?id=<%=h.getPartId()%>"
								class="btn btn-success btn-sm ml-1">View Details</a> <a href=""
								class="btn btn-danger btn-sm ml-1"><span><%=h.getPrice()%></span></a>
						</div>

						<%
						}
						%>




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