<div class="container-fluid"
	style="height: 10px; background-color: #d32f2f"></div>
<div class="container-fluid p-3 bg-light">
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@page isELIgnored="false"%>

	<div class="row">
		<div class="col-md-3">
			<h4 class="text-danger">Welcome to Madhav Motors</h4>
			<h5 class="text-danger">Puranpur Pilibhit</h5>
		</div>
		<div class="col-md-6">

			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-danger my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>

		<c:if test="${not empty userobj}">
			<div class="col-md-3">
			
				<a href="login.jsp" class="btn btn-success"><i
					class="fas fa-user-plus"></i> ${userobj.name}</a> <a
					href="logout" class="btn btn-primary"> <i
					class="fas fa-sign-in-alt"></i> Logout
				</a>
				
			</div>
		</c:if>
		

		<c:if test="${empty userobj }">
			<div class="col-md-3">
				<a href="login.jsp" class="btn btn-success"><i
					class="fas fa-sign-in-alt"></i> Login</a> <a href="register.jsp"
					class="btn btn-primary"><i class="fas fa-user-plus"></i>
					Register</a>
			</div>
		</c:if>


	</div>
</div>



<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
	<a class="navbar-brand" href="index.jsp"><i
		class="fa-solid fa-house"></i> Home</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link"
				href="service.jsp">Service <span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item active"><a class="nav-link" href="hero.jsp">Hero
					Parts</a></li>
			<li class="nav-item active"><a class="nav-link" href="tvs.jsp">TVS
					Parts</a></li>
			<li class="nav-item active"><a class="nav-link" href="honda.jsp">Honda
					Parts</a></li>
			<li class="nav-item active"><a class="nav-link" href="bajaj.jsp">Bajaj
					Parts</a></li>

		</ul>
		<form class="form-inline my-2 my-lg-0 ">
		<a href="cart.jsp" class="btn btn-light my-2 my-sm-0 " type="submit">
				<i class="fa-solid fa-cart-plus text-info"></i> Cart
			</a>
			<button class="btn btn-light my-2 my-sm-0 ml-2 " type="submit">
				<i class="fa-solid fa-gear text-secondary"></i> Setting
			</button>
			<button class="btn btn-light my-2 my-sm-0 ml-2" type="submit">
				<i class="fa-solid fa-phone"></i> Contact Us
			</button>
		</form>


	</div>
</nav>