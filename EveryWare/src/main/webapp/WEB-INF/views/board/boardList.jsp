<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Board</title>

<link rel="stylesheet" type="text/css" href="../resources/board/css/default.css" />

<!-- 페이지 이동 스크립트 -->
<script>
function pagingFormSubmit(currentPage) {
	var form = document.getElementById('pagingForm');
	var page = document.getElementById('page');
	page.value = currentPage;
	form.submit();
}
</script>
	
</head>

<body>
<div class="centerdiv">

<c:choose>

	<c:when test="${boardFolder_id==1}">
	<h2>[ 공지사항 ]</h2>
	</c:when>
	
	<c:when test="${boardFolder_id==2}">
	<h2>[ 부서게시판 ]</h2>
	</c:when>
	
	<c:when test="${boardFolder_id==3}">
	<h2>[ 커뮤니티 ]</h2>
	</c:when>

</c:choose>

<br>
<table>
<tr>
	<td class="white">
		전체 : ${navi.totalRecordsCount}
	</td>
	<a href="../board/boardList?boardFolder_id=1">공지사항</a>&nbsp;&nbsp;
	<a href="../board/boardList?boardFolder_id=2">부서게시판</a>&nbsp;&nbsp;
	<a href="../board/boardList?boardFolder_id=3">커뮤니티</a>
	<td class="white" colspan="3"></td>
	<td class="white">
		<input type="button" value="글쓰기" onClick="location.href='write?boardFolder_id=${boardFolder_id}';">
	</td>
	
</tr>
<tr>
	<th>번호</th>
	<th style="width:220px">제목</th>
	<th>작성자</th>
	<th>조회수</th>
	<th>등록일</th>
</tr>

<!-- 반복 시작 -->
<c:forEach var="board" items="${boardlist}">
<tr>
	<td class="center">${board.board_id}</td>
	<td>
		<a href="read?board_id=${board.board_id}">${board.board_title}</a>
	</td>
	<td class="center">${board.user_id}</td>
	<td class="center">${board.board_hits}</td>
	<td>${board.board_date}</td>
</tr>

</c:forEach>        
<!-- 반복 끝 -->
</table>
<br/><br/>

<div id="navigator">
<!-- 페이지 이동 부분 -->                      
	<a href="javascript:pagingFormSubmit(${navi.currentPage - navi.pagePerGroup})">◁◁ </a> &nbsp;&nbsp;
	<a href="javascript:pagingFormSubmit(${navi.currentPage - 1})">◀</a> &nbsp;&nbsp;

	<c:forEach var="counter" begin="${navi.startPageGroup}" end="${navi.endPageGroup}"> 
		<c:if test="${counter == navi.currentPage}"><b></c:if>
			<a href="javascript:pagingFormSubmit(${counter})">${counter}</a>&nbsp;
		<c:if test="${counter == navi.currentPage}"></b></c:if>
	</c:forEach>
	&nbsp;&nbsp;
	<a href="javascript:pagingFormSubmit(${navi.currentPage + 1})">▶</a> &nbsp;&nbsp;
	<a href="javascript:pagingFormSubmit(${navi.currentPage + navi.pagePerGroup})">▷▷</a>

<!-- /페이지 이동 끝 -->                      

<br><br>


<!-- 검색폼 -->
<form id="pagingForm" method="get" action="boardList">
	<input type="hidden" name="page" id="page" />
	제목 : <input type="text"  name="searchText" value="${searchText}" />
	<input type="button" onclick="pagingFormSubmit(1)" value="검색">
</form>
<!-- /검색폼 --> 
</div>

</div>
</body>
</html>
