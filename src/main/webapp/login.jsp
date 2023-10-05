<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login page</title>
  <link rel="stylesheet" href="./css/loginStyle.css">
  <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.0/sweetalert.min.js"></script>
</head>
<body>
	<input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
    <form method="post" action="login">
      <h1>Login</h1>
      <div class="input-container">
        <div class="input-box">
          <input type="email" name="email" placeholder="E-mail" required>
          <i class='bx bx-envelope'></i>
          <br>
          <input type="password" name="password" placeholder="Password" required>
          <i class='bx bxs-lock-alt' ></i>
          <br>
        </div>
        <div class="remember-forget-container">
          <input type="checkbox" name="checkbox">
          <label for="remember">Remember me</label>
          <a href="#"><p>Forget Password?</p></a>
        </div>
        <button type="submit">Login</button>
        <div class="register">
          <p>Don't have an account?</p>
          <a href="http://localhost:8080/Travel-website/register.jsp">&nbsp;Register</a>
        </div>
      </div>
    </form>
    
    <script type="text/javascript">
    	let status = document.getElementById("status").value;
    	if(status == "error"){
			swal("Sorry","Wrong email or password.", "error");
		}
    </script>
</body>
</html>
