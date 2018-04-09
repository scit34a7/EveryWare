<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.a7.everyware.user.vo.UserVO" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>중복확인</title>
<script type="text/javascript">
//ID 중복 검색폼 확인
function formCheck() {
	if (document.getElementById('searchId').value.length < 3) {
		alert('검색할 ID를 3자 이상 입력하세요.');
		return false;
	}
	return true;
}

//검색한 ID를 가입폼에 입력하고 현재 창 닫기
function idSelect(id) {
	opener.document.getElementById('user_id').value = id;
	this.close();
}
</script>
</head>
<body>
<h2>[ 사번 중복 확인 ]</h2>

<!-- 검색 폼 -->
<form action="idcheck" method="post" onsubmit="return formCheck();">
	<input type="text" name="searchId" id="searchId" value="${searchId}" placeholder="검색할 사번 입력">
	<input type="submit" value="검색">
</form>
<br>

<!-- 검색 후에만 출력 -->
<c:if test="${search}">
	<!-- 검색된 결과가 없는 경우 -->
	<c:if test="${searchResult == null}">
		<p>${searchId} : 사용할 수 있는 사번입니다.</p>
		<p><input type="button" value="사번 등록하기" onclick="idSelect('${searchId}')"></p>
	</c:if>
	<!-- 검색된 결과가 있는 경우 -->
	<c:if test="${searchResult != null}">
		<p>${searchId} : 이미 사용중인 사번입니다.</p>
	</c:if>
</c:if>

</body>
</html>



