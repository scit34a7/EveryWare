<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<title>Everyware | Schedule</title>
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
											header : {
												left : "prev, next",
												center : "title",
												right : "agendaWeek, month"
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
											events: ${Slist}
											,
											select : function(startDate,
													endDate, event, view,
													resource) {
												var curDate = new Date();
												var curTimeMonth = curDate.getFullYear() + "-" + (curDate.getMonth() + 1) + "-" + curDate.getDate();
												var curTimeWeek = curDate.getFullYear() + "-" + (curDate.getMonth() + 1) + "-" + curDate.getDate() + "T" + curDate.getHours() + ":" + curDate.getMinutes() + ":" + curDate.getSeconds();
												/* alert('selected ' + startDate.format() + ' to ' + endDate.format() + 'sysdate' + curTime); */
												
												var schedule_sdate = document.getElementById('schedule_sdate');
												schedule_sdate.value = startDate.format();
												var schedule_fdate = document.getElementById('schedule_fdate');
												schedule_fdate.value = endDate.format();
												
												
												
												var regDate = document.getElementById('regDate');
												regDate.value = curTimeMonth;
												
												var startDateCheck = startDate.format();
												var endDateCheckMonth = curTimeMonth;
												var endDateCheckWeek = curTimeWeek;	
												
												if(view.name == 'month')
												{
													$("#search").click(function(){
														
														
														var startDateArr = startDateCheck.split('-');						        
												        var endDateArr = endDateCheckMonth.split('-');
												                 
												        var startDateCompare = new Date(startDateArr[0], parseInt(startDateArr[1])-1, startDateArr[2]);
												        var endDateCompare = new Date(endDateArr[0], parseInt(endDateArr[1])-1, endDateArr[2]);
												         
												        if(startDateCompare.getTime() < endDateCompare.getTime()) {            
												            alert(curTimeMonth + " 보다 이전 날짜의 일정은 등록할 수 없습니다.");                        										        	
												            location.reload();
												            return false;
												        }	
													});
												}
												else
												{
													$("#search").click(function(){
														/* - : T 자르자 */
														var startDateArr1 = startDateCheck.split('-');
														var startDateArr2 = startDateArr1[2].split('T');
														var startDateArr3 = startDateArr2[1].split(':');
														
														var endDateArr1 = endDateCheckWeek.split('-');
														var endDateArr2 = endDateArr1[2].split('T');
														var endDateArr3 = endDateArr2[1].split(':');
													
												        var startDateCompare = new Date(startDateArr1[0], parseInt(startDateArr1[1])-1, startDateArr2[0], startDateArr3[0], startDateArr3[1], startDateArr3[2]);
												        var endDateCompare = new Date(endDateArr1[0], parseInt(endDateArr1[1])-1, endDateArr2[0], endDateArr3[0], endDateArr3[1], endDateArr3[2]);												      
												       
												        if(startDateCompare.getTime() < endDateCompare.getTime()) {            
												            alert(curTimeWeek + " 보다 이전 날짜의 일정은 등록할 수 없습니다.");                        
												            location.reload();
												            return false;
												        }
													});
												}
			
												$("#dialog-addMessage").dialog({
													width : "600px"
												});
											},
											eventClick: function(calEvent, jsEvent, view) {
												var curDate = new Date();
												var curTime = curDate.getFullYear() + "-" + (curDate.getMonth() + 1) + "-" + curDate.getDate() + " " + curDate.getHours() + ":" + curDate.getMinutes();
												
												var schedule_num = document.getElementById('schedule_num');
												schedule_num.value = calEvent.id;
												
												$.ajax({  
													  url: 'get_Schedule',  
													  data: {schedule_num: calEvent.id}, 
													  success: function(result)
													  {
														console.log(result);
														var user_name = document.getElementById('user_name');
														user_name.value = result.user_name;
														var schedule_regdate = document.getElementById('schedule_regdate');
														schedule_regdate.value = result.schedule_regdate;
														var schedule_memo = document.getElementById('schedule_memo');
														schedule_memo.value = result.schedule_memo;
														var schedule_memo = document.getElementById('schedule_memo');
														schedule_memo.value = result.schedule_memo;
														
														alert(${userId} + '비교' + ${resultid} +'비교');
														$("#dialog-readMessage").dialog({
															width : "550px"
														});
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
										left : " ",
										center : "prev, next",
										right : " "
									},
									defaultView:"list",
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
									events: ${Slist},
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
						data-parent="#sidebar-nav-menu" class="collapsed"><i
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
						data-parent="#sidebar-nav-menu" class="active"><i
							class="ti-receipt"></i> <span class="title">스케줄 관리</span> <i
							class="icon-submenu ti-angle-left"></i></a>
						<div id="forms" class="collapse in">
							<ul class="submenu">
								<li><a href="schedule" class="active">개인 및 부서일정 관리</a></li>
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
						<h1 class="page-title">일정 관리</h1>
						<p class="page-subtitle">
							<strong>일정을 등록, 삭제, 관리</strong>할 수 있습니다.
						</p>
					</div>
					<ul class="breadcrumb">

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
				<div class="panel" id="dialog-addMessage" title="일정 입력하기"
					style="display: none;">
					<form action="Schedule_add" method="post">
						<input type="hidden" name="user_id" value="${userId}"> <input
							type="hidden" name="project_id" value="${project_id}"> <input
							type="hidden" id="regDate" name="schedule_regdate">
						<table>
							<tr>
								<td>일정 명 :&nbsp&nbsp</td>

								<td><input type="text" id="" name="schedule_name"
									required="required"
									style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px;"></td>

								<td><input type="radio" name="schedule_group" value="개인"
									checked="checked">개인 일정<br> <input type="radio"
									name="schedule_group" value="${userDepartment}">부서 일정<br>
									<!-- <input type="radio" name="schedule_group" value="2">프로젝트 일정<br> -->
								</td>
								<td style="widows: 10%"><label class="switch-input">
										<input type="checkbox" name="switch-checkbox"
										id="switch-checkbox" onchange="change_check"> <i
										data-swon-text="YES" data-swoff-text="NO"></i>
										<p style="color: black;">중요</p>
								</label></td>
							</tr>
							<tr>
								<td>사원 명 :&nbsp&nbsp</td>

								<td><input type="text" name="user_name" value="${userName}"
									readonly
									style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px;">
								</td>

								<td>부서 명 :&nbsp&nbsp</td>

								<td style="width: 1%"><input type="text"
									value="${userDepartment}" name="R_reservation_type" readonly
									style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px;"></td>
							</tr>
							<tr>
								<td>시작 :&nbsp&nbsp</td>

								<td><input type="text" id="schedule_sdate"
									name="schedule_sdate" readonly
									style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px;"></td>

								<td>종료 :&nbsp&nbsp</td>

								<td><input type="text" id="schedule_fdate"
									name="schedule_fdate" readonly
									style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px;"></td>
							</tr>
							<tr>
								<td>메모</td>
								<td colspan="6"><input type="text" name="schedule_memo"></td>
							</tr>
							<tr>
								<td colspan="7" align="center"><input type="submit"
									value="등록하기" align="center" id="search"></td>
							</tr>
						</table>
					</form>
				</div>
				<div id="dialog-readMessage" title="일정 상세보기" style="display: none;">
					<table>
						<form action="Schedule_delete" method="post">
							<input type="hidden" name="schedule_num" id="schedule_num">
						<tr>
							<td align="center"><input type="text" readonly="readonly"
								id="user_name"
								style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px; , text-align: center;"></td>
							<td><input type="text" readonly="readonly"
								id="schedule_regdate"
								style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px;"></td>

							<td colspan="2"><input type="text" readonly="readonly"
								id="schedule_memo"
								style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px;"></td>
						</tr>
						<tr>
								<td align="center" colspan="3"><input type="submit" value="삭제하기"
									></td>
							</tr>
						<c:if test="${userId eq result_id}">
							<tr>
								<td><p>아이디 체크</p></td>
							</tr>
						</c:if>
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

</body>
</html>