<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<title>Layout Minified | Klorofil Pro - Bootstrap Admin
	Dashboard Template</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!-- VENDOR CSS -->
<link rel="stylesheet"
	href="resources/assets/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="resources/assets/vendor/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="resources/assets/vendor/themify-icons/css/themify-icons.css">
<link rel="stylesheet"
	href="resources/assets/vendor/pace/themes/orange/pace-theme-minimal.css">
<!-- MAIN CSS -->
<link rel="stylesheet" href="resources/assets/css/main.css">
<link rel="stylesheet"
	href="resources/assets/css/skins/sidebar-nav-darkgray.css"
	type="text/css">
<link rel="stylesheet" href="resources/assets/css/skins/navbar3.css"
	type="text/css">
<!-- FOR DEMO PURPOSES ONLY. You should/may remove this in your project -->
<link rel="stylesheet" href="resources/assets/css/demo.css">
<link rel="stylesheet" href="resources/demo-panel/style-switcher.css">
<!-- ICONS -->
<link rel="apple-touch-icon" sizes="76x76"
	href="resources/assets/img/apple-icon.png">
<link rel="icon" type="image/png" sizes="96x96"
	href="resources/assets/img/favicon.png">

<script src='resources/js/jquery-3.2.1.min.js'></script>
<link href='resources/schedule/fullcalendar.css' rel='stylesheet' />
<link href='resources/schedule/fullcalendar.print.css' rel='stylesheet'
	media='print' />
<script src='resources/schedule/moment.min.js'></script>
<script src='resources/schedule/fullcalendar.js'></script>
<script src='resources/schedule/jquery-ui.js'></script>
<link href='resources/schedule/jquery-ui.css' rel='stylesheet' />
<link href='resources/schedule/scheduler.min.css' rel='stylesheet'
	media='print' />
<script src='resources/schedule/scheduler.min.js'></script>
<script src='resources/schedule/gcal.js'></script>

<script type="text/javascript">
	$(document)
			.ready(
					function() {
						$("#calendar_Month")
								.fullCalendar(
										{
											schedulerLicenseKey : 'GPL-My-Project-Is-Open-Source',
											selectable : true,
											navLinks : true,
											defaultView:"agendaWeek",
											header : {
												left : "prev",
												center : "title",
												right : "next"
											},
											
											monthNames : [ '1월', '2월', '3월',
													'4월', '5월', '6월', '7월',
													'8월', '9월', '10월', '11월',
													'12월' ],
											monthNamesShort : [ '1월', '2월',
													'3월', '4월', '5월', '6월',
													'7월', '8월', '9월', '10월',
													'11월', '12월' ],
											dayNames : [ '일', '월', '화', '수',
													'목', '금', '토' ],
											dayNamesShort : [ '일', '월', '화',
													'수', '목', '금', '토' ],
											dayNamesMin : [ '일', '월', '화', '수',
													'목', '금', '토' ],
											lang : "ko",
											contentHeight : 455,
											/* editable : true, */
											eventLimit : true,
											googleCalendarApiKey : "AIzaSyDcnW6WejpTOCffshGDDb4neIrXVUA1EAE",
											eventSources : [
													{
														googleCalendarId : "ko.south_korea#holiday@group.v.calendar.google.com",
														className : "koHolidays",
														color : "#ffffff",
														textColor : "#000000"
													},
													{
														googleCalendarId : "ja.japanese#holiday@group.v.calendar.google.com",
														className : "jpHolidays",
														color : "#ffffff",
														textColor : "#000000"
													}
											],
											groupByResource : true,
											resources : ${MRlist},
											events: ${RRlist},
											select : function(startDate,
													endDate, event, view,
													resource, split) {
												/* alert('selected ' + startDate.format() + ' to ' + endDate.format() + 'resource id' + resource.id ); */

												var schedule_sdate = document.getElementById('R_reservation_sdate');
												schedule_sdate.value = startDate.format();
												var schedule_fdate = document.getElementById('R_reservation_fdate');
												schedule_fdate.value = endDate.format();
												var resource_id = document.getElementById('resource_id');
												resource_id.value = resource.id;
											
												$("#dialog-addMessage").dialog({
													width : "600px"
												});
											},
											eventClick: function(calEvent, jsEvent, view) {
												var curDate = new Date();
												var curTime = curDate.getFullYear() + "-" + (curDate.getMonth() + 1) + "-" + curDate.getDate() + " " + curDate.getHours() + ":" + curDate.getMinutes();
												
												var R_reservation_id = document.getElementById('R_reservation_id');
												R_reservation_id.value = calEvent.id;

			
												$("#dialog-readMessage").dialog({
													width : "600px"
												});
											},
											loading : function(bool) {
												jQuery("#loading").toggle(bool);
											}
										});/* fullCalendar end */
										
						$("#calendar_Day")
						.fullCalendar(
								{
									schedulerLicenseKey : 'GPL-My-Project-Is-Open-Source',
									header : {	
										left : "prev ",
										center : "title",
										right : "next "
									},
									defaultView:"list",
									
									lang : "ko",
									contentHeight : 455,
									eventLimit : true,
									googleCalendarApiKey : "AIzaSyDcnW6WejpTOCffshGDDb4neIrXVUA1EAE",
									eventSources : [
											{
												googleCalendarId : "ko.south_korea#holiday@group.v.calendar.google.com",
												className : "koHolidays",
												color : "#f5f6f9",
												textColor : "#000000"
											},
											{
												googleCalendarId : "ja.japanese#holiday@group.v.calendar.google.com",
												className : "jpHolidays",
												color : "#f5f6f9",
												textColor : "#000000"
											}
									],
									groupByResource : true,
									resources : ${MRlist},
									events: ${RRlist},
									loading : function(bool) {
										jQuery("#loading").toggle(bool);
									}
								});
					});

	function scheduleChoice(num, id, distinct, color, text) {
		if (jQuery(".swingBar").eq(num).is(":checked")) {
			jQuery("#calendar").fullCalendar("addEventSource", {
				googleCalendarId : id,
				className : distinct,
				color : color,
				textColor : text
			});
		} else {
			jQuery("#calendar").fullCalendar("removeEventSource", {
				googleCalendarId : id
			});
		}
	}
					
	function change_check(){
		var change__importance = document.getElementById('change_check');
		alert(change__importance.value);
	}
