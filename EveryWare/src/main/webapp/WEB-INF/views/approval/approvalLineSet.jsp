<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>결재라인 지정</title>



<script type="text/javascript">


	function openCreateApprovalLine(){
		
		window.open("openCreateApprovalLine", "openCreateApprovalLineWin", "top=200, left=600, width=600, height=400")
	}
	
	function openLoadApprovalLine(){
		
		window.open("openLoadApprovalLine", "openCreateApprovalLineWin", "top=200, left=600, width=600, height=400")
	}
	
	
	function inputApprovalLine(){
		var name = '';
		name = prompt('결재선의 이름을 입력해주세요.');
	
		document.getElementById('eApprovalLine_name').value = name;
		
		
	}

</script>


	
</head>

<body>

결재라인 지정창

<br>
결재라인 등록


<br><br><br>
<!-- 결재라인 저장-->

<input type="button" value="결재선 만들기" onclick="openCreateApprovalLine()">

<!-- 결재라인 불러오기 -->
<input type="button" value="결재선 불러오기" onclick="openLoadApprovalLine()">

<form method="post" action="insertApprovalLine" onsubmit="inputApprovalLine()">
	
	결재자 1
	<input type="text" readonly="readonly" id="approvalerName1">
	<input type="text" id="eApprovalLine_person1" name="eApprovalLine_person1">
	
	<br>
	
	결재자 2
	<input type="text" readonly="readonly" id="approvalerName2">
	<input type="text" id="eApprovalLine_person2" name="eApprovalLine_person2">
	
	<br>
	
	결재자 3
	<input type="text" readonly="readonly" id="approvalerName3">
	<input type="text" id="eApprovalLine_person3" name="eApprovalLine_person3">
	
	<input type="hidden" id="eApprovalLine_name" name="eApprovalLine_name">
	<input type="submit" value="결재선 확정">
	
	
</form>




</body>
</html>
