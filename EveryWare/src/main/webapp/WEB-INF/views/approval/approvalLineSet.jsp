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

<%-- Jquery --%>
	<script src="../resources/js/jquery-3.2.1.min.js" ></script>

<script type="text/javascript">


	function openCreateApprovalLine(){
		
		window.open("openCreateApprovalLine", "openCreateApprovalLineWin", "top=200, left=600, width=600, height=400")
	}
	
	function openLoadApprovalLine(){
		
		window.open("openLoadApprovalLine", "openCreateApprovalLineWin", "top=200, left=600, width=600, height=400")
	}
	
	
	
$(document).ready(function() {
	
		
	
		
		//이벤트 처리
		$('#setBt').on('click', function(){
			
			alert('1');
			
			var id = $('#eApprovalLine_id').val();
			var person1 = $('#approvalerName1').val();
			var person2 = $('#approvalerName2').val();
			var person3 = $('#approvalerName3').val();
			
			opener.document.getElementById('eApprovalLine_person1').value = person1;
			opener.document.getElementById('eApprovalLine_person2').value = person2;
			opener.document.getElementById('eApprovalLine_person3').value = person3;
			opener.document.getElementById('eApprovalLine_id').value = id;
			
			self.close();
			
		});	//이벤트 처리
	});// doc reaedy
	
	

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

<!-- 결재선 확정 -->
<form id="submitForm">
	
	결재선 번호
	<input type="text" id="eApprovalLine_name" name="eApprovalLine_name">
	<br>
	
	결재선 이름
	<input type="text" id="eApprovalLine_id" name="eApprovalLine_id">
	
	<br>
	결재자 1
	<input type="text" readonly="readonly" id="approvalerName1">
	
	<br>
	
	결재자 2
	<input type="text" readonly="readonly" id="approvalerName2">

	
	<br>
	
	결재자 3
	<input type="text" readonly="readonly" id="approvalerName3">
	
	
	<input type="button"  id="setBt" value="결재선 확정">
	
	
</form>




</body>
</html>
