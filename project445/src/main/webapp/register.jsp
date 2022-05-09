<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<%@include file="allcomponent/allCss.jsp" %>
</head>
<body style ="background-color:#f0f1f2; ">
<%@include file="allcomponent/navbar.jsp" %>

	<div class="container p-2">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
					<h4 class="text-center" >Registration Page</h4>


						<form>
						<div class="form-group">
								<label for="exampleInputEmail1">Enter Full name </label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required="required">
								
							</div>
							
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter email" required="required">
								
							</div>
							
							<div class="form-group">
								<label for="exampleInputEmail1">Phone No</label> <input
									type="number" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp"  required="required" >
								
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"  required="required"
									placeholder="Password">
							</div>
							<div class="form-check">
								<input type="checkbox" class="form-check-input"
									id="exampleCheck1"> <label class="form-check-label"
									for="exampleCheck1">Check me out</label>
							</div>
							<div class=" text-center">
							<button type="submit" class="btn btn-primary">Submit</button>
												</div>
						</form>
					
					</div>
				</div>

			</div>

		</div>
	</div>

<%@include file="allcomponent/footer.jsp" %>










</body>
</html>