</script>
</head>
<body class="sidebar-minified">
	<!-- WRAPPER -->
	<div id="wrapper">
		<!-- NAVBAR -->
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="brand">
				<a href="index"> <img src="resources/assets/img/logo-white.png"
					alt="Klorofil Pro Logo" class="img-responsive logo">
				</a>
			</div>
			<div class="container-fluid">
				<div id="tour-fullwidth" class="navbar-btn">
					<button type="button" class="btn-toggle-fullwidth">
						<i class="ti-arrow-circle-left"></i>
					</button>
				</div>
				<form class="navbar-form navbar-left search-form">
					<input type="text" value="" class="form-control"
						placeholder="Search dashboard...">
					<button type="button" class="btn btn-default">
						<i class="fa fa-search"></i>
					</button>
				</form>
				<div id="navbar-menu">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#" class="btn-toggle-rightsidebar"> <i
								class="ti-layout-sidebar-right"></i>
						</a></li>
						<li class="dropdown"><a href="#"
							class="dropdown-toggle icon-menu" data-toggle="dropdown"> <i
								class="ti-bell"></i> <span class="badge bg-danger">5</span>
						</a>
							<ul class="dropdown-menu notifications">
								<li>You have 5 new notifications</li>
								<li><a href="#" class="notification-item"> <i
										class="fa fa-hdd-o custom-bg-red"></i>
										<p>
											<span class="text">System space is almost full</span> <span
												class="timestamp">11 minutes ago</span>
										</p>
								</a></li>
								<li><a href="#" class="notification-item"> <i
										class="fa fa-tasks custom-bg-yellow"></i>
										<p>
											<span class="text">You have 9 unfinished tasks</span> <span
												class="timestamp">20 minutes ago</span>
										</p>
								</a></li>
								<li><a href="#" class="notification-item"> <i
										class="fa fa-book custom-bg-green2"></i>
										<p>
											<span class="text">Monthly report is available</span> <span
												class="timestamp">1 hour ago</span>
										</p>
								</a></li>
								<li><a href="#" class="notification-item"> <i
										class="fa fa-bullhorn custom-bg-purple"></i>
										<p>
											<span class="text">Weekly meeting in 1 hour</span> <span
												class="timestamp">2 hours ago</span>
										</p>
								</a></li>
								<li><a href="#" class="notification-item"> <i
										class="fa fa-check custom-bg-green"></i>
										<p>
											<span class="text">Your request has been approved</span> <span
												class="timestamp">3 days ago</span>
										</p>
								</a></li>
								<li><a href="#" class="more">See all notifications</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" id="tour-help"
							class="dropdown-toggle" data-toggle="dropdown"><i
								class="ti-help"></i> <span class="hide">Help</span></a>
							<ul class="dropdown-menu">
								<li><a href="#"><i class="ti-direction"></i> Basic Use</a></li>
								<li><a href="#"><i class="ti-server"></i> Working With
										Data</a></li>
								<li><a href="#"><i class="ti-lock"></i> Security</a></li>
								<li><a href="#"><i class="ti-light-bulb"></i>
										Troubleshooting</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> <img
								src="resources/assets/img/user.png" alt="Avatar"> <span>Samuel</span>
						</a>
							<ul class="dropdown-menu logged-user-menu">
								<li><a href="#"><i class="ti-user"></i> <span>My
											Profile</span></a></li>
								<li><a href="appviews-inbox"><i class="ti-email"></i> <span>Message</span></a></li>
								<li><a href="#"><i class="ti-settings"></i> <span>Settings</span></a></li>
								<li><a href="page-lockscreen"><i class="ti-power-off"></i>
										<span>Logout</span></a></li>
							</ul></li>
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
					<li class="panel"><a href="#dashboards" data-toggle="collapse"
						data-parent="#sidebar-nav-menu" class="collapsed"><i
							class="ti-dashboard"></i> <span class="title">Dashboards</span> <i
							class="icon-submenu ti-angle-left"></i></a>
						<div id="dashboards" class="collapse ">
							<ul class="submenu">
								<li><a href="index">Dashboard v1 <span
										class="label label-info">UPDATED</span></a></li>
								<li><a href="dashboard2">Dashboard v2</a></li>
								<li><a href="dashboard3">Dashboard v3</a></li>
								<li><a href="dashboard4">Dashboard v4 <span
										class="label label-success">NEW</span></a></li>
							</ul>
						</div></li>
					<li class="panel"><a href="#subLayouts" data-toggle="collapse"
						data-parent="#sidebar-nav-menu" class="active"><i
							class="ti-layout"></i> <span class="title">Layouts</span> <i
							class="icon-submenu ti-angle-left"></i></a>
						<div id="subLayouts" class="collapse in">
							<ul class="submenu">
								<li><a href="layout-topnav">Top Navigation <span
										class="label label-success">NEW</span></a></li>
								<li><a href="layout-minified" class="active">Minified</a></li>
								<li><a href="layout-fullwidth">Fullwidth</a></li>
								<li><a href="layout-default">Default</a></li>
								<li><a href="layout-grid">Grid</a></li>
							</ul>
						</div></li>
					<li class="panel"><a href="#forms" data-toggle="collapse"
						data-parent="#sidebar-nav-menu" class="collapsed"><i
							class="ti-receipt"></i> <span class="title">Forms</span> <i
							class="icon-submenu ti-angle-left"></i></a>
						<div id="forms" class="collapse ">
							<ul class="submenu">
								<li><a href="forms-inputs">Inputs</a></li>
								<li><a href="forms-multiselect">Multiselect</a></li>
								<li><a href="forms-input-pickers">Input Pickers</a></li>
								<li><a href="forms-input-sliders">Input Sliders</a></li>
								<li><a href="forms-select2">Select2</a></li>
								<li><a href="forms-xeditable">In-place Editing</a></li>
								<li><a href="forms-dragdropupload">Drag and Drop Upload</a></li>
								<li><a href="forms-layouts">Form Layouts</a></li>
								<li><a href="forms-validation">Form Validation</a></li>
								<li><a href="forms-texteditor">Text Editor</a></li>
							</ul>
						</div></li>
					<li class="panel"><a href="#appViews" data-toggle="collapse"
						data-parent="#sidebar-nav-menu" class="collapsed"><i
							class="ti-layout-tab-window"></i> <span class="title">App
								Views</span> <i class="icon-submenu ti-angle-left"></i></a>
						<div id="appViews" class="collapse ">
							<ul class="submenu">
								<li><a href="appviews-project-detail">Project Details</a></li>
								<li><a href="appviews-projects">Projects</a></li>
								<li><a href="appviews-inbox">Inbox <span class="badge">8</span></a></li>
								<li><a href="appviews-file-manager">File Manager</a></li>
							</ul>
						</div></li>
					<li class="panel"><a href="#tables" data-toggle="collapse"
						data-parent="#sidebar-nav-menu" class="collapsed"><i
							class="ti-layout-grid2"></i> <span class="title">Tables</span> <i
							class="icon-submenu ti-angle-left"></i></a>
						<div id="tables" class="collapse ">
							<ul class="submenu">
								<li><a href="tables-static">Static Tables</a></li>
								<li><a href="tables-dynamic">Dynamic Tables</a></li>
							</ul>
						</div></li>
					<li class="menu-group">Components</li>
					<li class="panel"><a href="#uiElements" data-toggle="collapse"
						data-parent="#sidebar-nav-menu" class="collapsed"><i
							class="ti-panel"></i> <span class="title">UI Elements</span> <i
							class="icon-submenu ti-angle-left"></i></a>
						<div id="uiElements" class="collapse ">
							<ul class="submenu">
								<li><a href="ui-sweetalert">Sweet Alert</a></li>
								<li><a href="ui-treeview">Tree View</a></li>
								<li><a href="ui-wizard">Wizard</a></li>
								<li><a href="ui-dragdrop-panel">Drag &amp; Drop Panel</a></li>
								<li><a href="ui-nestable">Nestable</a></li>
								<li><a href="ui-gauge">Gauge <span
										class="label label-success">NEW</span></a></li>
								<li><a href="ui-panels">Panels</a></li>
								<li><a href="ui-progressbars">Progress Bars</a></li>
								<li><a href="ui-tabs">Tabs</a></li>
								<li><a href="ui-buttons">Buttons <span
										class="label label-info">UPDATED</span></a></li>
								<li><a href="ui-bootstrap">Bootstrap UI</a></li>
								<li><a href="ui-social-buttons">Social Buttons</a></li>
								<li><a href="ui-icons">Icons</a></li>
							</ul>
						</div></li>
					<li class="panel"><a href="#charts" data-toggle="collapse"
						data-parent="#sidebar-nav-menu" class="collapsed"><i
							class="ti-pie-chart"></i> <span class="title">Charts</span> <i
							class="icon-submenu ti-angle-left"></i></a>
						<div id="charts" class="collapse ">
							<ul class="submenu">
								<li><a href="charts-chartjs">Chart.js</a></li>
								<li><a href="charts-chartist">Chartist</a></li>
								<li><a href="charts-flot">Flot Chart</a></li>
								<li><a href="charts-sparkline">Sparkline Chart</a></li>
							</ul>
						</div></li>
					<li><a href="widgets"><i class="ti-widget"></i> <span
							class="title">Widgets</span></a></li>
					<li><a href="notifications"><i class="ti-bell"></i> <span
							class="title">Notifications</span> <span class="badge">15</span></a></li>
					<li class="panel"><a href="#maps" data-toggle="collapse"
						data-parent="#sidebar-nav-menu" class="collapsed"><i
							class="ti-map"></i> <span class="title">Maps</span> <i
							class="icon-submenu ti-angle-left"></i></a>
						<div id="maps" class="collapse ">
							<ul class="submenu">
								<li><a href="maps-jqvmap">JQVMap</a></li>
								<li><a href="maps-mapael">Mapael</a></li>
							</ul>
						</div></li>
					<li class="menu-group">Extras</li>
					<li class="panel"><a href="#subPages" data-toggle="collapse"
						data-parent="#sidebar-nav-menu" class="collapsed"><i
							class="ti-files"></i> <span class="title">Pages</span> <i
							class="icon-submenu ti-angle-left"></i></a>
						<div id="subPages" class="collapse ">
							<ul class="submenu">
								<li><a href="page-profile">Profile</a></li>
								<li><a href="page-login">Login</a></li>
								<li><a href="page-register">Register</a></li>
								<li><a href="page-lockscreen">Lockscreen</a></li>
								<li><a href="page-forgot-password">Forgot Password</a></li>
								<li><a href="page-404">Page 404</a></li>
								<li><a href="page-500">Page 500</a></li>
								<li><a href="page-blank">Blank Page</a></li>
							</ul>
						</div></li>
					<li><a href="typography"><i class="ti-paragraph"></i> <span
							class="title">Typography</span></a></li>
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
											<li><a href="#" class="active">Another menu level</a></li>
											<li><a href="#">Another menu level</a></li>
										</ul>
									</div></li>
								<li><a href="#">Submenu 2</a></li>
								<li><a href="#">Submenu 3</a></li>
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
					<div style="width: 100%; display: table-cell; float: center;">
						<div class="barkKategorie">
							<label><b>일정 관리</b></label>
							
						
							
						</div>
						<div>
							<ul class="breadcrumb">
							<li><a href="#"><i class="fa fa-home"></i> Home</a></li>
							<li><a href="#">App Views</a></li>
							<li class="active">Inbox</li>
							</ul>
							</div>
						<!-- 
						<div class="barKategorie"
							style="background-color: #FFF; color: #000000;">
							<label> <input type="checkbox" class="swingBar"
								onChange="scheduleChoice(0, 'ko.south_korea#holiday@group.v.calendar.google.com', 'usaHolidays', '#f5f6f9', '#000000');"
								checked /> &nbsp;대한민국 공휴일
							</label>
						</div>

						<div class="barKategorie"
							style="background-color: #FFF; color: #000000;">
							<label> <input type="checkbox" class="swingBar"
								onChange="scheduleChoice(1, 'ja.japanese#holiday@group.v.calendar.google.com', 'jpHolidays', '#f5f6f9', '#000000');"
								checked /> &nbsp;日本の祝日
							</label>
						</div>
						 -->
					
					</div>
				</div>
				<div class="col-md-9">
					<div class="panel">
						<div class="panel-body no-padding">
							<div id="calendar_Month"></div>
						</div>
					</div>
				</div>
				
				<div class="col-md-3">
					<div class="panel">
						<div class="panel-body no-padding">
							<div id="calendar_Day"></div>
						</div>
					</div>
				</div>
				<div class="container-fluid">

					<div id="calendar"></div>
					<div id="dialog-addMessage" title="예약 하기" style="display: none;">
						<form action="ConferenceRoom03_add" method="post">
							<input type="hidden" id="resource_id" name="resource_id">
							<table>
								<tr>
									<td>사원 명</td>
									<td><input type="text" value="${userName}" readonly>
									</td>
									<td>부서 명</td>
									<td><input type="text" value="${userDepartment}"
										name="R_reservation_type" readonly></td>
								</tr>
								<tr>
									<td>시작 날짜</td>
									<td><input type="text" id="R_reservation_sdate"
										name="R_reservation_sdate" readonly></td>
									<td>종료 날짜</td>
									<td><input type="text" id="R_reservation_fdate"
										name="R_reservation_fdate" readonly></td>
								</tr>
								<tr>
									<td colspan="4" align="center"><input type="submit"
										value="등록하기" align="center"></td>
								</tr>
							</table>
						</form>
					</div>
				</div>
					<div id="dialog-readMessage" title="상세보기" style="display: none;">
						<form action="ConferenceRoom03_delete" method="post">
							<input type="hidden" name="R_reservation_id" id="R_reservation_id">
							<table>
								<tr>
									<td colspan="7" align="center"><input type="submit"
										value="삭제하기" align="center"></td>
								</tr>
							</table>
						</form>
					</div>
			</div>
				<!-- END MAIN CONTENT -->
				<!-- RIGHT SIDEBAR -->
				<div id="sidebar-right" class="right-sidebar">
					<div class="sidebar-widget">
						<h4 class="widget-heading">
							<i class="fa fa-calendar"></i> TODAY
						</h4>
						<p class="date">Wednesday, 22 December</p>
						<div class="row margin-top-30">
							<div class="col-xs-4">
								<a href="#">
									<div class="icon-transparent-area custom-color-blue first">
										<i class="fa fa-tasks"></i> <span>Tasks</span> <span
											class="badge">5</span>
									</div>
								</a>
							</div>
							<div class="col-xs-4">
								<a href="#">
									<div class="icon-transparent-area custom-color-green">
										<i class="fa fa-envelope"></i> <span>Mail</span> <span
											class="badge">12</span>
									</div>
								</a>
							</div>
							<div class="col-xs-4">
								<a href="#">
									<div class="icon-transparent-area custom-color-orange last">
										<i class="fa fa-user-plus"></i> <span>Users</span> <span
											class="badge">24</span>
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
								<a href="#" class="icon-app" title="Dropbox"
									data-toggle="tooltip" data-placement="top"> <i
									class="fa fa-dropbox dropbox-color"></i>
								</a>
							</div>
							<div class="col-xs-3">
								<a href="#" class="icon-app" title="WordPress"
									data-toggle="tooltip" data-placement="top"> <i
									class="fa fa-wordpress wordpress-color"></i>
								</a>
							</div>
							<div class="col-xs-3">
								<a href="#" class="icon-app" title="Drupal"
									data-toggle="tooltip" data-placement="top"> <i
									class="fa fa-drupal drupal-color"></i>
								</a>
							</div>
							<div class="col-xs-3">
								<a href="#" class="icon-app" title="Github"
									data-toggle="tooltip" data-placement="top"> <i
									class="fa fa-github github-color"></i>
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
							<li><a href="#" class="project-name">Project XY</a>
								<div
									class="progress progress-xs progress-transparent custom-color-orange">
									<div class="progress-bar" role="progressbar" aria-valuenow="67"
										aria-valuemin="0" aria-valuemax="100" style="width: 67%"></div>
								</div> <span class="percentage">67%</span></li>
							<li><a href="#" class="project-name">Growth Campaign</a>
								<div
									class="progress progress-xs progress-transparent custom-color-blue">
									<div class="progress-bar" role="progressbar" aria-valuenow="23"
										aria-valuemin="0" aria-valuemax="100" style="width: 23%"></div>
								</div> <span class="percentage">23%</span></li>
							<li><a href="#" class="project-name">Website Redesign</a>
								<div
									class="progress progress-xs progress-transparent custom-color-green">
									<div class="progress-bar" role="progressbar" aria-valuenow="87"
										aria-valuemin="0" aria-valuemax="100" style="width: 87%"></div>
								</div> <span class="percentage">87%</span></li>
						</ul>
					</div>
					<div class="sidebar-widget">
						<div class="widget-header">
							<h4 class="widget-heading">MY FILES</h4>
							<a href="#" class="show-all">Show all</a>
						</div>
						<ul class="list-unstyled list-justify list-file-simple">
							<li><a href="#"><i class="fa fa-file-word-o"></i>Proposal_draft.docx</a>
								<span>4 MB</span></li>
							<li><a href="#"><i class="fa fa-file-pdf-o"></i>Manual_Guide.pdf</a>
								<span>20 MB</span></li>
							<li><a href="#"><i class="fa fa-file-zip-o"></i>all-project-files.zip</a>
								<span>315 MB</span></li>
							<li><a href="#"><i class="fa fa-file-excel-o"></i>budget_estimate.xls</a>
								<span>1 MB</span></li>
						</ul>
					</div>
					<p class="text-center">
						<a href="#" class="btn btn-default btn-xs">More Widgets</a>
					</p>
				</div>
				<!-- END RIGHT SIDEBAR -->
			</div>
			<!-- END MAIN -->
			<div class="clearfix"></div>
			<footer>
				<div class="container-fluid">
					<p class="copyright">
						&copy; 2017 <a href="https://www.themeineed.com" target="_blank">Theme
							I Need</a>. All Rights Reserved.
					</p>
				</div>
			</footer>
		</div>
		<!-- END WRAPPER -->
		<!-- Javascript -->
		<script src="resources/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="resources/assets/vendor/pace/pace.min.js"></script>
		<script src="resources/assets/scripts/klorofilpro-common.js"></script>
		<!-- DEMO PANEL -->
		<!-- for demo purpose only, you should remove it on your project directory -->
		<script type="text/javascript">
		var toggleDemoPanel = function(e) {
			e.preventDefault();
			var panel = document.getElementById('demo-panel');
			if (panel.className)
				panel.className = '';
			else
				panel.className = 'active';
		}
		// fix each iframe src when back button is clicked
		$(function() {
			$('iframe').each(function() {
				this.src = this.src;
			});
		});
	</script>
		<div id="demo-panel">
			<a href="#" onclick="toggleDemoPanel(event);"><i
				class="fa fa-cog fa-spin"></i></a>
			<iframe src="resources/demo-panel/index.html"></iframe>
		</div>
		<!-- END DEMO PANEL -->
</body>
</html>