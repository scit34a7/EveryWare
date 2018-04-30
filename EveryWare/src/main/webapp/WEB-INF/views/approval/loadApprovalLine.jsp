<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html class="fullscreen-bg">
	<head>
		<title>Everyware | eApproval</title>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
		<!-- VENDOR CSS -->
		<link rel="stylesheet" href="../resources/assets/vendor/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="../resources/assets/vendor/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="../resources/assets/vendor/themify-icons/css/themify-icons.css">
		<!-- MAIN CSS -->
		<link rel="stylesheet" href="../resources/assets/css/main.css">
		<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
		<link rel="stylesheet" href="../resources/assets/css/demo.css">
		<!-- GOOGLE FONTS -->
		<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
		<!-- ICONS -->
		<link rel="apple-touch-icon" sizes="76x76" href="../resources/assets/img/apple-icon.png">
		<link rel="icon" type="image/png" sizes="96x96" href="../resources/assets/img/favicon.png">
	
	
		<%-- Jquery --%>
		<script src="../resources/js/jquery-3.2.1.min.js" ></script>
	
		<script type="text/javascript">
		
			$(document).ready(function() {
				
				//이벤트 처리
				$('button').on('click', function(){
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
		
		
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">	<!-- 뒤에 숙자가 크기 조절 -->
					<div class="panel">
						<div class="panel-heading">
							<h3 class="panel-title">결재선 불러오기</h3>
						</div>
						<div class="panel-body">
						
							<table class="table">
								<thead>
									<tr>
										<th>결재선 이름</th>
										<th>결재자1</th>
										<th>결재자2</th>
										<th>결재자3</th>
									</tr>
								</thead>
								<tbody>
									<c:if test="${approvalLineList ne null}">
										<c:forEach var="line"  items="${approvalLineList}">
										
											<tr>
												<td>
													<button type="button" class="btn btn-primary btn-lg" num="${line.eApprovalLine_id}">선택</button>
													${line.eApprovalLine_name}
												</td>
												<td>${line.eApprovalLine_person1}</td>
												<td>${line.eApprovalLine_person2}</td>
												<td>${line.eApprovalLine_person3}</td>
											
											</tr>			
										
										</c:forEach>
									</c:if>
								</tbody>
							</table>
							
						</div>
					</div>
				</div>
				
				
				
				
			</div>
		</div>
		
		
		
	</body>
</html>