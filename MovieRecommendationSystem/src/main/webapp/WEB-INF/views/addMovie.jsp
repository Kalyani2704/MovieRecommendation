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
<body>
	<jsp:include page="admin.jsp"></jsp:include>
	<div class="col-md-10 rounded-1 ps-5 pt-5 mt-4 right-box">
		<form name='frm' action='addMovie' method='GET'>
			<div class="col-md-4 mb-3">
				<label for="validationServer01" class="form-label">Movie
					name</label> <input type="text" class="form-control"
					id="validationServer01" value="" required>
			</div>

			<div class="col-md-9 d-flex mb-3">
				<div class="col-md-3 me-5">
					<label for="validationServer03" class="form-label">Language</label> <select
						class="form-select" id="lang_id" required>
						<option selected disabled value="">Choose language...</option>
						<c:forEach var="s" items="${langlist}">
							<option value="">${s.getLanguage()}</option>
						</c:forEach>
					</select>
				</div>

				<div class="col-md-3">
					<label for="validationServer04" class="form-label">Area</label> <select
						class="form-select" id="genre_id" required>
						<option selected disabled value="">Choose genre...</option>
						<c:forEach var="s" items="${glist}">
							<option>${s.getGenre()}</option>
						</c:forEach>
					</select>
				</div>
			</div>
			
			<div class="col-md-4 mb-3">
				<label for="validationServer02" class="form-label">Release
					Year</label> <input type="text" class="form-control"
					id="validationServer02" value="" required>
			</div>

			<div class="col-12 mb-3">
				<button class="btn btn-primary" type="submit">Submit</button>
			</div>
		</form>
	</div>
	</div>
</body>
</html>