<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
					<button type="button" class="btn btn-default less-btn p-0"
						aria-label="less button">
						<i class="bi bi-dash"></i>
					</button>
					<input id="qte_table_parts_276561" name="qte_table_parts"
						class="form-control text-center JS_qte_table p-0"
						style="width: 30px; flex: inherit;" value="1" readonly>
					<button type="button" class="btn btn-default more-btn p-0"
						aria-label="more button">
						<i class="bi bi-plus"></i>
					</button>
				</div>

			</div>
	</td>

</body>
</html>