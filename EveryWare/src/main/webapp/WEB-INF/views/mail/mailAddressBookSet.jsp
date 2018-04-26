<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html class="fullscreen-bg">
	<head>
		<title>Everyware | Mail</title>
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
				
				$('#mailsend').val('${mailto}');
				$('#mailreference').val('${mailreference}');
				
				//이벤트 처리
				$('#setBt').on('click', function(){
					
					$('#submitForm').submit();
					
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
							<h3 class="panel-title">메일 주소록 저장</h3>
						</div>
						<div class="panel-body">
							
							<!-- 폼 태그 -->
							<form id="submitForm" name ="submitForm" action = "./saveOneAddress" method = "post">
								
								<div class="form-group">
									<label class="control-label">주소록 이름</label>
									<input type="text" class="form-control" id="addrBook_name" name="addrBook_name" required>
								</div>
								
								<div class="form-group">
									<label class="control-label">Send to</label>
									<input type="text" class="form-control" readonly="readonly" id="mailsend" name = "mailsend" required>
								</div>
								
								<div class="form-group">
									<label class="control-label">Reference to </label>
									<input type="text" class="form-control" readonly="readonly" id="mailreference" name = "mailreference" required>
								</div>
								
								<button type="submit" class="btn btn-primary btn-lg" id="setBt1">주소록 저장</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>