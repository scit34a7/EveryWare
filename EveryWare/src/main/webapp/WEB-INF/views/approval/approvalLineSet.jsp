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
		
		
			function openCreateApprovalLine(){
				
				window.open("openCreateApprovalLine", "openCreateApprovalLineWin", "top=100, left=600, width=600, height=600")
			}
			
			function openLoadApprovalLine(){
				
				window.open("openLoadApprovalLine", "openCreateApprovalLineWin", "top=100, left=600, width=750, height=650")
			}
			
			
			
			$(document).ready(function() {	
				
				//이벤트 처리
				$('#setBt').on('click', function(){
					
					
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
		
		
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">	<!-- 뒤에 숙자가 크기 조절 -->
					<div class="panel">
						<div class="panel-heading">
							<h3 class="panel-title">결재선 지정</h3>
						</div>
						<div class="panel-body">
						
							<button type="button" class="btn btn-primary btn-lg" onclick="openCreateApprovalLine()">결재선 만들기</button>
							<button type="button" class="btn btn-primary btn-lg" onclick="openLoadApprovalLine()">결재선 불러오기</button>
							<br><br>
							<!-- 폼 태그 -->
							<form id="submitForm" novalidate>
								
								<div class="form-group">
									<label class="control-label">결재선 번호</label>
									<input type="text" class="form-control" id="eApprovalLine_id" name="eApprovalLine_name" required>
								</div>
								
								<div class="form-group">
									<label class="control-label">결재선 이름</label>
									<input type="text" class="form-control" id="eApprovalLine_name" name="eApprovalLine_id" required>
								</div>
								
								<div class="form-group">
									<label class="control-label">결재자1</label>
									<input type="text" class="form-control" readonly="readonly" id="approvalerName1" required>
								</div>
								
								<div class="form-group">
									<label class="control-label">결재자2</label>
									<input type="text" class="form-control" readonly="readonly" id="approvalerName2" required>
								</div>
								
								<div class="form-group">
									<label class="control-label">결재자3</label>
									<input type="text" class="form-control" readonly="readonly" id="approvalerName3" required>
								</div>
								
								<button type="button" class="btn btn-primary btn-lg" id="setBt">결재선 확정</button>
						
								<!-- 폼태그내 인풋 태그 
								
								<div class="form-group">
									<label class="control-label">Text Input</label>
									<input type="text" class="form-control" required>
								</div>
								
								<div class="form-group">
									<label class="control-label">Email Input</label>
									<input type="email" class="form-control" required>
								</div>
								
								<div class="form-group">
									<label class="control-label">Text Area</label>
									<textarea class="form-control" rows="5" cols="30" required></textarea>
								</div>
								
								<div class="form-group">
									<label class="control-label">Checkbox</label>
									<br/>
									<label class="fancy-checkbox">
										<input type="checkbox" name="checkbox" required data-parsley-errors-container="#error-checkbox">
										<span>Option 1</span>
									</label>
									<label class="fancy-checkbox">
										<input type="checkbox" name="checkbox">
										<span>Option 2</span>
									</label>
									<label class="fancy-checkbox">
										<input type="checkbox" name="checkbox">
										<span>Option 3</span>
									</label>
									<p id="error-checkbox"></p>
								</div>
								
								<div class="form-group">
									<label class="control-label">Radio Button</label>
									<br />
									<label class="fancy-radio">
										<input type="radio" name="gender" value="male" required data-parsley-errors-container="#error-radio">
										<span><i></i>Male</span>
									</label>
									<label class="fancy-radio">
										<input type="radio" name="gender" value="female">
										<span><i></i>Female</span>
									</label>
									<p id="error-radio"></p>
								</div>
								
								<div class="form-group">
									<label class="control-label" for="food">Multiselect</label>
									<br/>
									<select id="food" name="food[]" class="multiselect multiselect-custom" multiple="multiple" data-parsley-required data-parsley-trigger-after-failure="change" data-parsley-errors-container="#error-multiselect">
										<option value="cheese">Cheese</option>
										<option value="tomatoes">Tomatoes</option>
										<option value="mozarella">Mozzarella</option>
										<option value="mushrooms">Mushrooms</option>
										<option value="pepperoni">Pepperoni</option>
										<option value="onions">Onions</option>
									</select>
									<p id="error-multiselect"></p>
								</div>
								
								<br>
								<button type="submit" class="btn btn-primary">Validate</button>
							 -->
							</form>
						</div>
					</div>
				</div>
				
				
				
				
			</div>
		</div>
		
		
		
	</body>
</html>