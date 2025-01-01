<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<title>Add Module Project | Home page</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-6 offset-md-3">

				<form action="op.jsp">
					<div class="card">
						<div class="card-header text-center bg-dark text-white">
							<h3>Provide me the two numbers</h3>
						</div>

						<div class="card-body bg-secondary">
							<div class="form-group">
								<input name="n1" type="number" class="form-control" placeholder="Enter n1">
							</div>

							<div class="form-group">
								<input name="n2" type="number" class="form-control" placeholder="Enter n2">
							</div>
						</div>

						<div class="card-footer text-center bg-dark text-white ">
							<button type="submit" class="btn btn-outline-light">Divide</button>
						</div>
					</div>
				</form>

			</div>
		</div>
	</div>

</body>
</html>