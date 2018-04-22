<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html class="fullscreen-bg">
	<head>
		<title>Login | EveryWare</title>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
		<!-- VENDOR CSS -->
		<link rel="stylesheet" href="resources/assets/vendor/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="resources/assets/vendor/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="resources/assets/vendor/themify-icons/css/themify-icons.css">
		<!-- MAIN CSS -->
		<link rel="stylesheet" href="resources/assets/css/main.css">
	
		<!-- GOOGLE FONTS -->
		<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
		<!-- ICONS -->
		<link rel="apple-touch-icon" sizes="76x76" href="resources/assets/img/apple-icon.png">
		<link rel="icon" type="image/png" sizes="96x96" href="resources/assets/img/favicon.png">
	
		<script src="resources/js/jquery-3.2.1.min.js"></script>
	
	<script>
	$(document).ready(function () {
	   	$('#loginBt').on('click', checkLoginForm);
	});
	
	function checkLoginForm() {
		var id = $('#signin-email').val();
		var password = $('#signin-password').val();

		if (id == '') {
			$('#signin-email').css('margin-bottom', '0px');
			$('#signin-password').css('margin-bottom', '20px');
			$('#id_err').html('아이디를 입력해주세요.');
			$('#id_err').css('color', 'red');
			$('#id_err').show();
			$('#pwd_err').hide();
			$('#login_err').hide();
			
			return false;
		}
		
		if (password == '') {
			$('#signin-email').css('margin-bottom', '0px');
			$('#signin-password').css('margin-bottom', '20px');
			$('#pwd_err').html('비밀번호를 입력해주세요.');
			$('#pwd_err').css('color', 'red');
			$('#pwd_err').show();
			$('#id_err').hide();
			$('#login_err').hide();
			
			return false;
		}
		
	 	$.ajax({
			url: 'user/loginUser',
			type: 'post',
			datatype: 'text',
			data: {id: id, password: password},
			success: function(isCorrect) {
				if (isCorrect == 1) {
					location.href = './index';
				} else {
					$('.login-box #id').css('margin-bottom', '20px');
					$('.login-box #password').css('margin-bottom', '0px');
					$('#login_err').html('아이디 또는 비밀번호를 다시 확인하세요.');
					$('#login_err').css('color', 'red');
					$('#login_err').show();
					$('#id_err').hide();
					$('#pwd_err').hide();
				}
			},
			error: function (e) {
				alert('로그인 실패');
			}
		});
	}
	</script>
	
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
								<form class="form-auth-small">
									<div class="form-group">
										<label for="signin-email" class="control-label sr-only">Id</label>
										<input type="text" class="form-control" id="signin-email" placeholder="사원번호 ">
									</div>
									<div class="form-group">
										<label for="signin-password" class="control-label sr-only">Password</label>
										<input type="password" class="form-control" id="signin-password"  placeholder="Password">
									</div>
									<div class="form-group clearfix">
										<div></div>
									</div>
									<button id ="loginBt" class="btn-lg btn-block btn btn-primary">LOGIN</button>
									<div class="bottom">
										<span id="id_err"></span><br/>
										<span id="pwd_err"></span><br/>
										<span id="login_err"></span><br/>
									</div>
								</form>
							</div>
						</div>
						<div class="right">
							<div class="overlay"></div>
							<div class="content text">
								<h1 class="heading">EveryWare Pro - </h1>
								<p>by The A Seven</p>
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