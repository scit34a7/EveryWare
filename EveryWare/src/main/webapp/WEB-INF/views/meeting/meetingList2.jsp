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

<style>
* {
	padding:0;
	margin:0
}

html, body{
	height:100%;
}

.left-box {
  background: red;
  float: left;
  width: 70%;
  height: 100%;
}
.right-box {
  background: blue;
  float: right;
  width: 30%;
  height: 100%;
}

.right-box img
{
  max-width:100%; 
  max-height:100%;
  margin:auto;
  display:block;
}
</style>

<script>
var w;
function test1() {
	w = window.open('createRoom', 'newwin', 'width=600, height=600, location=no, menubar=no, resizable=no, status= no, toolbar=no');
}
</script>
</head>
<body>
<div class='left-box' align="center">
<h1>[ 회의 목록 ]</h1>

<div>
<table border="1">

<c:if test="${meetingList != null}">
	<c:forEach var="i" items="${meetingList}">
	<tr>
		<td>${i.meet_title}</td>
		<td>${i.meet_dept}</td>
		<td>${i.meet_etposition}</td>
		<td>${i.meet_maxpeople}</td>
		<td><input type="button" onclick="location.href='meetingRoom3#${i.user_id}'" value="입장"></td> <!-- 나중에 방 고유 id 추가할 것 -->
	</tr>
	</c:forEach>
</c:if>
</table>
</div>

</div>
<div class='right-box' align="center">
<img alt="사원 이미지" src="../resources/meeting/image/bonobono.jpg"><br>
사번: ${sessionScope.userId}<br>
이름: ${userName}<br>
부서: ${userDepartment}<br>
직위: ${userPosition}<br>
<hr>
<input type="button" onclick="location.href='javascript:test1()'" value="회의실 개설"><br>
<input type="button" value="나가기"><br>
</div>
</body>
</html>