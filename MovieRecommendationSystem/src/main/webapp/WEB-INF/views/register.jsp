<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		<form name='frm' action='addUser' method='GET'>
			<div class="row align-items-center">
				<div class="header m-2 ps-4 text-black">
					<h1>Sign Up</h1>
				</div>
				<select class="form-select w-50 mb-4 ms-5" aria-label="Default select example" name="typeid">
					<option selected>user type</option>
					<option value="1">User</option>
					<option value="2">Admin</option>	
				</select>
				<div class="input-group mb-4 ms-5">
					<label>First Name</label> <input
						class="firstname border rounded w-50 p-2" type='text' name='fname'
						value='' style="border: none;" />
				</div>
				<div class="input-group mb-4 ms-5">
					<label>Last Name</label> <input
						class="lastname border rounded w-50 p-2" type='text' name='lname'
						style="border: none;" />
				</div>
				<div class="input-group mb-4 ms-5">
					<label>Contact</label> <input
						class="contact border rounded w-50 p-2" type='number'
						name='contact' style="border: none;" />
				</div>
				<div class="input-group mb-4 ms-5">
					<label>Email</label> <input class="email border rounded w-50 p-2"
						type='email' name='email' value='' style="border: none;" />
				</div>
				<div class="input-group mb-2 ms-5">
					<label>Password</label> <input
						class="password border rounded w-50 p-2" type='password'
						name='password' value='' style="border: none;" />
				</div>
				<!-- <div class="input-group mb-2 ms-5">
					<label>Confirm password</label> <input
						class="confirmpass border rounded w-50 p-2" type='password'
						name='confirmpass' value='' style="border: none;" />
				</div> -->
				<div class="input-group mb-4 ms-5">
					<input class="submit rounded-pill w-25 ms-5 p-2" type="submit"
						name='s' value='Sign Up'
						style="background-color: darkorange; color: white; border: none;" />
					${msg}
				</div>
			</div>
		</form>
	</div>
</body>
</html>