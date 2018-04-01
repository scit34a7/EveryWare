<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주소록</title>

<link rel="stylesheet" type="text/css" href="../resources/board/css/default.css" />

<!-- 페이지 이동 스크립트  -->
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
<h2>[ 사원 주소록 ]</h2>

<br>
<table>
<tr>
	<td class="white">
		사원 수 : ${navi.totalRecordsCount}
	</td>
	
</tr>
<tr>
	<th>사번</th>
	<th>이름</th>
	<th>부서</th>
	<th>직위</th>
	<th>연락처</th>
</tr>

<!-- 반복 시작 -->
<c:forEach var="user" items="${userList}">
<tr>
	<td class="center">${user.user_id}</td>
	<td class="center">${user.user_name}</td>
	<td class="center">${user.dept_name}</td>
	<td class="center">${user.position_name}</td>
	<td class="center">${user.user_phone}</td>
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
<form id="pagingForm" method="get" action="userList">
	<input type="hidden" name="page" id="page" />
	이름 : <input type="text"  name="searchText" value="${searchText}" />
	<input type="button" onclick="pagingFormSubmit(1)" value="검색">
</form>
<!-- /검색폼 --> 
</div>

</div>
</body>
</html>
