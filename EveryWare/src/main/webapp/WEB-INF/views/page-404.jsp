<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
	<head>
		<title>404 Page Not Found | Klorofil Pro - Bootstrap Admin Dashboard Template</title>
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
	<body class="page-error">
		<!-- WRAPPER -->
		<div id="wrapper">
			<div class="vertical-align-wrap">
				<div class="vertical-align-middle">
					<h1>
						<span class="clearfix title">
							<span class="number left">404</span>
							<span class="text">Oops!
								<br/>Page Not Found</span>
						</span>
					</h1>
					<p>The page you were looking for could not be found, please <a href="#">contact us</a> to report this issue.</p>
					<p>You can also use search form below to find the page you are looking for.</p>
					<form class="searchbox">
						<div class="input-group input-group-lg">
							<input class="form-control" type="text">
							<span class="input-group-btn">
								<button class="btn btn-primary" type="button"><i class="fa fa-search"></i>
									<span>Search</span>
								</button>
							</span>
						</div>
					</form>
					<div>
						<a href="javascript:history.go(-1)" class="btn btn-default"><i class="fa fa-arrow-left"></i> <span>Go Back</span></a>
						<a href="index" class="btn btn-default"><i class="fa fa-home"></i> <span>Home</span></a>
					</div>
				</div>
			</div>
		</div>
		<!-- END WRAPPER -->
	</body>
</html>