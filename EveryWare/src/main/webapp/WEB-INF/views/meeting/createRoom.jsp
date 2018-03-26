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
회의 제목
<p><input type="text" id="title" name="title"></p>
회의 시간
<p><input type="text" id="time" name="time"></p>
입장 가능 직급
<p>
	<select id="position" name="position">
		<option value="과장">과장 이상</option>
		<option value="사원">사원 이상</option>
		<option value="제한없음">제한없음</option>
	</select>
</p>
입장 가능 부서
<p>체크박스?</p>
입장 가능 인원
<p>
	<select id="people" name="people">
		<option value="1">1</option>
		<option value="2">2</option>
		<option value="3">3</option>
	</select>
</p>

<input type="button" value="개설">
<input type="button" value="취소">
</body>
</html>