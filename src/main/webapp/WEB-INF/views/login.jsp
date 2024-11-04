<%@page isELIgnored="false"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap demo</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>
<body>
	<h1>Login Form</h1>
	<h6>${msg}</h6>
	<div class="container">
		<form action="login" method="post">
			<div class="mb-3">
				<label for="exampleFormControlInput2" class="form-label">Email</label>
				<input type="email" name="email" class="form-control"
					id="exampleFormControlInput2" placeholder="name@example.com"
					required>
			</div>

			<div class="mb-3">
				<label for="exampleFormControlInput5" class="form-label">Password</label>
				<input type="password" name="password" class="form-control"
					id="exampleFormControlInput5" placeholder="dinga@123" required>
			</div>

			<button type="submit" class="btn btn-primary">Login</button>

		</form>
	</div>
	<a href="/">Click here to Register</a>

	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>