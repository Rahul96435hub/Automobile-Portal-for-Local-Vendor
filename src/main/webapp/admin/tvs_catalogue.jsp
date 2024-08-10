<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: e-Parts Catalogue</title>
<%@include file="allCss.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>

	<div class="container mt-2 ">
		<div class="row p-5">
			<div class="card ">
				<div class="col-md-12">
					<div class="card-body">
						<p class="text-center fs-3 text-primary">Image Uplode</p>
						<form action="../tvs_catalogue" method="post" enctype="multipart/form-data">
							<div class="mb-3">
								<label><i class="fa-regular fa-image"></i> Image</label> <input
									type="file" name="file" class="form-control">
							</div>

							<div class="mb-3">
								<label>Remark</label> <input type="text" name="Remark"
									class="form-control">
							</div>
							<div class="text-center">
								<button class="btn btn-primary">Uplode</button>
							</div>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>