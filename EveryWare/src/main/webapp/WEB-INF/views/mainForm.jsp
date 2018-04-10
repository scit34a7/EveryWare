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

<p><a href="../meet/annyangTest">음성 테스트</a>

<p><a href="../approval/approvalList">전자결재</a></p>

<p><a href="../board/boardList?boardFolder_id=1">게시판</a></p>

<p><a href="../support/supportList">업무지원</a></p>

<p><a href="../user/update">개인정보수정</a></p>
<p><a href="../user/userList">주소록(검색)</a></p>
<p><a href="../user/logout">로그아웃</a></p>


${sessionScope.userId}(${userName})
${sessionScope.userDepartment}(${userPosition})
</body>
</html>