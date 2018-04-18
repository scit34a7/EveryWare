<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
	<head>
		<title>Text Editor | Klorofil Pro - Bootstrap Admin Dashboard Template</title>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
		<!-- VENDOR CSS -->
		<link rel="stylesheet" href="../resources/assets/vendor/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="../resources/assets/vendor/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="../resources/assets/vendor/themify-icons/css/themify-icons.css">
		<link rel="stylesheet" href="../resources/assets/vendor/pace/themes/orange/pace-theme-minimal.css">
		<link rel="stylesheet" href="../resources/assets/vendor/summernote/summernote.css">
		<link rel="stylesheet" href="../resources/assets/vendor/bootstrap-markdown/bootstrap-markdown.min.css">
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
		<!-- DatePicker -->
		<link rel="stylesheet" href="../resources/assets/vendor/bootstrap-datepicker/css/bootstrap-datepicker3.min.css">
		<!-- DROPIFY 첨부파일 -->
		<link rel="stylesheet" href="../resources/assets/vendor/dropify/css/dropify.min.css">
		
		
		
		<%-- Jquery --%>
	<script src="../resources/js/jquery-3.2.1.min.js" ></script>	
		
		<script type="text/javascript">

			function openLineSet(){
				window.open("approvalLineSet", "approvalLineSetkWin", "top=100, left=500, width=600, height=600")
			}
			
			
		
		</script>
		
		
	</head>
	<body>
		<!-- WRAPPER -->
		<div id="wrapper">
			<!-- NAVBAR -->
			<nav class="navbar navbar-default navbar-fixed-top">
				<div class="brand">
					<a href="index">
						<img src="../resources/assets/img/logo-white.png" alt="Klorofil Pro Logo" class="img-responsive logo">
					</a>
				</div>
				<div class="container-fluid">
					<div id="tour-fullwidth" class="navbar-btn">
						<button type="button" class="btn-toggle-fullwidth"><i class="ti-arrow-circle-left"></i></button>
					</div>
					<form class="navbar-form navbar-left search-form">
						<input type="text" value="" class="form-control" placeholder="Search dashboard...">
						<button type="button" class="btn btn-default"><i class="fa fa-search"></i></button>
					</form>
					<div id="navbar-menu">
						<ul class="nav navbar-nav navbar-right">
							<li>
								<a href="#" class="btn-toggle-rightsidebar">
									<i class="ti-layout-sidebar-right"></i>
								</a>
							</li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle icon-menu" data-toggle="dropdown">
									<i class="ti-bell"></i>
									<span class="badge bg-danger">5</span>
								</a>
								<ul class="dropdown-menu notifications">
									<li>You have 5 new notifications</li>
									<li>
										<a href="#" class="notification-item">
											<i class="fa fa-hdd-o custom-bg-red"></i>
											<p>
												<span class="text">System space is almost full</span>
												<span class="timestamp">11 minutes ago</span>
											</p>
										</a>
									</li>
									<li>
										<a href="#" class="notification-item">
											<i class="fa fa-tasks custom-bg-yellow"></i>
											<p>
												<span class="text">You have 9 unfinished tasks</span>
												<span class="timestamp">20 minutes ago</span>
											</p>
										</a>
									</li>
									<li>
										<a href="#" class="notification-item">
											<i class="fa fa-book custom-bg-green2"></i>
											<p>
												<span class="text">Monthly report is available</span>
												<span class="timestamp">1 hour ago</span>
											</p>
										</a>
									</li>
									<li>
										<a href="#" class="notification-item">
											<i class="fa fa-bullhorn custom-bg-purple"></i>
											<p>
												<span class="text">Weekly meeting in 1 hour</span>
												<span class="timestamp">2 hours ago</span>
											</p>
										</a>
									</li>
									<li>
										<a href="#" class="notification-item">
											<i class="fa fa-check custom-bg-green"></i>
											<p>
												<span class="text">Your request has been approved</span>
												<span class="timestamp">3 days ago</span>
											</p>
										</a>
									</li>
									<li><a href="#" class="more">See all notifications</a></li>
								</ul>
							</li>
							<li class="dropdown">
								<a href="#" id="tour-help" class="dropdown-toggle" data-toggle="dropdown"><i class="ti-help"></i> <span class="hide">Help</span></a>
								<ul class="dropdown-menu">
									<li><a href="#"><i class="ti-direction"></i> Basic Use</a></li>
									<li><a href="#"><i class="ti-server"></i> Working With Data</a></li>
									<li><a href="#"><i class="ti-lock"></i> Security</a></li>
									<li><a href="#"><i class="ti-light-bulb"></i> Troubleshooting</a></li>
								</ul>
							</li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
									<img src="../resources/assets/img/user.png" alt="Avatar">
									<span>Samuel</span>
								</a>
								<ul class="dropdown-menu logged-user-menu">
									<li><a href="#"><i class="ti-user"></i> <span>My Profile</span></a></li>
									<li><a href="appviews-inbox"><i class="ti-email"></i> <span>Message</span></a></li>
									<li><a href="#"><i class="ti-settings"></i> <span>Settings</span></a></li>
									<li><a href="page-lockscreen"><i class="ti-power-off"></i> <span>Logout</span></a></li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
			</nav>
			<!-- END NAVBAR -->
			
			
			<!-- LEFT SIDEBAR -->
			<div id="sidebar-nav" class="sidebar">
				<nav>
					<ul class="nav" id="sidebar-nav-menu">
						<li class="menu-group">Main</li>
						<li class="panel"><a href="index" data-toggle="collapse"
							data-parent="#sidebar-nav-menu" class="active"><i
								class="ti-dashboard"></i> <span class="title">MainHome</span> <i
								class="icon-submenu ti-angle-left"></i></a> <!-- <div id="dashboards" class="collapse in">
									<ul class="submenu">
										<li><a href="index" class="active">Dashboard v1 <span class="label label-info">UPDATED</span></a></li>
										<li><a href="dashboard2">Dashboard v2</a></li>
										<li><a href="dashboard3">Dashboard v3</a></li>
										<li><a href="dashboard4">Dashboard v4 <span class="label label-success">NEW</span></a></li>
									</ul>
								</div> --></li>
						<li class="panel"><a href="#subLayouts" data-toggle="collapse"
							data-parent="#sidebar-nav-menu" class="collapsed"><i
								class="ti-layout"></i> <span class="title">e메일</span> <i
								class="icon-submenu ti-angle-left"></i></a>
							<div id="subLayouts" class="collapse">
								<ul class="submenu">
									<li><a href="../appviews-inbox">받은메일함 <span
											class="label label-success">NEW</span></a></li>
									<li><a href="../layout-minified">Minified</a></li>
									<li><a href="../layout-fullwidth">Fullwidth</a></li>
									<li><a href="../layout-default">Default</a></li>
									<li><a href="../layout-grid">Grid</a></li>
								</ul>
							</div></li>
						<li class="panel"><a href="#forms" data-toggle="collapse"
							data-parent="#sidebar-nav-menu" class="collapsed"><i
								class="ti-receipt"></i> <span class="title">스케줄 관리</span> <i
								class="icon-submenu ti-angle-left"></i></a>
							<div id="forms" class="collapse ">
								<ul class="submenu">
									<li><a href="../forms-inputs">Inputs</a></li>
									<li><a href="../forms-multiselect">Multiselect</a></li>
									<li><a href="../forms-input-pickers">Input Pickers</a></li>
									<li><a href="../forms-input-sliders">Input Sliders</a></li>
									<li><a href="../forms-select2">Select2</a></li>
									<li><a href="../forms-xeditable">In-place Editing</a></li>
									<li><a href="../forms-dragdropupload">Drag and Drop Upload</a></li>
									<li><a href="../forms-layouts">Form Layouts</a></li>
									<li><a href="../forms-validation">Form Validation</a></li>
									<li><a href="../forms-texteditor">Text Editor</a></li>
								</ul>
							</div></li>
						<li class="panel"><a href="#appViews" data-toggle="collapse"
							data-parent="#sidebar-nav-menu" class="collapsed"><i
								class="ti-layout-tab-window"></i> <span class="title">개인정보관리</span>
								<i class="icon-submenu ti-angle-left"></i></a>
							<div id="appViews" class="collapse ">
								<ul class="submenu">
									<li><a href="../appviews-project-detail">Project Details</a></li>
									<li><a href="../appviews-projects">Projects</a></li>
									<li><a href="../appviews-inbox">Inbox <span class="badge">8</span></a></li>
									<li><a href="../appviews-file-manager">File Manager</a></li>
								</ul>
							</div></li>
	
						<li class="panel"><a href="#uiElements" data-toggle="collapse"
							data-parent="#sidebar-nav-menu" class="collapsed"><i
								class="ti-panel"></i> <span class="title">프로젝트관리</span> <i
								class="icon-submenu ti-angle-left"></i></a>
							<div id="uiElements" class="collapse ">
								<ul class="submenu">
									<li><a href="../ui-sweetalert">Sweet Alert</a></li>
									<li><a href="../ui-treeview">Tree View</a></li>
									<li><a href="../ui-wizard">Wizard</a></li>
									<li><a href="../ui-dragdrop-panel">Drag &amp; Drop Panel</a></li>
									<li><a href="../ui-nestable">Nestable</a></li>
									<li><a href="../ui-gauge">Gauge <span
											class="label label-success">NEW</span></a></li>
									<li><a href="../ui-panels">Panels</a></li>
									<li><a href="../ui-progressbars">Progress Bars</a></li>
									<li><a href="../ui-tabs">Tabs</a></li>
									<li><a href="../ui-buttons">Buttons <span
											class="label label-info">UPDATED</span></a></li>
									<li><a href="../ui-bootstrap">Bootstrap UI</a></li>
									<li><a href="../ui-social-buttons">Social Buttons</a></li>
									<li><a href="../ui-icons">Icons</a></li>
								</ul>
							</div></li>
						<li class="panel"><a href="#charts" data-toggle="collapse"
							data-parent="#sidebar-nav-menu" class="collapsed"><i
								class="ti-pie-chart"></i> <span class="title">업무지원</span> <i
								class="icon-submenu ti-angle-left"></i></a>
							<div id="charts" class="collapse ">
								<ul class="submenu">
									<li><a href="../charts-chartjs">Chart.js</a></li>
									<li><a href="../charts-chartist">Chartist</a></li>
									<li><a href="../charts-flot">Flot Chart</a></li>
									<li><a href="../charts-sparkline">Sparkline Chart</a></li>
								</ul>
							</div></li>
							
							
						
						<li class="panel">
								<a href="#" data-toggle="collapse" data-target="#submenuDemo" data-parent="#sidebar-nav-menu" class="active">
									<i class="ti-widget"></i> 
									<span class="title">
										전자 결재
									</span>
									<i class="icon-submenu ti-angle-left"></i>
								</a>
								<div id="submenuDemo" class="collapse in"><!-- collapse : 서브메뉴 닫혀있음 collapse in : 서브메뉴 열려있음 -->
								
									<ul class="submenu">
										<li><a href="myApproval">내 결제</a></li>
										<li><a href="writeApproval" class="active">결재 작성</a></li>
										<li><a href="#">Submenu 3</a></li>
									</ul>
									
								</div>
						</li>		
								
								
								
						<li><a href="meet/meetingList"><i class="ti-bell"></i> <span
								class="title">화상회의</span> <span class="badge">15</span></a></li>
	
						<li class="panel"><a href="#subPages" data-toggle="collapse"
							data-parent="#sidebar-nav-menu" class="collapsed"><i
								class="ti-files"></i> <span class="title">자원예약</span> <i
								class="icon-submenu ti-angle-left"></i></a>
							<div id="subPages" class="collapse ">
								<ul class="submenu">
									<li><a href="../page-profile">Profile</a></li>
									<li><a href="../page-login">Login</a></li>
									<li><a href="../page-register">Register</a></li>
									<li><a href="../page-lockscreen">Lockscreen</a></li>
									<li><a href="../page-forgot-password">Forgot Password</a></li>
									<li><a href="../page-404">Page 404</a></li>
									<li><a href="../page-500">Page 500</a></li>
									<li><a href="../page-blank">Blank Page</a></li>
								</ul>
							</div></li>
						<li><a href="../typography"><i class="ti-paragraph"></i> <span
								class="title">게시판</span></a></li>
						<li class="panel"><a href="#" data-toggle="collapse"
							data-target="#submenuDemo" data-parent="#sidebar-nav-menu"
							class="collapsed"><i class="ti-menu"></i> <span class="title">Multilevel
									Menu</span><i class="icon-submenu ti-angle-left"></i></a>
							<div id="submenuDemo" class="collapse">
								<ul class="submenu">
									<li class="panel"><a href="#" data-toggle="collapse"
										data-target="#submenuDemoLv2" class="collapsed">Submenu 1 <i
											class="icon-submenu ti-angle-left"></i></a>
										<div id="submenuDemoLv2" class="collapse">
											<ul class="submenu">
												<li><a href="#">Another menu level</a></li>
												<li><a href="#">Another menu level</a></li>
												<li><a href="#">Another menu level</a></li>
											</ul>
										</div></li>
									<li><a href="javascript:test1()">회의실</a></li>
									<li><a href="meet/annyangTest">음성 테스트</a></li>
								</ul>
							</div></li>
					</ul>
					<button type="button" class="btn-toggle-minified"
						title="Toggle Minified Menu">
						<i class="ti-arrows-horizontal"></i>
					</button>
				</nav>
			</div>
			<!-- END LEFT SIDEBAR -->
		
		
		
		
			<!-- MAIN -->
			<div class="main">
				<!-- MAIN CONTENT -->
				<div class="main-content">
					<div class="content-heading clearfix">
						<div class="heading-left">
							<h1 class="page-title">Text Editor</h1>
							<p class="page-subtitle">WYSIWYG and markdown editor.</p>
						</div>
						<ul class="breadcrumb">
							<li><a href="#"><i class="fa fa-home"></i> Home</a></li>
							<li><a href="#">Forms</a></li>
							<li class="active">Text Editor</li>
						</ul>
					</div>
					
					
					
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-12">	<!-- 뒤에 숙자가 크기 조절 -->
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">결재 작성</h3>
									</div>
									<div class="panel-body">
									
										<!-- 폼 태그 -->
										<form action="insertApproval" method="post" enctype="multipart/form-data">
										<!-- <form id="insertApproval" method="post" enctype="multipart/form-data" novalidate>	 -->
											<div class="form-group">
												<!-- <label class="control-label">결재 제목</label> -->
												<label>결재 제목</label>
												<input type="text" class="form-control" id="eApproval_title" name="eApproval_title" required>
											</div>
											
											<div class="form-group">
												<label>결재 내용</label>
												<textarea class="form-control" rows="5" cols="30" id="eApproval_content" name="eApproval_content" required></textarea>
											</div>
											
											
											
											<!-- 결재선 --> 
											<div class="form-group">
												<div class="container-fluid">												
													<div class="col-md-10">
														<!-- BASIC TABLE -->
														<div class="panel">
															<div class="panel-heading">
																<h3 class="panel-title">결재선</h3>
															</div>
															<div class="panel-body">
																<button type="button" class="btn btn-primary btn-lg" onclick="openLineSet()">결재선 불러오기</button>
																<br><br>
																<table class="table">
																	<thead>
																		<tr>
																			<th>담당</th>
																			<th>팀장</th>
																			<th>부서장</th>
																			<th>본부장</th>
																		</tr>
																	</thead>
																	<tbody>
																		<tr>
																			<td>
																				<div class="form-group">																					
																					<input type="hidden" id="eApprovalLine_id" name="eApprovalLine_id" readonly="readonly">
																					<input type="text" id="loginId" readonly="readonly">
																				</div>																			
																			</td>
																		
																		
																			<td>
																				<div class="form-group">																					
																					<input type="text" id="eApprovalLine_person1" readonly="readonly">
																				</div>																			
																			</td>
																			
																			<td>
																				<div class="form-group">																					
																					<input type="text" id="eApprovalLine_person2" readonly="readonly">
																				</div>																			
																			</td>
																			
																			<td>
																				<div class="form-group">																					
																					<input type="text" id="eApprovalLine_person3" readonly="readonly">
																				</div>																			
																			</td>																			
																			
																		</tr>
																		
																		
																	</tbody>
																</table>
															</div>
														</div>
														<!-- END BASIC TABLE -->
													</div>
													
												</div>		
											</div>		
											
										
											<!-- 시작 마감 날짜 -->
											<!-- DATE PICKER -->
											<div class="form-group">	
												<label>기한</label>
												<br>
												<div class="col-md-6">
													<div class="form-group">
														<div class="input-daterange input-group" data-provide="datepicker">
															<input type="text" class="input-sm form-control" name="eApproval_sDate" required>
															<span class="input-group-addon">to</span>
															<input type="text" class="input-sm form-control" name="eApproval_fDate" required>
														</div>
													</div>
												</div>
											</div>
											
											<br><br>
								
											<!-- 첨부파일 darg and drop -->
											<div class="form-group">	
												<label>첨부파일</label>
												<br>
												<div class="col-md-6">
													<input type="file" class="dropify" name="upload">
												</div>
											</div>
											
											<br><br><br><br><br><br><br><br><br><br>
											<div id="submitBtAlign">
												<button type="submit" class="btn btn-primary btn-lg">작성</button>
											</div>
								<!-- END DATE PICKER -->
						
											
											
											
											
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
					
					
				</div>
				<!-- END MAIN CONTENT -->
				
				
				
				
				
				<!-- RIGHT SIDEBAR -->
				<div id="sidebar-right" class="right-sidebar">
					<div class="sidebar-widget">
						<h4 class="widget-heading"><i class="fa fa-calendar"></i> TODAY</h4>
						<p class="date">Wednesday, 22 December</p>
						<div class="row margin-top-30">
							<div class="col-xs-4">
								<a href="#">
									<div class="icon-transparent-area custom-color-blue first">
										<i class="fa fa-tasks"></i>
										<span>Tasks</span>
										<span class="badge">5</span>
									</div>
								</a>
							</div>
							<div class="col-xs-4">
								<a href="#">
									<div class="icon-transparent-area custom-color-green">
										<i class="fa fa-envelope"></i>
										<span>Mail</span>
										<span class="badge">12</span>
									</div>
								</a>
							</div>
							<div class="col-xs-4">
								<a href="#">
									<div class="icon-transparent-area custom-color-orange last">
										<i class="fa fa-user-plus"></i>
										<span>Users</span>
										<span class="badge">24</span>
									</div>
								</a>
							</div>
						</div>
					</div>
					<div class="sidebar-widget">
						<div class="widget-header">
							<h4 class="widget-heading">YOUR APPS</h4>
							<a href="#" class="show-all">Show all</a>
						</div>
						<div class="row">
							<div class="col-xs-3">
								<a href="#" class="icon-app" title="Dropbox" data-toggle="tooltip" data-placement="top">
									<i class="fa fa-dropbox dropbox-color"></i>
								</a>
							</div>
							<div class="col-xs-3">
								<a href="#" class="icon-app" title="WordPress" data-toggle="tooltip" data-placement="top">
									<i class="fa fa-wordpress wordpress-color"></i>
								</a>
							</div>
							<div class="col-xs-3">
								<a href="#" class="icon-app" title="Drupal" data-toggle="tooltip" data-placement="top">
									<i class="fa fa-drupal drupal-color"></i>
								</a>
							</div>
							<div class="col-xs-3">
								<a href="#" class="icon-app" title="Github" data-toggle="tooltip" data-placement="top">
									<i class="fa fa-github github-color"></i>
								</a>
							</div>
						</div>
					</div>
					<div class="sidebar-widget">
						<div class="widget-header">
							<h4 class="widget-heading">MY PROJECTS</h4>
							<a href="#" class="show-all">Show all</a>
						</div>
						<ul class="list-unstyled list-project-progress">
							<li>
								<a href="#" class="project-name">Project XY</a>
								<div class="progress progress-xs progress-transparent custom-color-orange">
									<div class="progress-bar" role="progressbar" aria-valuenow="67" aria-valuemin="0" aria-valuemax="100" style="width:67%"></div>
								</div>
								<span class="percentage">67%</span>
							</li>
							<li>
								<a href="#" class="project-name">Growth Campaign</a>
								<div class="progress progress-xs progress-transparent custom-color-blue">
									<div class="progress-bar" role="progressbar" aria-valuenow="23" aria-valuemin="0" aria-valuemax="100" style="width:23%"></div>
								</div>
								<span class="percentage">23%</span>
							</li>
							<li>
								<a href="#" class="project-name">Website Redesign</a>
								<div class="progress progress-xs progress-transparent custom-color-green">
									<div class="progress-bar" role="progressbar" aria-valuenow="87" aria-valuemin="0" aria-valuemax="100" style="width:87%"></div>
								</div>
								<span class="percentage">87%</span>
							</li>
						</ul>
					</div>
					<div class="sidebar-widget">
						<div class="widget-header">
							<h4 class="widget-heading">MY FILES</h4>
							<a href="#" class="show-all">Show all</a>
						</div>
						<ul class="list-unstyled list-justify list-file-simple">
							<li><a href="#"><i class="fa fa-file-word-o"></i>Proposal_draft.docx</a>
								<span>4 MB</span>
							</li>
							<li><a href="#"><i class="fa fa-file-pdf-o"></i>Manual_Guide.pdf</a>
								<span>20 MB</span>
							</li>
							<li><a href="#"><i class="fa fa-file-zip-o"></i>all-project-files.zip</a>
								<span>315 MB</span>
							</li>
							<li><a href="#"><i class="fa fa-file-excel-o"></i>budget_estimate.xls</a>
								<span>1 MB</span>
							</li>
						</ul>
					</div>
					<p class="text-center"><a href="#" class="btn btn-default btn-xs">More Widgets</a></p>
				</div>
				<!-- END RIGHT SIDEBAR -->
			</div>
			<!-- END MAIN -->
			<div class="clearfix"></div>
			<footer>
				<div class="container-fluid">
					<p class="copyright">&copy; 2017 <a href="https://www.themeineed.com" target="_blank">Theme I Need</a>. All Rights Reserved.</p>
				</div>
			</footer>
		</div>
		<!-- END WRAPPER -->
		<!-- Javascript -->
		<script src="../resources/assets/vendor/jquery/jquery.min.js"></script>
		<script src="../resources/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="../resources/assets/vendor/pace/pace.min.js"></script>
		<script src="../resources/assets/vendor/summernote/summernote.min.js"></script>
		<script src="../resources/assets/vendor/markdown/markdown.js"></script>
		<script src="../resources/assets/vendor/to-markdown/to-markdown.js"></script>
		<script src="../resources/assets/vendor/bootstrap-markdown/bootstrap-markdown.js"></script>
		<script src="../resources/assets/scripts/klorofilpro-common.js"></script>
		<script src="../resources/assets/vendor/dropify/js/dropify.min.js"></script>
		<!-- datepicker -->
		<script src="../resources/assets/vendor/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
		
		<!-- DEMO PANEL -->
		<!-- for demo purpose only, you should remove it on your project directory -->
		<script type="text/javascript">
		
		/* DROPIFY */
		$(function()
		{
			$('.dropify').dropify();
			var drEvent = $('#dropify-event').dropify();
			drEvent.on('dropify.beforeClear', function(event, element)
			{
				return confirm("Do you really want to delete \"" + element.file.name + "\" ?");
			});
			drEvent.on('dropify.afterClear', function(event, element)
			{
				alert('File deleted');
			});
			$('.dropify-fr').dropify(
			{
				messages:
				{
					default: 'Glissez-déposez un fichier ici ou cliquez',
					replace: 'Glissez-déposez un fichier ou cliquez pour remplacer',
					remove: 'Supprimer',
					error: 'Désolé, le fichier trop volumineux'
				}
			});
		});
		
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
			
			
			
			/*-----------------------------------/
			/*	DATE PICKER
			/*----------------------------------*/
			$('.inline-datepicker').datepicker(
			{
				todayHighlight: true
			});
			
			
			});
		
		
	
			
		</script>	
			
			
		
		
		
		
		<div id="demo-panel">
			<a href="#" onclick="toggleDemoPanel(event);"><i class="fa fa-cog fa-spin"></i></a>
			<iframe src="../resources/demo-panel/index.html"></iframe>
		</div>
		<!-- END DEMO PANEL -->
		
	</body>
</html>