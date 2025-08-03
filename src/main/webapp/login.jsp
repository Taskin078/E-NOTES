<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body>

	<%@include file="all_component/navbar.jsp"%>

	<div class="container-fluid div-color">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-4">
					<div class="card-header text-center text-white bg-custom">
						<i class="fa fa-user-plus fa-3x" aria-hidden="true"></i>
						<h4>Login Page</h4>
					</div>

					<%
					String loginMsg = (String) session.getAttribute("loginMsg");
					if (loginMsg != null) {
					%>
					<div class="alert alert-danger text-center" role="alert"><%=loginMsg%></div>
					<%
					session.removeAttribute("loginMsg");
					}
					%>

					<%
					String authMsg = (String) session.getAttribute("login-error");
					if (authMsg != null) {
					%>
					<div class="alert alert-danger" role="alert">
						<%=authMsg%>
					</div>
					<%
					session.removeAttribute("login-error");
					}
					%>
					
					<%
					String lgMsg = (String) session.getAttribute("logout Msg");
					if (lgMsg != null) {
					%>
					<div class="alert alert-danger" role="alert">
						<%=lgMsg%>
					</div>
					<%
					session.removeAttribute("logout Msg");
					}
					%>

					<div class="card-body">
						<form action="LoginServlet" method="post">
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									name="uemail" required>
							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									name="upassword" required>
							</div>

							<div class="form-check">
								<input type="checkbox" class="form-check-input"
									id="exampleCheck1" name="remember"> <label
									class="form-check-label" for="exampleCheck1">Remember
									me</label>
							</div>

							<button type="submit"
								class="btn btn-primary badge-pill btn-block mt-3">Login</button>
						</form>
					</div>
					<!-- card-body -->
				</div>
				<!-- card -->
			</div>
			<!-- col -->
		</div>
		<!-- row -->
	</div>
	<!-- container -->

	<%@include file="all_component/footer.jsp"%>
</body>
</html>
