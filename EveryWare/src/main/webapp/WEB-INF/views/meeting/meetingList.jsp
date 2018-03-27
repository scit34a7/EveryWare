<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회의실 목록</title>

<script>
var w;
function test1() {
	w = window.open('createRoom', 'newwin', 'width=600, height=600, location=no, menubar=no, resizable=no, status= no, toolbar=no');
}
</script>
</head>
<body>
<h1>[ 회의실 테스트 ]</h1>
<input type="button" onclick="location.href='createRoom'" value="회의실 개설">
<input type="button" onclick="location.href='joinRoom'"value="회의실 입장">

<form method="get" action="test1">
    <input type="hidden" id="enter" name="enter" value="create" />
    <input type="submit" value="create room"/>
</form>

<form method="get" action="test1">
    <input type="hidden" id="enter" name="enter" value="join" />
    <input type="submit" value="join room"/>
</form>

<p><a href="test1">TEST1</a></p>
<p><a href="test2">TEST2</a></p>

<p><a href="javascript:test1()">개설</a></p>
</body>
</html>