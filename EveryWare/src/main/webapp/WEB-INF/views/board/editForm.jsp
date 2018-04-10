<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE HTML>
<html>
<head>
<title>게시판 글 수정</title>
<link rel="stylesheet" type="text/css" href="../resources/board/css/default.css" />

<script>
//글쓰기폼 확인
function formCheck() {
	var board_title = document.getElementById('board_title');
	var board_content = document.getElementById('board_content');
	
	if (board_title.value.length < 2) {
		alert("제목을 입력하세요.");
		board_title.focus();
		board_title.select();
		return false;
	}
	if (board_content.value.length < 2) {
		alert("내용을 입력하세요.");
		board_title.focus();
		board_title.select();
		return false;
	}
	return true;
}
</script>	
</head>
<body>
<div class="centerdiv">

<h2>[ 글수정 ]</h2>

<form id="writeform" action="edit"  method="post" 
	enctype="multipart/form-data" onsubmit="return formCheck();">
	<!-- 폼 전송 시 글번호도 전달 -->
	<input type="hidden" name="board_id" value="${board.board_id }">
	
<table>
<tr>
	<td>제목</td>
	<td>
		<input type="text" name="board_title" id="board_title" style="width:400px;" value="${board.board_title}">
	</td>
</tr>
<tr>
	<td>내용</td> 
	<td>
		<textarea name="board_content" id="board_content" style="width:500px;height:450px;resize:none;">${board.board_content}</textarea>
	</td>
</tr>

<%-- 
<tr>
	<td>파일첨부</td> 
	<td>
		<!-- 새로 첨부할 파일 선택 -->
		<input type="file" name="upload" size="30">
		<!-- 기존에 첨부한 파일이 있는 경우 출력 -->
		${board.originalfile}
	</td>
</tr>

 --%>
<tr>
	<td colspan="2" class="white center">
		<input type="submit" value="수정">
	</td> 
</tr>

</table>
</form>

</div>
</body>
</html>
