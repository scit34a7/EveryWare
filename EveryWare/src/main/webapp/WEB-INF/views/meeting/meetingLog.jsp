<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
	<head>
		<title>회의록</title>
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
			<!-- MAIN -->
			<div class="main">
				<!-- MAIN CONTENT -->
				<div class="main-content">
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-6">
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">회의록</h3>
									</div>
									<div class="panel-body">
											<div class="form-group">
												<label class="control-label">세부 내용</label><br>
												<c:if test="${logList != null}">
													<c:forEach var="i" items="${logList}">
													<tr>
														<label>${i.user_id}:${i.log_content}</label><br>
													</tr>
													</c:forEach>
												</c:if>
											</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- END MAIN -->
			<div class="clearfix"></div>
		<!-- Javascript -->
		<script src="../resources/assets/vendor/jquery/jquery.min.js"></script>
		<script src="../resources/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="../resources/assets/vendor/pace/pace.min.js"></script>
		<script src="../resources/assets/vendor/bootstrap-multiselect/bootstrap-multiselect.js"></script>
		<script src="../resources/assets/vendor/parsleyjs/js/parsley.min.js"></script>
		<script src="../resources/assets/scripts/klorofilpro-common.js"></script>
		<script src="../resources/assets/vendor/clockpicker/bootstrap-clockpicker.min.js"></script>

		<script>
		$(function()
		{
			// validation needs name of the element
			$('#department').multiselect();
			// initialize after multiselect
			$('#basic-form').parsley();
		});
		</script>
		
	</body>
</html>