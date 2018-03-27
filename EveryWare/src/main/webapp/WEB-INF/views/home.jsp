<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
	
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
					location.href = "user/mainForm";
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
<body align="center">
	<div class="container">
		<div class="top">
			<h1 id="title" class="hidden"><span id="logo">EVERYWARE (임시 로그인 화면)</span></h1>
		</div>
		<div class="login-box">
			<form>
			<div class="box-header">
				<h2>로그인</h2>
			</div>
			<br/>
			<input type="text" id="id" name="id" placeholder="아이디">
			<br/>
			<span id="id_err"></span>
			<input type="password" id="password" name="password" placeholder="비밀번호">
			<br/>
			<span id="pwd_err"></span>
			<br/>
			<span id="login_err"></span>
			<br/>
			<button type="button" id="loginBt">로그인</button>
			</form>
		</div>
	</div>

	<div><p>this is the test for chi's git User</p></div>
	
</body>
</html>
