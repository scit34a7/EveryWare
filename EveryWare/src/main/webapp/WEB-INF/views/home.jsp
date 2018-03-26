<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>
ccc
<!-- 로그인 -->
<div>
	<c:choose>
		<c:when test="${login_user}">
		
		</c:when>
	
	</c:choose>
	<form action="user/login" method="post">
		id<input type="text" id="user_id">	<br>
		pw<input type="password" id="user_pw">	<br>
		<input type="submit" value="로그인">
	</form>
</div>
<!-- /로그인 -->



<p><a href="meet/meetingList">회의실 화면</a></p>
</body>
</html>
