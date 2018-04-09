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


	function openSelectApprovaler(num){
		
		window.open("openSelectApprovaler?num=" + num, "openSelectApprovalerWin", "top=200, left=700, width=400, height=400")
	}
	
	
	
	
	
	
	$(document).ready(function() {
	
		
	
		
		//이벤트 처리
		$('#submitBt').on('click', function(){
			
			var name = '';
			name = prompt('결재선의 이름을 입력해주세요.');
		
			document.getElementById('eApprovalLine_name').value = name;
			
			
			$.ajax({
				url: 'insertApprovalLine_aj'
				,type: 'POST'
				,data: $('#submitForm').serialize()
				,dataType: 'text'	//!중요 dataType는 소문자로 쳐야한다.
				,success: function(ob){
					
					alert('성공');
					
					self.close();
					
				}	
				,error: function(e){	
						alert(JSON.stringify(e));
				}
			});//ajax
			
		});	//이벤트 처리
	});// doc reaedy
	
	

</script>


	
</head>

<body>

결재라인 지정창

<br>
결재라인 등록



<select>
	<option>
</select>

<br><br><br>
<!-- 결재라인 저장-->
<form method="post" id="submitForm">
	
	결재자 1<input type="button" value="찾기" onclick="openSelectApprovaler('1')">
	<input type="text" readonly="readonly" id="approvalerName1">
	<input type="text" id="eApprovalLine_person1" name="eApprovalLine_person1">
	
	<br>
	
	결재자 2<input type="button" value="찾기" onclick="openSelectApprovaler('2')">
	<input type="text" readonly="readonly" id="approvalerName2">
	<input type="text" id="eApprovalLine_person2" name="eApprovalLine_person2">
	
	<br>
	
	결재자 3<input type="button" value="찾기" onclick="openSelectApprovaler('3')">
	<input type="text" readonly="readonly" id="approvalerName3">
	<input type="text" id="eApprovalLine_person3" name="eApprovalLine_person3">
	
	<input type="hidden" id="eApprovalLine_name" name="eApprovalLine_name">
	<input type="button" id="submitBt" value="결재선 저장">
	
	
</form>




</body>
</html>
