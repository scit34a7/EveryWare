<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>메인화면</title>

<script>
var w;
function test1() {
	w = window.open('../meet/meetingList', 'MeetingList', 'width=1000, height=600, location=no, menubar=no, resizable=no, status= no, toolbar=no');
}
</script>
</head>
<body>
<h1>메인화면</h1>
<p><a href="../meet/meetingList">회의실 화면</a></p>
<input type="button" onclick="location.href='javascript:test1()'" value="회의실"><br>


${sessionScope.userId}(${userName})
${sessionScope.userDepartment}(${userPosition})
</body>
</html>