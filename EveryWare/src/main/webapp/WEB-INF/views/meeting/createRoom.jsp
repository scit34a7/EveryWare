<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
	<head>
		<title>Form Validations | Klorofil Pro - Bootstrap Admin Dashboard Template</title>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
		<!-- VENDOR CSS -->
		<link rel="stylesheet" href="../resources/assets/vendor/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="../resources/assets/vendor/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="../resources/assets/vendor/themify-icons/css/themify-icons.css">
		<link rel="stylesheet" href="../resources/assets/vendor/pace/themes/orange/pace-theme-minimal.css">
		<link rel="stylesheet" href="../resources/assets/vendor/bootstrap-multiselect/bootstrap-multiselect.css">
		<link rel="stylesheet" href="../resources/assets/vendor/parsleyjs/css/parsley.css">
		<link rel="stylesheet" href="../resources/assets/vendor/clockpicker/bootstrap-clockpicker.min.css">
		<!-- MAIN CSS -->
		<link rel="stylesheet" href="../resources/assets/css/main.css">
		<link rel="stylesheet" href="../resources/assets/css/skins/sidebar-nav-darkgray.css" type="text/css">
		<link rel="stylesheet" href="../resources/assets/css/skins/navbar3.css" type="text/css">
		<!-- FOR DEMO PURPOSES ONLY. You should/may remove this in your project -->
		<link rel="stylesheet" href="../resources/assets/css/demo.css">
		<link rel="stylesheet" href="../resources/demo-panel/style-switcher.css">
		<!-- ICONS -->
		<link rel="apple-touch-icon" sizes="76x76" href="../resources/assets/img/apple-icon.png">
		<link rel="icon" type="image/png" sizes="96x96" href="../resources/assets/img/favicon.png">
		
	</head>
	<body>
		<!-- WRAPPER -->
			<!-- MAIN -->
			<div class="main">
				<!-- MAIN CONTENT -->
				<div class="main-content">
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-6">
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">회의실 개설</h3>
									</div>
									<div class="panel-body">
										<form id="basic-form" action="create" method="get" novalidate>
											<div class="form-group">
												<label class="control-label">제목</label>
												<input type="text" id="title" name="title" class="form-control" required>
											</div>
											<div class="form-group">
												<label class="control-label">세부 내용</label>
												<textarea class="form-control" id="content" name="content" rows="5" cols="30" required></textarea>
											</div>
											<div class="form-group">
												<label for="ticket-type" class="control-label">제한인원</label>
												<div>
													<select id="people" name="people" class="form-control">
														<option value="1">1명</option>
														<option value="2">2명</option>
														<option value="3">3명</option>
														<option value="4">4명</option>
														<option value="5">5명</option>
														<option value="6">6명</option>
														<option value="7">7명</option>
														<option value="8">8명</option>
													</select>
												</div>
											</div>
											<div class="form-group">
												<label class="control-label">직급</label>
												<br/>
												<label class="fancy-checkbox">
													<input type="checkbox" value="사장" name="position" required data-parsley-errors-container="#error-checkbox">
													<span>사장</span>
												</label>
												<label class="fancy-checkbox">
													<input type="checkbox" value="부장" name="position">
													<span>부장</span>
												</label>
												<label class="fancy-checkbox">
													<input type="checkbox" value="차장" name="position">
													<span>차장</span>
												</label>
												<label class="fancy-checkbox">
													<input type="checkbox" value="과장" name="position">
													<span>과장</span>
												</label>
												<label class="fancy-checkbox">
													<input type="checkbox" value="대리" name="position">
													<span>대리</span>
												</label>
												<label class="fancy-checkbox">
													<input type="checkbox" value="사원" name="position">
													<span>사원</span>
												</label>
												<p id="error-checkbox"></p>
											</div>
											<div class="form-group">
												<label class="control-label" for="department">부서</label>
												<br/>
												<select id="department" name="department" class="multiselect multiselect-custom" multiple="multiple" data-parsley-required data-parsley-trigger-after-failure="change" data-parsley-errors-container="#error-multiselect">
													<option value="총무">총무</option>
													<option value="재무">재무</option>
													<option value="법무">법무</option>
													<option value="영업">영업</option>
													<option value="운영">운영</option>
												</select>
												<p id="error-multiselect"></p>
											</div>
											<div class="form-group">
												<label class="control-label" for="department">회의 시작시간</label><br/>
												<div class="input-group basic-clockpicker" data-placement="top" data-autoclose="true">
													<input type="text" id="time" name="time" class="form-control" value="">
													<span class="input-group-addon">
														<span class="fa fa-clock-o"></span>
													</span>
												</div>
											</div>
											<br>
											<button type="submit" class="btn btn-primary">개설</button>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- END MAIN -->
			<div class="clearfix"></div>
		<!-- END WRAPPER -->
		<!-- Javascript -->
		<script src="../resources/assets/vendor/jquery/jquery.min.js"></script>
		<script src="../resources/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="../resources/assets/vendor/pace/pace.min.js"></script>
		<script src="../resources/assets/vendor/bootstrap-multiselect/bootstrap-multiselect.js"></script>
		<script src="../resources/assets/vendor/parsleyjs/js/parsley.min.js"></script>
		<script src="../resources/assets/scripts/klorofilpro-common.js"></script>
		<script src="../resources/assets/vendor/clockpicker/bootstrap-clockpicker.min.js"></script>
		<!-- DEMO PANEL -->
		<!-- for demo purpose only, you should remove it on your project directory -->
		<script type="text/javascript">
		var toggleDemoPanel = function(e)
		{
			e.preventDefault();
			var panel = document.getElementById('demo-panel');
			if (panel.className) panel.className = '';
			else panel.className = 'active';
		}
		// fix each iframe src when back button is clicked
		$(function()
		{
			$('iframe').each(function()
			{
				this.src = this.src;
			});
		});
		</script>
		<div id="demo-panel">
			<a href="#" onclick="toggleDemoPanel(event);"><i class="fa fa-cog fa-spin"></i></a>
			<iframe src="../resources/demo-panel/index.html"></iframe>
		</div>
		<!-- END DEMO PANEL -->
		<script>
		$(function()
		{
			// validation needs name of the element
			$('#department').multiselect();
			// initialize after multiselect
			$('#basic-form').parsley();
		});
		</script>
		
		<script>
		$(function()
		{
			/*-----------------------------------/
			/*	BOOTSTRAP CLOCK PICKER
			/*----------------------------------*/
			$('.basic-clockpicker').clockpicker(
			{
				donetext: 'DONE',
			});
			var input = $('#single-input').clockpicker(
			{
				placement: 'top',
				autoclose: true,
				'default': 'now'
			});
			$('#check-minutes').click(function(e)
			{
				// Have to stop propagation here
				e.stopPropagation();
				input.clockpicker('show').clockpicker('toggleView', 'minutes');
			});
		});
		</script>
	</body>
</html>