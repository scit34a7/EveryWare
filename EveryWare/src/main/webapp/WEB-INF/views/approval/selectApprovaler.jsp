<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>결재자 지정</title>


<%-- Jquery --%>
	<script src="../resources/js/jquery-3.2.1.min.js" ></script>	
	
		

<script>

	$(document).ready(function(){
		
		
		
			$('.user').on('click', function(){
			
			var id = $(this).attr('num');
			var ndp = $(this).attr('num2');	//name + dept + position = ndp
			//alert(id);
			//alert(ndp);
			var openerName = 'approvalerName' + ${num};
			var openerId = 'eApprovalLine_person' + ${num};
			//alert(openerId);
			opener.document.getElementById(openerName).value = ndp;
			opener.document.getElementById(openerId).value = id;
			self.close();

		});
		
	})

	
</script>



</head>

<body>

결재자 지정
user 리스트를 가져와서뿌린다.
<br>

<c:forEach var="user" items="${userList}">

	<input type="button" value="선택"  num="${user.user_id}" num2="${user.user_name} / ${user.dept_name} / ${user.position_name}" class="user"> 
	이름 : ${user.user_name}, 부서 : ${user.dept_name}, 직위 : ${user.position_name} 
	<br>

</c:forEach>








</body>
</html>
