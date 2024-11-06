<!doctype html>
<%@page import="com.ty.entity.Employee"%>
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
	<div class="container">

		<form action="update" method="post">
			<%
			Employee employee = (Employee) request.getAttribute("emp");
			%>
			<div class="mb-3">
				<label for="exampleFormControlInput1" class="form-label"></label> <input
					type="hidden" name="eid" class="form-control"
					value="<%=employee.getEid()%>" id="exampleFormControlInput1"
					placeholder="Dinga" required>
			</div>
			
			<div class="mb-3">
				<label for="exampleFormControlInput1" class="form-label"></label> <input
					type="hidden" name="joinDate" class="form-control"
					value="<%=employee.getJoinDate()%>" id="exampleFormControlInput1"
					placeholder="Dinga" required>
			</div>
			
			<div class="mb-3">
				<label for="exampleFormControlInput1" class="form-label"></label> <input
					type="hidden" name="eid" class="form-control"
					value="<%=employee.getEid()%>" id="exampleFormControlInput1"
					placeholder="Dinga" required>
			</div>
			<h1>Update Form</h1>
			<div class="mb-3">
				<label for="exampleFormControlInput1" class="form-label">Name</label>
				<input type="text" name="name" class="form-control"
					id="exampleFormControlInput1" value="<%=employee.getName()%>"
					placeholder="Dinga" required>
			</div>

			<div class="mb-3">
				<label for="exampleFormControlInput2" class="form-label">Email</label>
				<input type="email" name="email" class="form-control"
					id="exampleFormControlInput2" placeholder="name@example.com"
					value="<%=employee.getEmail()%>" required>
			</div>

			<div class="mb-3">
				<label for="exampleFormControlInput3" class="form-label">Phone</label>
				<input type="number" name="phone" class="form-control"
					id="exampleFormControlInput3" placeholder="1234567890"
					value="<%=employee.getPhone()%>" required>
			</div>

			<div class="mb-3">
				<label for="exampleFormControlInput4" class="form-label">Salary</label>
				<input type="number" name="salary" class="form-control"
					id="exampleFormControlInput4" placeholder="40000.0"
					value="<%=employee.getSalary()%>" required>
			</div>

			<button type="submit" class="btn btn-primary">Update</button>

		</form>
	</div>
	<a href="home">Home Page</a>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>