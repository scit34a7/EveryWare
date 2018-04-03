<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html class="fullscreen-bg">
	<head>
		<title>Login | Klorofil Pro - Bootstrap Admin Dashboard Template</title>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
		<!-- VENDOR CSS -->
		<link rel="stylesheet" href="resources/assets/vendor/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="resources/assets/vendor/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="resources/assets/vendor/themify-icons/css/themify-icons.css">
		<!-- MAIN CSS -->
		<link rel="stylesheet" href="resources/assets/css/main.css">
		<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
		<link rel="stylesheet" href="resources/assets/css/demo.css">
		<!-- GOOGLE FONTS -->
		<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
		<!-- ICONS -->
		<link rel="apple-touch-icon" sizes="76x76" href="resources/assets/img/apple-icon.png">
		<link rel="icon" type="image/png" sizes="96x96" href="resources/assets/img/favicon.png">
	</head>
	<body>
		<!-- WRAPPER -->
		<div id="wrapper">
			<div class="vertical-align-wrap">
				<div class="vertical-align-middle">
					<div class="auth-box ">
						<div class="left">
							<div class="content">
								<div class="header">
									<div class="logo text-center">
										<img src="resources/assets/img/logo-dark.png" alt="Klorofil Logo">
									</div>
									<p class="lead">Login to your account</p>
								</div>
								<form class="form-auth-small" action="index.php">
									<div class="form-group">
										<label for="signin-email" class="control-label sr-only">Email</label>
										<input type="email" class="form-control" id="signin-email" value="samuel.gold@domain.com" placeholder="Email">
									</div>
									<div class="form-group">
										<label for="signin-password" class="control-label sr-only">Password</label>
										<input type="password" class="form-control" id="signin-password" value="thisisthepassword" placeholder="Password">
									</div>
									<div class="form-group clearfix">
										<label class="fancy-checkbox element-left custom-bgcolor-blue">
											<input type="checkbox">
											<span class="text-muted">Remember me</span>
										</label>
										<span class="helper-text element-right">Don't have an account? <a href="page-register">Register</a></span>
									</div>
									<button type="submit" class="btn btn-primary btn-lg btn-block">LOGIN</button>
									<div class="bottom">
										<span class="helper-text"><i class="fa fa-lock"></i> <a href="page-forgot-password">Forgot password?</a></span>
									</div>
								</form>
							</div>
						</div>
						<div class="right">
							<div class="overlay"></div>
							<div class="content text">
								<h1 class="heading">Klorofil Pro - Bootstrap dashboard template</h1>
								<p>by The Develovers</p>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>
		<!-- END WRAPPER -->
	</body>
</html>