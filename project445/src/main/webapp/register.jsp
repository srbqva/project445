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
					<h3 class="text-center">Create Account</h3>
					
<form name="loginForm" action="CreateAccount.jsp" method="POST">

<div class="form-group">
    <label for="exampleInputName1">Enter your user name:</label>
    <input type="text" name="text1" class="form-control" id="exampleInputName1" >
   
  </div>
  
  <div class="form-group">
    <label for="exampleInputPhoneNumber1">Enter your phone number:</label>
    <input type="text" name="text2" class="form-control" id="exampleInputPhoneNumber1" required="required">
   
  </div>
  
  
  <div class="form-group">
    <label for="exampleInputEmail1">Enter your email address</label>
    <input type="email" name="text3" class="form-control" id="exampleInputEmail1" 
    aria-describedby="emailHelp" required="required" >
   
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Enter your password</label>
    <input type="password" name="text4" class="form-control" 
    id="exampleInputPassword1" required="required">
  </div>
  
 </form>
 
 <div class=" text-center">
 <form action="index.jsp"> 
  <button type="submit" class="btn btn-primary" onclick="Validate()">Register</button><br>
     </form>
     <a href="login.jsp">Login</a>
      </div>
					
					</div>
				</div>

			</div>

		</div>
	</div>

<%@include file="allcomponent/footer.jsp" %>




<script type="text/javascript">


function Validate()
{
var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
var letters = /^[A-Za-z]+$/;
var phoneno = /^\d{10}$/;
const email = document.getElementById("exampleInputEmail1");
const name = document.getElementById("exampleInputName1");
const phonenumber = document.getElementById("exampleInputPhoneNumber1");
const passwordLen = document.getElementById("exampleInputPassword1").value.length;

if(email==null || name==null || phonenumber==null || passwordLen==null ){
	alert("Please fill all required fields.");
	return false;
}else{
	if(!name.value.match(letters))
	{
		alert("Name must have alphabet characters only");
		document.form.text1.focus();
		return false;
	}
	if(!phonenumber.value.match(phoneno)){
		 alert("Not a valid Phone Number");
		 document.form.text2.focus();
	     return false;
	}
	if(!email.value.match(mailformat)){
		alert("You have entered an invalid email address!");
		document.form.text3.focus();
		return false;
		}
	if(passwordLen < 8){
		alert("Password length should be 8 characters at least");
		document.form.text4.focus();
		return false;
	}
return true;

	
}

}

</script>





</body>
</html>