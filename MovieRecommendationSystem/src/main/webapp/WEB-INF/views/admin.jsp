<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="<c:url value="/resources/JS/admin.js"/>"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
	integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"
	integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V"
	crossorigin="anonymous"></script>
<script type="text/javascript">
	$('.sub-menu ul').hide();
	$(".sub-menu a").click(function() {
		$(this).parent(".sub-menu").children("ul").slideToggle("100");
		$(this).find(".right").toggleClass("fa-caret-up fa-caret-down");
	});
</script>
<style type="text/css">
.box-area {
	position: fixed;
}

.nav2 {
	position: relative;
	width: 250px;
}

.nav2 ul {
	list-style: none;
	margin: 0;
	padding: 0;
}

.nav2 ul li a {
	display: block;
	background: #ebebeb;
	padding: 10px 15px;
	color: #333;
	text-decoration: none;
	-webkit-transition: 0.2s linear;
	-moz-transition: 0.2s linear;
	-ms-transition: 0.2s linear;
	-o-transition: 0.2s linear;
	transition: 0.2s linear;
}

.nav2 ul li a:hover {
	background: #f8f8f8;
	color: #515151;
}

.nav2 ul li a .fa {
	width: 16px;
	text-align: center;
	margin-right: 5px;
	float: right;
}

.nav2 ul ul {
	background-color: #ebebeb;
}

.nav2 ul li ul li a {
	background: #f8f8f8;
	border-left: 4px solid transparent;
	padding: 10px 20px;
}

.nav2 ul li ul li a:hover {
	background: #ebebeb;
	border-left: 4px solid #3498db;
}
</style>
</head>
<body>
	<div class="container-fluid d-flex flex-row">
		<nav class="navbar fixed-top navbar-light bg-light">
			<div class="container-fluid">
				<a class="navbar-brand" href="#">Admin Dashboard</a>
				<form class="d-flex">
					<input class="form-control me-2" type="search" placeholder="Search"
						aria-label="Search" onkeyup="search(this.value)">
					<button class="btn btn-outline-success me-5" type="submit">Search</button>
				</form>
			</div>
		</nav>
		<div class="container-fluid mt-5">
			<div class="row border rounded-1 pt-3 mt-2 d-flex vh-100 box-area">
				<nav class='animated bounceInDown nav2'>
					<ul>
						<li class="sub-menu"><a href='#'>Manage Movies
								<div class="fa fa-caret-down right dropdown-toggle"></div>
						</a>
							<ul>
								<li><a href='newMovie'>Add Movie</a></li>
								<li><a href='viewMovie'>View Movies</a></li>
								<li><a href='viewMovie'>Update Movie</a></li>
								<li><a href='viewMovie'>Delete Movie</a></li>
							</ul></li>

						<li class='sub-menu'><a href='#'>Manage Clients
								<div class="fa fa-caret-down right dropdown-toggle"></div>
						</a>
							<ul>
								<li><a href='#'>View Clients</a></li>
							</ul></li>
					</ul>
				</nav>
			</div>
		</div>
		<body>

		</body>
</html>