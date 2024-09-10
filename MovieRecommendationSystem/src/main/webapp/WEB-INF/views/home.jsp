<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE beans PUBLIC "-//SPRING//DTD BEAN//EN"
		"http://www.springframework.org/dtd/spring-beans.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MovRec</title>
<link rel="stylesheet" href="<c:url value="/resources/CSS/home.css"/>">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
	integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
	integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
	crossorigin="anonymous"></script>
</head>
<body>
	<header>
	<div class="navbar">
		<div class="nav-logo">
			<div class="logo"></div>
		</div>

		<div class="menu">
			<i class="fa-solid fa-bars"></i> All
		</div>
		<div class="nav-search">
			<select class="search-select">
				<option>All</option>
			</select> <input placeholder="Search movieCLUB" class="search-input">
			<div class="search-icon">
				<i class="fa-solid fa-magnifying-glass"></i>
			</div>
		</div>
		<div class="line"></div>

		<div class="watchlist">
			<i class="fa-regular fa-bookmark"></i> Watchlist
		</div>
		<div class="signin">
		<a href="login">Sign In</a></div>
	</div>
	</header>

	<div class="hero">
		<div class="hero-content">
			<h2>Welcome to movieCLUB</h2>
			<p>Your ultimate destination for movie reviews, ratings, and
				more!</p>
			<a href="#" class="btn">Explore Now</a>
		</div>
	</div>

	<div class="view-sec">

		<div class="box">
			<img src="<c:url value="/resources/images/546.jpg"/>" class="box-img">
			<h4>Aashiqi 2</h4>
		</div>

		<div class="box">
		<img src="<c:url value="/resources/images/box2.jpg"/>" class="box-img">
			<h4>Yeh Jawaani Hai Deewani</h4>
		</div>

		<div class="box">
		<img src="<c:url value="/resources/images/box3.jpg"/>" class="box-img">
			<h4>Zindagi Na Milegi Dobara</h4>
		</div>

		<div class="box">
		<img src="<c:url value="/resources/images/box5.jpg"/>" class="box-img">
			<h4>Kho Gaye Hum Kahan</h4>
		</div>

		<div class="box">
		<img src="<c:url value="/resources/images/box4.jpg"/>" class="box-img">
			<h4>JAB WE MET</h4>
		</div>

		<div class="box">
		<img src="<c:url value="/resources/images/box6.jpg"/>" class="box-img">
			<h4>Sonu Ke Titu Ki Sweety</h4>
		</div>

		<div class="box">
		<img src="<c:url value="/resources/images/753.jpg"/>" class="box-img">
			<h4>Deadpool</h4>
		</div>

		<div class="box">
		<img src="<c:url value="/resources/images/box9.jpg"/>" class="box-img">
			<h4>La La Land</h4>
		</div>

	</div>

	<footer>
	<div class="foot-panel1">
		<div class="foot-cont">
			<div class="insta">
				<i class="fa-brands fa-instagram"></i> movieCLUB
			</div>
			<div class="yt">
				<i class="fa-brands fa-youtube"></i> movieCLUB
			</div>
			<div class="fb">
				<i class="fa-brands fa-facebook"></i> movieCLUB
			</div>
		</div>
	</div>

	<div class="foot-panel2">© 2024 movieCLUB. All rights reserved.</div>

	</footer>
</body>

</html>