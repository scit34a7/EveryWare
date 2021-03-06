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
											/* 
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
													'목', '금', '토' ], */
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
													resource) {
												/* alert('selected ' + startDate.format() + ' to ' + endDate.format() + 'resource id' + resource.id ); */
												var curDate = new Date();
												var curTime = curDate.getFullYear() + "-" + (curDate.getMonth() + 1) + "-" + curDate.getDate() + " " + curDate.getHours() + ":" + curDate.getMinutes() + ":" + curDate.getSeconds();
					
												var schedule_sdate = document.getElementById('R_reservation_sdate');
												schedule_sdate.value = startDate.format();
												var schedule_fdate = document.getElementById('R_reservation_fdate');
												schedule_fdate.value = endDate.format();
												var resource_id = document.getElementById('resource_id');
												resource_id.value = resource.id;
											
												var regDate = document.getElementById('regDate');
												regDate.value = curTime;
												
												$("#search").click(function(){
													
													var startDateCheck = startDate.format();
													var endDateCheck = curTime;
													
													
													
													var startDateArr1 = startDateCheck.split('-');
													var startDateArr2 = startDateArr1[2].split('T');
													var startDateArr3 = startDateArr2[1].split(':');
													
													var endDateArr1 = endDateCheck.split('-');
													var endDateArr2 = endDateArr1[2].split(' ');
													var endDateArr3 = endDateArr2[1].split(':');
													
													var startDateCompare = new Date(startDateArr1[0], parseInt(startDateArr1[1])-1, startDateArr2[0], startDateArr3[0], startDateArr3[1], startDateArr3[2]);
											        var endDateCompare = new Date(endDateArr1[0], parseInt(endDateArr1[1])-1, endDateArr2[0], endDateArr3[0], endDateArr3[1], endDateArr3[2]);												      
											       
											        if(startDateCompare.getTime() < endDateCompare.getTime()) {            
											            alert(curTime + " 보다 이전 날짜의 일정은 등록할 수 없습니다.");                        
											            location.reload();
											            return false;
											        }
												});
												
												$("#dialog-addMessage").dialog({
													width : "600px"
												});
											},
											eventClick: function(calEvent, jsEvent, view) {
												var R_reservation_id = document.getElementById('R_reservation_id');
												R_reservation_id.value = calEvent.id;
												
												$.ajax({  
													  url: 'get_R_reservation',  
													  data: {R_reservation_id: calEvent.id}, 
													  success: function(result)
													  {
														console.log(result);
														
														var userName = '${userName}';
														if(userName == result.r_reservation_userName){
															
															var r_reservation_regDate = document.getElementById('r_reservation_regDateD');
															r_reservation_regDate.value = result.r_reservation_regDate;
															var r_reservation_memo = document.getElementById('r_reservation_memoD');
															r_reservation_memo.value = result.r_reservation_memo;
															
															$("#dialog-readMessageD").dialog({
																width : "550px"
															});
														}
														else{
															var r_reservation_userName = document.getElementById('r_reservation_userName');
															r_reservation_userName.value = result.r_reservation_userName;
															var r_reservation_regDate = document.getElementById('r_reservation_regDate');
															r_reservation_regDate.value = result.r_reservation_regDate;
															var r_reservation_memo = document.getElementById('r_reservation_memo');
															r_reservation_memo.value = result.r_reservation_memo;
															
															$("#dialog-readMessage").dialog({
																width : "550px"	
															});
														}
													  }
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
				<form class="navbar-form navbar-left search-form"></form>
				<div id="navbar-menu">
					<ul class="nav navbar-nav navbar-right">

						<li class="dropdown"><a href="#"
							class="dropdown-toggle icon-menu" data-toggle="dropdown"> <i
								class="ti-bell"></i> <c:if test="${empty pushList == false}">
									<span class="badge bg-danger">NEW</span>
								</c:if>
						</a>
							<ul class="dropdown-menu notifications">
								<c:if test="${pushList!= null }">
									<li>알림이 있습니다.</li>
									<c:forEach var="push" items="${pushList}">
										<li><a href='javascript:void(0)'
											onclick="isPush(${push.push_id})" class="notification-item">

												<c:if test="${push.push_type eq '일정'}">
													<i class="fa fa-bullhorn custom-bg-purple"></i>
												</c:if> <c:if test="${push.push_type eq '결재'}">
													<i class="fa fa-book custom-bg-green2"></i>
												</c:if>

												<p>
													<span class="text">${push.push_title}</span> <span
														class="timestamp">${push.push_time}</span>
												</p>
										</a></li>
									</c:forEach>
								</c:if>
							</ul></li>

						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> <span>${sessionScope.userName}</span>
						</a>
							<ul class="dropdown-menu logged-user-menu">
								<li><a href="<c:url value ='/user/userInfo'/>"><i
										class="ti-user"></i> <span>개인정보</span></a></li>
								<li><a href="<c:url value ='/mail/getMail?sort=all'/>"><i
										class="ti-email"></i> <span>Mail</span></a></li>
								<li><a href="<c:url value ='/user/logout'/>"><i
										class="ti-power-off"></i> <span>로그아웃</span></a></li>
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
								<li><a href="./mail/getMail?sort=all">받은메일함 <c:if
											test="${mailRead>0}">
											<span class="label label-success">NEW</span>
										</c:if>

								</a></li>
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

					<li class="panel"><a href="#approval" data-toggle="collapse"
						data-parent="#sidebar-nav-menu" class="collapsed"> <i
							class="ti-widget"></i> <span class="title">전자결재</span> <i
							class="icon-submenu ti-angle-left"></i>
					</a>
						<div id="approval" class="collapse">
							<ul class="submenu">
								<li><a href="approval/myApproval">내 결재</a></li>
								<li><a href="approval/writeApproval">결재 작성</a></li>
								<li><a href="approval/approvalFormat">결재 양식 작성</a></li>
							</ul>

						</div></li>
					<li class="panel"><a href="#" data-toggle="collapse"
						data-target="#submenuDemo" data-parent="#sidebar-nav-menu"
						class="collapsed"><i class="ti-menu"></i> <span class="title">화상회의
						</span><i class="icon-submenu ti-angle-left"></i></a>
						<div id="submenuDemo" class="collapse">
							<ul class="submenu">
								<li><a href="meet/meetingList">회의실</a></li>
								<li><a href="meet/minutes">회외록</a></li>
							</ul>
						</div></li>

					<li class="panel"><a href="#subPages" data-toggle="collapse"
						data-parent="#sidebar-nav-menu" class="active"><i
							class="ti-files"></i> <span class="title">자원예약</span> <i
							class="icon-submenu ti-angle-left"></i></a>
						<div id="subPages" class="collapse in">
							<ul class="submenu">
								<li><a href="resource" class="active">자원 예약 관리</a></li>
							</ul>
						</div></li>


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
						<h1 class="page-title">자원예약관리</h1>
						<p class="page-subtitle">
							<strong>회사자원(회의실,노트북,업무용 차량 등)에 대한 예약 및 관리 </strong>가 가능합니다.
						</p>
					</div>
					<ul class="breadcrumb">
						<input type="button" class="btn btn-primary btn-toastr"
							value="뒤로가기" onClick="history.back();">
					</ul>
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
						<form action="Resource_add" method="post">
							<input type="hidden" id="resource_id" name="resource_id">
							<input type="hidden" id="regDate" name="r_reservation_regDate">
							<table>
								<tr>
									<td>사원 명</td>
									<td><input type="text" name="r_reservation_userName"
										value="${userName}" readonly></td>
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
									<td>상세 설명</td>
									<td colspan="5"><textarea id="memo"
											name="r_reservation_memo"
											style="position: relative; border-style: none; height: 32px; width: 420px" placeholder="공란도 등록 가능합니다."></textarea></td>
								</tr>
								<tr>
									<td colspan="4" align="center"><input type="submit"
										value="등록하기" align="center" id="search"></td>
								</tr>
							</table>
						</form>
					</div>
				</div>
				<div id="dialog-readMessage" title="상세보기" style="display: none;">
						<table>
							<tr>
								<td>등록자</td>
								<td>등록 날짜</td>
								<td>상세 설명</td>
							</tr>
							<tr>
								<td><input type="text" id="r_reservation_userName" readonly="readonly" style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px;"></td>
								<td><input type="text" id="r_reservation_regDate" readonly="readonly" style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px;"></td>
								<td><input type="text" id="r_reservation_memo" readonly="readonly" style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px;"></td>
							</tr>
						</table>
					</form>
				</div>
				<div id="dialog-readMessageD" title="일정 상세보기" style="display: none;">
					<table>
						<form action="Resource_delete" method="post">
							<input type="hidden" name="R_reservation_id" id="R_reservation_id">
							<table>
								<tr>
									
									<td>등록 날짜</td>
									<td>상세 설명</td>
									<td rowspan="2" align="center" colspan="3"><input type="submit"
								value="삭제하기"></td>
								</tr>
								<tr>
									
									<td><input type="text" id="r_reservation_regDateD" readonly="readonly" style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px;"></td>
									<td><input type="text" id="r_reservation_memoD" readonly="readonly" style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px;"></td>
								</tr>
							</table>
						</form>
					</table>
				</div>
			</div>
			<!-- END MAIN CONTENT -->
			<!-- RIGHT SIDEBAR -->

			<!-- END RIGHT SIDEBAR -->
		</div>
		<!-- END MAIN -->
		<div class="clearfix"></div>
		<footer>
			<div class="container-fluid">
				<p class="copyright">
					&copy; 2018 <a href="index" target="_blank">EveryWare</a>. All
					Rights Reserved.
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

	<!-- END DEMO PANEL -->
</body>
</html>