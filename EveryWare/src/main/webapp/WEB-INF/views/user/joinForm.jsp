<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>사원등록</title>

<link rel="stylesheet" type="text/css" href="../resources/board/css/default.css" />

<script>
//가입신청 후 서버에서의 오류로 현재 페이지로 되돌아온 경우 오류 메시지를 출력
<c:if test="${errorMsg != null}">alert('${errorMsg}');</c:if>

//가입폼 확인
function formCheck() {
	var id = document.getElementById('user_id');
	var pw = document.getElementById('user_pw');
	var pw2 = document.getElementById('user_pw2');
	var name = document.getElementById('user_address');
	
	if (id.value.length < 3 || id.value.length > 10) {
		alert("ID는 3~10자로 입력하세요.");
		id.focus();
		id.select();
		return false;
	}
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

//ID 중복확인 창 열기
function idcheckOpen() {
	window.open("idcheck","newwin","top=200,left=400,width=400,height=300,resizable=no");
}
</script>
</head>

<body>
<div class="centerdiv">
<h1>[ 사원 등록 ]</h1>

<form id="joinform" action="join"  method="post" onsubmit="return formCheck();">
<table>
	<tr>
		<th>사번</th>
		<td>
			<input type="text" name="user_id" id="user_id" maxlength="10" placeholder="중복확인 이용" readonly="readonly" value="${user.user_id}" />
			<input type="button" value="중복확인" onclick="idcheckOpen()">
		</td>
	</tr>
	<tr>
		<th>비밀번호</th>
		<td><input type="password" name="user_pw" id="user_pw" placeholder="비밀번호 입력" value="${user.user_pw}" /><br>
		<input type="password" id="user_pw2" placeholder="비밀번호 다시 입력" value="${user.user_pw}" /></td>
	</tr>
	<tr>
		<th>이름</th>
		<td><input type="text" name="user_name" id="user_name" value="${user.user_name}" /></td>
	</tr>
	<%-- <tr>
		<th>주민등록번호</th>
		<td><input type="text" name="user_idNum" id="user_idNum" readonly="readonly" value="${user.user_idNum}" /></td>
	</tr> --%>
	<tr>
		<th>부서</th>
		<td><input type="text" name="dept_name" id="dept_name" value="${user.dept_name}" /></td>
	</tr>
	<tr>
		<th>직위</th>
		<td><input type="text" name="position_name" id="position_name" value="${user.position_name}" /></td>
	</tr>
	<tr>
		<th>주소</th>
		<td><input type="text" name="user_address" id="user_address" placeholder="주소 입력" value="${user.user_address}" style="width:300px;" /></td>
	</tr>
	<tr>
		<th>연락처</th>
		<td><input type="text" name="user_phone" id="user_phone" placeholder="연락처 입력" value="${user.user_phone}" /></td>
	</tr>
	<tr>
		<th>권한</th>
		<td>
			<input type="radio" name="authority" value="user" checked />사원
			<input type="radio" name="authority" value="master" />관리자
		</td>
	</tr>
	
</table>
	<br>

<input type="submit" value="등록" />
<input type="reset" value="다시 쓰기" />

</form>

</div>
</body>
</html>