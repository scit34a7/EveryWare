<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<title>Everyware | Resource</title>
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
											contentHeight : 445,
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
											
												var curDate = new Date();
												var curTime = curDate.getFullYear() + "-" + (curDate.getMonth() + 1) + "-" + curDate.getDate() + " " + curDate.getHours() + ":" + curDate.getMinutes();
												
												var regDate = document.getElementById('regDate');
												regDate.value = curTime;
												
												$("#dialog-addMessage").dialog({
													width : "600px"
												});
											},
											eventClick: function(calEvent, jsEvent, view) {
												
												
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
									contentHeight : 445,
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
					
				</form>
				<div id="navbar-menu">
					<ul class="nav navbar-nav navbar-right">
						
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
						
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">  <span>${sessionScope.userName}</span>
						</a>
							<ul class="dropdown-menu logged-user-menu">
								<li><a href="<c:url value ='/user/userInfo'/>" ><i class="ti-user"></i> <span>개인정보</span></a></li>
								<li><a href="<c:url value ='/mail/getMail?sort=all'/>" ><i class="ti-email"></i> <span>Mail</span></a></li>
								<li><a href="<c:url value ='/user/logout'/>" ><i class="ti-power-off"></i>
										<span>로그아웃</span></a></li>
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
					<li class="panel"><a href="index" data-toggle="collapse"
						data-parent="#sidebar-nav-menu" class="active"><i
							class="ti-dashboard"></i> <span class="title">MainHome</span> <i
							class="icon-submenu ti-angle-left"></i></a></li>
					<li class="panel"><a href="#subLayouts" data-toggle="collapse"
						data-parent="#sidebar-nav-menu" class="collapsed"><i
							class="ti-layout"></i> <span class="title">e메일</span> <i
							class="icon-submenu ti-angle-left"></i></a>
						<div id="subLayouts" class="collapse">
							<ul class="submenu">
								<li><a href="./mail/getMail?sort=all">받은메일함 <span
										class="label label-success">NEW</span></a></li>
								<li><a href="./mail/getMail?sort=send">보낸메일함</a></li>
								<li><a href="./mail/sendMail">편지쓰기</a></li>
								<li><a href="./mail/getMail?sort=important">중요편지함</a></li>
							</ul>
						</div></li>
					<li class="panel"><a href="#forms" data-toggle="collapse"
						data-parent="#sidebar-nav-menu" class="collapsed"><i
							class="ti-receipt"></i> <span class="title">스케줄 관리</span> <i
							class="icon-submenu ti-angle-left"></i></a>
						<div id="forms" class="collapse ">
							<ul class="submenu">
								<li><a href="schedule">개인 및 부서일정 관리</a></li>
							</ul>
						</div></li>
					<li class="panel"><a href="#appViews" data-toggle="collapse"
						data-parent="#sidebar-nav-menu" class="collapsed"><i
							class="ti-layout-tab-window"></i> <span class="title">개인정보관리</span>
							<i class="icon-submenu ti-angle-left"></i></a>
						<div id="appViews" class="collapse ">
							<ul class="submenu">
								<li><a href="user/userInfo">내 정보</a></li>
								<li><a href="user/update">내 정보 수정</a></li>
								<li><a href="user/userList">주소록</a></li>
							</ul>
						</div></li>

					<li class="panel"><a href="#charts" data-toggle="collapse"
						data-parent="#sidebar-nav-menu" class="collapsed"><i
							class="ti-pie-chart"></i> <span class="title">업무지원</span> <i
							class="icon-submenu ti-angle-left"></i></a>
						<div id="charts" class="collapse ">
							<ul class="submenu">
								<li><a href="support/supportMain">근태확인</a></li>
								<li><a href="support/attendList">근태현황</a></li>
								<li><a href="support/boardList">업무보고</a></li>
							</ul>
						</div></li>
						
						<!-- collapse : 서브메뉴 닫혀있음 collapse in : 서브메뉴 열려있음 -->
						
					<li class="panel">
						<a href="#approval" data-toggle="collapse" data-parent="#sidebar-nav-menu" class="collapsed">
							<i class="ti-widget"></i>
							<span class="title">전자결재</span> 
							<i class="icon-submenu ti-angle-left"></i>
						</a>
						<div id="approval" class="collapse">
							<ul class="submenu">
								<li><a href="approval/myApproval">내 결재</a></li>
								<li><a href="approval/writeApproval">결재 작성</a></li>
								<li><a href="approval/approvalFormat">결재 양식 작성</a></li>
							</ul>
								
						</div>
					</li>
			<li class="panel"><a href="#" data-toggle="collapse"
						data-target="#submenuDemo" data-parent="#sidebar-nav-menu"
						class="collapsed"><i class="ti-menu"></i> <span class="title">화상회의
						</span><i class="icon-submenu ti-angle-left"></i></a>
						<div id="submenuDemo" class="collapse">
							<ul class="submenu">
								<li><a href="meet/meetingList">회의실</a></li>
								<li><a href="meet/minutes">회외록</a></li>
							</ul>
						</div>
					</li>

					<li class="panel"><a href="#subPages" data-toggle="collapse"
						data-parent="#sidebar-nav-menu" class="collapsed"><i
							class="ti-files"></i> <span class="title">자원예약</span> <i
							class="icon-submenu ti-angle-left"></i></a>
						<div id="subPages" class="collapse ">
							<ul class="submenu">
								<li><a href="resource">자원 예약 관리</a></li>
							</ul>
						</div></li>
					<!-- <li><a href="typography"><i class="ti-paragraph"></i> <span
							class="title">게시판</span></a></li> -->
							
							<li class="panel"><a href="#board" data-toggle="collapse"
						data-parent="#sidebar-nav-menu" class="collapsed"><i
							class="ti-pie-chart"></i> <span class="title">게시판</span> <i
							class="icon-submenu ti-angle-left"></i></a>
						<div id="board" class="collapse">
							<ul class="submenu">
								<li><a href="board/boardList?boardFolder_id=1">공지사항</a></li>
								<li><a href="board/boardList?boardFolder_id=2">부서게시판</a></li>
								<li><a href="board/boardList?boardFolder_id=3">커뮤니티</a></li>
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
						<h1 class="page-title">자원예약 관리</h1>
						<p class="page-subtitle">
							<input type="button" class="btn btn-primary btn-toastr" value="뒤로가기" onClick="history.back();">
						</p>
					</div>
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
						<form action="Resource_add" method="post">
							<input type="hidden" id="resource_id" name="resource_id">
							<table>
								<tr>
									<td>사원 명</td>
									<td><input type="text" name="userName" value="${userName}" readonly>
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
									<td>등록 날짜</td>
									<td><input type="text" id="regDate" name="regDate" readonly="readonly"></td>
									<td>메 모</td>
									<td><input type="text" id="memo" name="memo" required="required"></td>
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
						<form action="Resource_delete" method="post">
							<input type="hidden" name="R_reservation_id" id="R_reservation_id">
							<table border="1">
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
						&copy; 2018 <a href="https://www.themeineed.com" target="_blank">EveryWare</a>. All Rights Reserved.
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