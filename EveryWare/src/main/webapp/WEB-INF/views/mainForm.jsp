<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>메인화면</h1>
<p><a href="../meet/meetingList">회의실 화면</a></p>
<p><a href="../board/boardList">게시판</a></p>
<p><a href="../user/update">개인정보수정</a></p>
<p><a href="../user/logout">로그아웃</a></p>


<!-- <p><a href="../user/join">사원정보등록</a></p> -->

${sessionScope.userId}(${userName})
${sessionScope.userDepartment}(${userPosition})
</body>
</html>