<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="movrec.model.Movie"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Movies</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
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
	<jsp:include page="admin.jsp"></jsp:include>
	<div class="col-md-9 rounded-1 pt-5 mt-4 me-5 right-box">
		<h1>View Hotels</h1>
		<br>
		<table class="table table-striped">
			<tr class="table menu text-center">
				<th>Sr No.</th>
				<th>Movie Name</th>
				<th>Language</th>
				<th>Platform</th>
				<th>Genre</th>
				<th>Plot</th>
				<th>Ratings</th>
				<th>LaunchYear</th>
				<th>Action</th>
			</tr>
			<c:forEach var="m" items="${list}">
				<tr>
					<td>${m.getMovieId()}</td>
					<td>${m.getMovieName()}</td>
					<td>${m.getLanguage()}</td>
					<td>${m.getPlatform()}</td>
					<td>${m.getGenre()}</td>
					<td>${m.getPlot()}</td>
					<td>${m.getRatingValue()}</td>
					<td>${m.getLaunchYear()}</td>
					<td><a href="delMovieById?hotel_id=${m.getMovieId()}">DELETE</a>/<a
						href="updtMovieById?hotel_id=${m.getMovieId()}">UPDATE</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	</div>
</body>
</html>