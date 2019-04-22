<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<form:form action="result.htm" method="POST" commandName="lgCmd">
    <!DOCTYPE HTML>
<html>
	<head>
		<title>ISR-Industries</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="login/images/icons/favicon.ico"/>
<!--===============================================================================================-->
		
		<style><%@include file="login/css/util.css"%></style>
		<style><%@include file="login/css/main.css"%></style>
		<style><%@include file="login/vendor/bootstrap/css/bootstrap.min.css"%></style>
		<style><%@include file="login/fonts/font-awesome-4.7.0/css/font-awesome.min.css"%></style>
		<style><%@include file="login/fonts/Linearicons-Free-v1.0.0/icon-font.min.css"%></style>
		<style><%@include file="login/vendor/animate/animate.css"%></style>
		<style><%@include file="login/vendor/css-hamburgers/hamburgers.min.css"%></style>
		<style><%@include file="login/vendor/select2/select2.min.css"%></style>

</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-l-50 p-r-50 p-t-77 p-b-30">
				<form class="login100-form validate-form">
					<span class="login100-form-title p-b-55">
						<b>Login Medicines</b>
					</span>
					   
					<div class="wrap-input100 validate-input m-b-16" data-validate = "Valid email is required: ex@abc.xyz">
						<form:input path="user" class="input100" type="text" placeholder="Email"/>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<span class="lnr lnr-envelope"></span>
						</span>
					</div>
						
					<div class="wrap-input100 validate-input m-b-16" data-validate = "Password is required">
						<form:input path="pwd" class="input100" type="password" placeholder="Password"/>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<span class="lnr lnr-lock"></span>
						</span>
					</div>
						
					<div class="contact100-form-checkbox m-l-4">
						<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
						<label class="label-checkbox100" for="ckb1">
							Remember me
						</label>
					</div>
					
					
					<div class="container-login100-form-btn p-t-25">
						<input type="submit" value="Login" class="login100-form-btn"/>
					</div>
					
					

					<div class="text-center w-full p-t-42 p-b-22">
						<span class="txt1">
							Or login with
						</span>
					</div>

					<a href="https://www.facebook.com/" class="btn-face m-b-10">
						<i class="fa fa-facebook-official"></i>
						Facebook
					</a>

					<a href="https://www.google.com/" class="btn-google m-b-10">
						<img src="images/icon-google.png" alt="GOOGLE">
						Google
					</a>

					<div class="text-center w-full p-t-115">
						<span class="txt1">
							Not a member?
						</span>

						<a class="txt1 bo1 hov1" href="#">
							Sign up now							
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	
		<script><%@include file="login/vendor/jquery/jquery-3.2.1.min.js"%></script>
		<script><%@include file="login/vendor/bootstrap/js/popper.js"%></script>
		<script><%@include file="login/vendor/bootstrap/js/bootstrap.min.js"%></script>
		<script><%@include file="login/vendor/select2/select2.min.js"%></script>
		<script><%@include file="login/js/main.js"%></script>
	
</body>
</html>

</form:form> 














