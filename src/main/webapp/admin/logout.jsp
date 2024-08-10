<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: Logout</title>
<%@include file="allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
<%@include file="navbar.jsp"%>
<div class="modal fade" id="exampleModalCenter" tabindex="-1"
	role="dialog" aria-labelledby="exampleModalCenterTitle"
	aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLongTitle"></h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
			<div class="text-center">
			<h4>Do You Want logout</h4>
			<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				<a href= "../logout" type="button" class="btn btn-primary text-white">Logout</a>
			</div>
			</div>
			<div class="modal-footer">
				
			</div>
		</div>
	</div>
</div>


</body>
</html>