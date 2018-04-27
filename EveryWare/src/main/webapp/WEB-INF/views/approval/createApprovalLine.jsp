<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html class="fullscreen-bg">
	<head>
		<title>Register | Klorofil Pro - Bootstrap Admin Dashboard Template</title>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
		<!-- VENDOR CSS -->
		<link rel="stylesheet" href="../resources/assets/vendor/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="../resources/assets/vendor/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="../resources/assets/vendor/themify-icons/css/themify-icons.css">
		<link rel="stylesheet" href="../resources/assets/vendor/sweetalert2/sweetalert2.css">
		<!-- MAIN CSS -->
		<link rel="stylesheet" href="../resources/assets/css/main.css">
		<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
		<link rel="stylesheet" href="../resources/assets/css/demo.css">
		<!-- GOOGLE FONTS -->
		<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
		<!-- ICONS -->
		<link rel="apple-touch-icon" sizes="76x76" href="../resources/assets/img/apple-icon.png">
		<link rel="icon" type="image/png" sizes="96x96" href="../resources/assets/img/favicon.png">
	
	
	
		<!-- JavaScript -->
		<script src="../resources/assets/vendor/sweetalert2/sweetalert2.js"></script>
	
		<%-- Jquery --%>
		<script src="../resources/js/jquery-3.2.1.min.js" ></script>
	
		<script type="text/javascript">
		
		
			function openSelectApprovaler(num){
				
				window.open("openSelectApprovaler?num=" + num, "openSelectApprovalerWin", "top=100, left=700, width=700, height=600")
			}
			
			
			
			
			
			
			$(document).ready(function() {
			
				
			
				
				//이벤트 처리
				$('#submitBt').on('click', function(){
					
					var name = '';
					//prompt
					swal(
						{
							title: '결재선의 이름을 입력해주세요.',
							text: '저장될 결재선의 이름을 입력',
							input: 'text',
							showCancelButton: true,
							inputValidator: function(value)
							{
								return new Promise(function(resolve, reject)
								{
									if (value)
									{
										resolve();
									}
									else
									{
										reject('결재선의 이름을 입력해주세요.');
									}
								});
							}
						}).then(function(result)
						{
							
							
							name = result;
							
							document.getElementById('eApprovalLine_name').value = name;
							
							
							$.ajax({
								url: 'insertApprovalLine_aj'
								,type: 'POST'
								,data: $('#submitForm').serialize()
								,dataType: 'text'	//!중요 dataType는 소문자로 쳐야한다.
								,success: function(ob){
									
									swal(
											'저장 완료',
											'결재선이 저장되었습니다.',
											'success'
										).then(function(){
											self.close();
											
										}).catch(swal.noop);
									
									
									
									
									
									//self.close();
									
								}	
								,error: function(e){	
										alert(JSON.stringify(e));
								}
							});//ajax
							
						}).catch(swal.noop);
					
					//prompt 끝
					
					
				
					
					
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
							<h3 class="panel-title">결재선 지정</h3>
						</div>
						<div class="panel-body">
						
							
						
							
							<!-- 폼 태그 -->
							<form id="submitForm" novalidate>
								
								<div class="form-group">
									<label class="control-label">결재자1</label>
									<br>
									<button type="button" class="btn btn-info" onclick="openSelectApprovaler('1')">찾기</button>
									<input type="text" class="form-control" readonly="readonly" id="approvalerName1" required>
									
								</div>
								
								<input type="hidden" class="form-control" id="eApprovalLine_person1" name="eApprovalLine_person1">
								
								<div class="form-group">
									<label class="control-label">결재자2</label>
									<br>
									<button type="button" class="btn btn-info" onclick="openSelectApprovaler('2')">찾기</button>
									<input type="text" class="form-control" readonly="readonly" id="approvalerName2" required>
									
								</div>
								
								<input type="hidden" class="form-control" id="eApprovalLine_person2" name="eApprovalLine_person2">
								
								<div class="form-group">
									<label class="control-label">결재자3</label>
									<br>
									<button type="button" class="btn btn-info" onclick="openSelectApprovaler('3')">찾기</button>
									<input type="text" class="form-control" readonly="readonly" id="approvalerName3" required>
									
								</div>
								<input type="hidden" class="form-control" id="eApprovalLine_person3" name="eApprovalLine_person3">
								
								<input type="hidden" id="eApprovalLine_name" name="eApprovalLine_name">
							
								
								<input type="button" class="btn btn-primary btn-lg" id="submitBt" value="결재선 저장"> 
								
								
							</form>
						</div>
					</div>
				</div>
				
				
				
				
			</div>
		</div>
		
		
		
	</body>
</html>