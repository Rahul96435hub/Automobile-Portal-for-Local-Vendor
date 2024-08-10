<%@page import="com.entity.HeropartDtls"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.HeropartDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2">
	<%@include file="all_component/navbar.jsp"%>

	<%
	int id = Integer.parseInt(request.getParameter("id"));
	HeropartDAOImpl dao = new HeropartDAOImpl(DBConnect.getConn());
	HeropartDtls h = dao.getHearpartById(id);
	%>

	<div class="container p-5 ">
		<div class="row">
			<div class="col-md-6 text-center p-5 border bg-white">
				<img alt="" src="part/<%=h.getPhotoName()%>"
					style="height: 150px; width: 150px"><br>
				<h4 class="mt-4">
					Part Description:<span class="text-success"><%=h.getPartDescription()%></span>
				</h4>
				<h4>
					part Number:<span class="text-success"><%=h.getPartNumber()%></span>
				</h4>
				<h4>
					part Qty:<span class="text-success"><%=h.getQuantity()%></span>
				</h4>
				<h4>
					Categories:<span class="text-success"><%=h.getCategories()%></span>
				</h4>
			</div>
			<div class="col-md-6 text-center p-5 border bg-white">
				<h2 class="mt-5"><%=h.getPartDescription()%></h2>

				<%
				if ("Dealer".equals(h.getCategories())) {
				%>
				<h5 class="text-primary">Contact To Dealer</h5>
				<h5 class="text-primary">
					<i class="fa-regular fa-envelope-open"></i>Email:<%=h.getEmail()%></h5>
				<%
				}
				%>

				<div class="row">
					<div class="col-md-4 text-danger text-center">
						<i class="fa-solid fa-money-bill-wave fa-2x"></i>
						<p>Cash on Delivery</p>
					</div>
					<div class="col-md-4 text-danger text-center">
						<i class="fa-solid fa-rotate-left fa-2x"></i>
						<p>Return Available</p>
					</div>
					<div class="col-md-4 text-danger text-center">
						<i class="fa-solid fa-truck-fast fa-2x"></i>
						<p>Fast Shipping</p>
					</div>
				</div>

				<%
				if ("Dealer".equals(h.getCategories())) {
				%>
				<div class="text-center p-3">
				
				<td class="col-4 col-md-3 p-0 pt-1">

		<form action="/honda-motorcycle/cart/ajout_panier_parts"
			class="form-inline form-group-qte-parts" id="form_parts"
			method="post" accept-charset="utf-8">
			<input type="hidden" name="csrf_test_name"
				value="766bca13ee51fdbd6ea3a6fc84dc5543" />

			<div class="form-group">

				<input type="hidden" name="id" value="276561" /> <input
					type="hidden" name="vehicule" value="125-MOTO ACE 2018" /> <input
					type="hidden" name="marque" value="honda-motorcycle" /> <input
					type="hidden" name="id_v" value="40972" /> <input type="hidden"
					name="v" value="96050" /> <input type="hidden" name="v_n"
					value="F_01" /> <input type="hidden" name="route" value="cart" />

				<input type="hidden" name="libelle_piece"
					value="SCREW-WASHER, 5X16&lt;br/&gt;125 ACE 2018 CGX125SHH" />

				<!-- ATTENTION !! JS DERIERE, ATTENTION AU CHANGEMENT DE BALISES -->
				<div class="input-group d-flex justify-content-center">
					<button type="button" class="btn btn-default less-btn p-0 ml-4"
						aria-label="less button">
						<i class="fa-solid fa-minus"></i>
					</button>
					<input id="qte_table_parts_276561" name="qte_table_parts"
						class="form-control text-center JS_qte_table p-0 ml-1"
						style="width: 30px; flex: inherit;" value="1" readonly>
					<button type="button" class="btn btn-default more-btn p-0 ml-1"
						aria-label="more button">
						<i class="fa-solid fa-plus "></i>
					</button>
				</div>

			</div>
	</td>
				
				
					<a href="" class="btn btn-success ml-5"><i
						class="fa-solid fa-cart-plus"></i>Add Cart</a> <a href=""
						class="btn btn-danger ml-5"><%=h.getPrice()%><i
						class="fa-solid fa-indian-rupee-sign"></i> </a>

				</div>

				<%
				} else {
				%>
				<div class="text-center p-3">
				
				<td class="col-4 col-md-3 p-0 pt-1">

		<form action="/honda-motorcycle/cart/ajout_panier_parts"
			class="form-inline form-group-qte-parts" id="form_parts"
			method="post" accept-charset="utf-8">
			<input type="hidden" name="csrf_test_name"
				value="766bca13ee51fdbd6ea3a6fc84dc5543" />

			<div class="form-group">

				<input type="hidden" name="id" value="276561" /> <input
					type="hidden" name="vehicule" value="125-MOTO ACE 2018" /> <input
					type="hidden" name="marque" value="honda-motorcycle" /> <input
					type="hidden" name="id_v" value="40972" /> <input type="hidden"
					name="v" value="96050" /> <input type="hidden" name="v_n"
					value="F_01" /> <input type="hidden" name="route" value="cart" />

				<input type="hidden" name="libelle_piece"
					value="SCREW-WASHER, 5X16&lt;br/&gt;125 ACE 2018 CGX125SHH" />

				<!-- ATTENTION !! JS DERIERE, ATTENTION AU CHANGEMENT DE BALISES -->
				<div class="input-group d-flex justify-content-center">
					<button type="button" class="btn btn-default less-btn p-0 ml-4"
						aria-label="less button">
						<i class="fa-solid fa-minus"></i>
					</button>
					<input id="qte_table_parts_276561" name="qte_table_parts"
						class="form-control text-center JS_qte_table p-0 ml-1"
						style="width: 30px; flex: inherit;" value="1" readonly>
					<button type="button" class="btn btn-default more-btn p-0 ml-1"
						aria-label="more button">
						<i class="fa-solid fa-plus "></i>
					</button>
				</div>

			</div>
	</td>
				
				
					<a href="" class="btn btn-primary ml-5"><i
						class="fa-solid fa-cart-plus"></i>Add Cart</a> <a href=""
						class="btn btn-danger ml-5"><%=h.getPrice()%><i
						class="fa-solid fa-indian-rupee-sign"></i> </a>

				</div>
				<%
				}
				%>




			</div>
		</div>
	</div>
	
	

</body>
</html>