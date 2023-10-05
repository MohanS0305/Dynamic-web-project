<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Register Form</title>
<link rel="stylesheet" href="./css/registerStyle.css">
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'
	rel='stylesheet'>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.0/sweetalert.min.js"></script>
</head>
<body>
	<input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
	<form method="post" action="register">
		<h1>Register</h1>
		<div class="input-box">
			<input type="text" name="name" placeholder="Username" required>
			<i class='bx bxs-user'></i>
		</div>
		<div class="input-box">
			<input type="email" name="email" placeholder="E-mail" required>
			<i class='bx bxl-gmail'></i>
		</div>
		<div class="input-box">
			<input type="password" name="password" placeholder="Password"
				required> <i class='bx bxs-lock-alt'></i>
		</div>
		<div class="input-box">
			<input type="password" name="confirm-password"
				placeholder="Confirm password" required> <i
				class='bx bxs-lock-alt'></i>
		</div>
		<div class="input-box">
			<input type="date" name="dob" placeholder="D-O-B" required> <i
				class='bx bxs-calendar'></i>
		</div>
		<div class="input-box">
			<input type="number" maxlength="10" name="mobileno" placeholder="Mobile no" required>
			<i class='bx bxs-phone'></i>
		</div>
		<div class="register">
			<button type="submit">Register</button>
			<button type="reset">Clear</button>
		</div>
		<div class="user-login">
			<p>
				Already a user? <a href="http://localhost:8080/Travel-website/login.jsp">Login</a>
			</p>
		</div>
	</form>
	
	<script type="text/javascript">
		let status = document.getElementById("status").value;
		if(status == "success") {
			swal("Congrats","Your account has been registered successfully.", "success");
		} 
		if(status == "error"){
			swal("Sorry","Your account has been not registered.", "error");
		}
	</script>
</body>
</html>