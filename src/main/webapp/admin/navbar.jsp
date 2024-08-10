<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<div class="container-fluid"
	style="height: 10px; background-color: #d32f2f;;"></div>
<div class="container-fluid p-3 bg-light">
	<div class="row">
		<div class="col-md-3">
			<h3 class=text-danger>Madhav Motors</h3>
			
		</div>
		<div class="col-md-6">
			<form class="form-inline my-2 my-lg-0" action ="search.jsp" method ="post">
				<input class="form-control mr-sm-2" type="search" name ="ch"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-danger my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>


		<div class="col-md-3">
			<c:if test="${not empty userobj }">
				<a  href="home.jsp"class="btn btn-success text-white"><i
					class="fa-solid fa-user"></i> ${userobj.name }</a>
				<a data-toggle="modal" data-target="#exampleModalCenter"
					class="btn btn-primary text-white"><i
					class="fa-solid fa-right-to-bracket"></i> Logout</a>
			</c:if>
			<c:if test="${empty userobj }">
				<a href="../login.jsp " class="btn btn-success"><i
					class="fa-solid fa-right-to-bracket"></i>Login</a>
				<a href="../register.jsp" class="btn btn-primary text-white"><i
					class="fa-solid fa-user-plus"></i> Register</a>
			</c:if>
		</div>
	</div>
</div>

<!-- logout model-->
<!-- Modal -->
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
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<a href="../logout" type="button"
						class="btn btn-primary text-white">Logout</a>
				</div>
			</div>
			<div class="modal-footer"></div>
		</div>
	</div>
</div>

<!-- end logout model -->


<nav class="navbar navbar-expand-lg navbar-dark bg-danger">
	<a class="btn btn-light my-2 my-sm-0 ml-1" href="../index.jsp"><i
		class="fa-solid fa-house"></i> Home</a>


	<div class="collapse navbar-collapse" id="navbarSupportedContent">


		<form class="form-inline my-2 my-lg-0 ">
			<a href="order.jsp" class="btn btn-light my-2 my-sm-0 ml-1 " type="submit">
			<i class="fa-solid fa-box-open text-warning"></i> Order</a>
			<button class="btn btn-light my-2 my-sm-0 ml-1" type="submit">
				<i class="fa-solid fa-address-book text-success"></i> Contacts
			</button>

			<button class="btn btn-light my-2 my-sm-0 ml-1" type="submit">
				<i class="fa-solid fa-gear"></i> Activities
			</button>

			<a class="btn btn-light my-2 my-sm-0 ml-1" href="vehicle.jsp" type="submit">
				<i class="fa-solid fa-motorcycle text-danger"></i> Vehicle
			</a>

			<a href="service_req.jsp" class="btn btn-light my-2 my-sm-0 ml-1" type="submit">
				<i class="fa-solid fa-screwdriver-wrench text-primary"></i> Service Request
			</a>
			
			<button class="btn btn-light my-2 my-sm-0 ml-1" type="submit">
				<i class="fa-solid fa-screwdriver-wrench text-primary"></i> Service History
			</button>
		</form>


	</div>
</nav>

<nav class="navbar navbar-expand-lg navbar-dark bg-secondary p-1">


	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">


			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"><i class="fa-solid fa-list text-danger"></i>
			</a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="#">Job Card#</a> <a
						class="dropdown-item" href="#">Status</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">Home</a>
				</div></li>
		</ul>
		
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto" p-1>
			
			<li class="nav-item active"><a class="nav-link" href="hero_add_part.jsp">Hero
					Parts</a></li>
			<li class="nav-item active"><a class="nav-link" href="tvs_home.jsp">TVS
					Parts</a></li>
			<li class="nav-item active"><a class="nav-link" href="honda_home.jsp">Honda
					Parts</a></li>
			<li class="nav-item active"><a class="nav-link" href="bajaj_home.jsp">Bajaj
					Parts</a></li>

		</ul>
		<form class="form-inline my-2 my-lg-0 ">
			<button class="btn btn-light my-2 my-sm-0 " type="submit">
				<i class="fa-solid fa-gear"></i> Setting
			</button>
			<button class="btn btn-light my-2 my-sm-0 ml-2" type="submit">
				<i class="fa-solid fa-phone"></i> Contact Us
			</button>
		</form>


	</div>
		
		
		
		<a href="job_card.jsp" class="btn btn-danger ml-2  " role="button"
			aria-pressed="true"><i class="fa-solid fa-plus"></i></a>


		<form class="form-inline lg-2 ml-2 ">
			<input class="form-control mr-sm-2" type="search"
				placeholder="Search" aria-label="Search">
			<button class="btn btn-outline-danger my-2 my-sm-0" type="submit">
				<i class="fa-solid fa-magnifying-glass text-light"></i>
			</button>
		</form>
	</div>
</nav>

