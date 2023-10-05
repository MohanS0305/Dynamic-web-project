<% 
	if(session.getAttribute("email") == null) {
		response.sendRedirect("login.jsp");
	}
%>

<!DocType html>
	<head>
		<title>Travel Website</title>
		<link rel="stylesheet" href="./css/style.css">
	</head>
	<body>
		<div class="container">
			<nav>
				<img src="./assets/logo.png" class="logo">
				<ul>
					<li><a href="#">Travel Guide</a></li>
					<li><a href="#">Famous Places</a></li>
					<li><a href="#">Contact</a></li>
				</ul>
				<button class="btn"><img src="./assets/icon.png"> Bookings</button>
				<button class="log-btn">
					<a href="logout">Logout</a>
				</button>
			</nav>
			<div class="content">
				<h1>Beautiful<br>places to explore</h1>
				<p>Ensuring that the World Heritage sites sustain their outstanding universal value is an increasingly challenging mission.</p>
				<form>
					<input type="text" placeholder="Country name">
					<button type="submit" class="btn">Search</button>
				</form>
			</div>
			
		</div>
	</body>