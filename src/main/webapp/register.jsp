<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Register Page</title>
	<%@include file="all_component/allcss.jsp" %>
</head>
<body>
	<%@include file="all_component/navbar.jsp" %>

	<div class="container-fluid div-color">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-4">
				
					<!-- Card Header -->
					<div class="card-header text-center text-white bg-custom">
						<i class="fa fa-user-plus fa-3x" aria-hidden="true"></i>
						<h4>Registration</h4>
					</div>

					<!-- Flash Success Message -->
					<%
						String regMsg = (String) session.getAttribute("reg-success");
						if (regMsg != null) {
					%>
					<div class="alert alert-success" role="alert">
						<%= regMsg %> Login <a href="login.jsp">Click Here</a>
					</div>
					<%
							session.removeAttribute("reg-success");
						}
					%>

					<!-- Flash Error Message -->
					<%
						String failedMsg = (String) session.getAttribute("FailedMsg");
						if (failedMsg != null) {
					%>
					<div class="alert alert-danger" role="alert">
						<%= failedMsg %>
					</div>
					<%
							session.removeAttribute("FailedMsg");
						}
					%>

					<!-- Registration Form -->
					<div class="card-body">
						<form action="UserServlet" method="post">
							<div class="form-group">
								<label for="exampleName">Enter Full Name</label>
								<input type="text" class="form-control" id="exampleName" name="fname" required>
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Enter Your Email</label>
								<input type="email" class="form-control" id="exampleInputEmail1" name="uemail" required>
							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Enter Password</label>
								<input type="password" class="form-control" id="exampleInputPassword1" name="upassword" required>
							</div>

							<div class="form-check">
								<input type="checkbox" class="form-check-input" id="exampleCheck1" name="terms" required>
								<label class="form-check-label" for="exampleCheck1">I agree to terms & conditions</label>
							</div>

							<button type="submit" class="btn btn-primary badge-pill btn-block mt-3">
								Register
							</button>
						</form>
					</div> <!-- card-body -->
				</div> <!-- card -->
			</div> <!-- col -->
		</div> <!-- row -->
	</div> <!-- container -->

	<%@include file="all_component/footer.jsp" %>
</body>
</html>
