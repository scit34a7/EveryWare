<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>결재라인 불러오기</title>

<%-- Jquery --%>
	<script src="../resources/js/jquery-3.2.1.min.js" ></script>

<script type="text/javascript">

	$(document).ready(function() {
		
		//이벤트 처리
		$('.selectBt').on('click', function(){
			var eApprovalLine_id = $(this).attr('num');
			
			
			
			$.ajax({
				url: 'loadApprovalLine_aj'
				,type: 'POST'
				,data: {eApprovalLine_id : eApprovalLine_id}
				,dataType: 'json'	//!중요 dataType는 소문자로 쳐야한다.
				,success: function(ob){
					
					
					var person1 = ob.eApprovalLine_person1;
					var person2 = ob.eApprovalLine_person2;
					var person3 = ob.eApprovalLine_person3;
					var name = ob.eApprovalLine_name;
					

					opener.document.getElementById('approvalerName1').value = person1;
					opener.document.getElementById('approvalerName2').value = person2;
					opener.document.getElementById('approvalerName3').value = person3;
					opener.document.getElementById('eApprovalLine_name').value = name;
					opener.document.getElementById('eApprovalLine_id').value = eApprovalLine_id;
					
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

결재라인 불러오기

<br>

	<c:forEach items="${approvalLineList}" var="line" >
		
		<input type="button" value="선택" num="${line.eApprovalLine_id}" class="selectBt">
		${line.eApprovalLine_name}  ${line.eApprovalLine_person1}  ${line.eApprovalLine_person2}  ${line.eApprovalLine_person3}
		
	</c:forEach>








</body>
</html>
