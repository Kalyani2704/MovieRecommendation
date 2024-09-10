<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<c:url value="/resources/CSS/login.css"/>">
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
	<div
		class="container-fluid d-flex justify-content-center align-items-center vh-100">
		<div class="row border rounded-5 p-2 shadow box-area">
			<div
				class="col-md-12 rounded-5 p-3 bg-light  justify-content-center align-items-center box">
				<form name='frm' action='validUser' method='POST'>

					<div class="header my-2 text-black text-center">
						<h1>Login or create account</h1>
					</div>
					<div class="row m-5">
						<div class="input-group">
							<input class="email border rounded p-2 w-75 ms-4 mb-3" type='email'
								name='email' value='' placeholder="Enter email"
								style="border: none;" />
						</div>
						<div class="input-group">
							<input class="password border rounded p-2 w-75 ms-4 mb-4" type='password'
								name='password' value='' placeholder="Enter password"
								style="border: none;" />
						</div>
						<div class="input-group">
							<small class="text-end"><a href="#">Forgot password?</a></small>
						</div>
						<div class="input-group">
							<input class="submit rounded-pill ms-5 w-50 p-2 mt-5" type="submit"
								name='s' value='Login'
								style="background-color: darkorange; color: white; border: none;" />
							<%-- ${msg} --%>
						</div>
					</div>
				</form>
				<div class="sign-up text-center">
					<small><a href="register">New User?</a></small>
				</div>
			</div>
		</div>
	</div>
</body>
</html>