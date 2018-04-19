<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
	<title>Everyware</title>
	
	<link href="resources/css/style.css" rel="stylesheet" type="text/css" media="all"/>
	<!-- Custom Theme files -->
	
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
	<meta name="keywords" content="Square login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
	<!--Google Fonts-->
	<link href='//fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
	<!--Google Fonts-->
	
	<script src="resources/js/jquery-3.2.1.min.js"></script>
	
	<script>
	$(document).ready(function () {
	   	$('#loginBt').on('click', checkLoginForm);
	});
	
	function checkLoginForm() {
		var id = $('#id').val();
		var password = $('#password').val();
		
		if (id == '') {
			$('.login-box #id').css('margin-bottom', '0px');
			$('.login-box #password').css('margin-bottom', '20px');
			$('#id_err').html('아이디를 입력해주세요.');
			$('#id_err').css('color', 'red');
			$('#id_err').show();
			$('#pwd_err').hide();
			$('#login_err').hide();
			
			return false;
		}
		
		if (password == '') {
			$('.login-box #password').css('margin-bottom', '0px');
			$('.login-box #id').css('margin-bottom', '20px');
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
			data: {id: id, password: password},
			datatype: 'text',
			success: function(isCorrect) {
				if (isCorrect == 1) {
					location.href = "index";
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
<div class="login-form">
			<div class="top-login">
				<span><img src="resources/image/group.png" alt=""/></span>
			</div>
			<h1>Login</h1>
			<div class="login-top">
			<form>
				<div class="login-ic">
					<i ></i>
					<input type="text"  id="id" name="id" value="User name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'User name';}"/>
					<div class="clear"> </div>
				</div>
				<div class="login-ic">
					<i class="icon"></i>
					<input type="password"  id="password" name="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'password';}"/>
					<div class="clear"> </div>
				</div>
			
				<div class="log-bwn">
					<input type="button" id="loginBt"  value="Login" >
				</div>
				
					<span id="id_err"></span><br/>
					<span id="pwd_err"></span>
					<br/>
					<span id="login_err"></span>
					<br/>
				</form>
			</div>
			<p class="copy">© 2018 Square Login Form. All rights reserved | Design by  <a href="http://w3layouts.com/" target="_blank">W3layouts</a></p>
</div>	
</body>
</html>
