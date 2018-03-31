<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>전자결재</title>

<script type="text/javascript">

function openLineSet(){
	window.open("approvalLineSet", "approvalLineSetkWin", "top=200, left=400, width=600, height=500")
}

</script>


	
</head>

<body>

<!-- 소메뉴 -->
<div>
	<ul>
		<li>결재 작성</li>
		<li>결재승인</li>
		<li>결재 설정</li>
		<li>결재 보관함</li>
	</ul>
</div>

<!-- 메인 -->
<div>

	<form>
	
		결제 제목 : <input type="text" id="eApproval_title">
		<br>
		결제 내용 : <input type="text" id="eApproval_content">
		<br>
		<input type="button" value="결재선 지정" onclick="openLineSet()">
		<table border="1">
			<tr>
				<td rowspan="2">
				결<br>재
				</td>
				<td>담  당</td>
				<td>팀  장</td>
				<td>부서장</td>
				<td>본부장</td>
			</tr>
			<tr>
				<td>1</td>
				<td>2</td>
				<td>3</td>
				<td>4</td>
			</tr>
		</table>
		<input type="text" id="approvaler1" readonly="readonly">
		<input type="text" id="approvaler1" readonly="readonly">
		<input type="text" id="approvaler1" readonly="readonly">
	
	</form>


</div>




</body>
</html>
