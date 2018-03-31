<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>개인 정보 수정</title>

<link rel="stylesheet" type="text/css" href="../resources/board/css/default.css" />

<script>
//가입폼 확인
function formCheck() {
	var pw = document.getElementById('password');
	var pw2 = document.getElementById('password2');
	var name = document.getElementById('name');
	
	if (pw.value.length < 3 || pw.value.length > 10) {
		alert("비밀번호는 3~10자로 입력하세요.");
		pw.focus();
		pw.select();
		return false;
	}
	if (pw.value != pw2.value) {
		alert("비밀번호를 정확하게 입력하세요.");
		pw.focus();
		pw.select();
		return false;
	}
	if (name.value == '') {
		alert("이름을 입력하세요.");
		name.focus();
		name.select();
		return false;
	}
	return true;
}
</script>
</head>

<body>
<div class="centerdiv">
<h1>[ 개인 정보 수정 ]</h1>

<form id="updateform" action="update"  method="post" onsubmit="return formCheck();">
<table>
	<tr>
		<th>사번</th>
		<td>${userId}</td>
	</tr>
	<tr>
		<th>비밀번호</th>
		<td><input type="password" name="user_pw" id="user_pw" placeholder="비밀번호 입력" /><br>
		<input type="password" id="user_pw2" placeholder="비밀번호 다시 입력" /></td>
	</tr>
	<tr>
		<th>이름</th>
		<td>${userName}</td>
	</tr>
	<%-- <tr>
		<th>주민등록번호</th>
		<td><input type="text" name="user_idNum" id="user_idNum" value="${user.user_idNum}" /></td>
	</tr> --%>
	<tr>
		<th>부서</th>
		<td>${userDepartment}</td>
	</tr>
	<tr>
		<th>직위</th>
		<td>${userPosition}</td>
	</tr>
	<tr>
		<th>주소</th>
		<td><input type="text" name="user_address" id="user_address" value="${user.user_address}" style="width:300px;" /></td>
	</tr>
	<tr>
		<th>연락처</th>
		<td><input type="text" name="user_phone" id="user_phone" value="${user.user_phone}" /></td>
	</tr>
	
</table>
	<br>

<input type="submit" value="수정" />
<input type="reset" value="다시 쓰기" />

</form>

</div>
</body>
</html>