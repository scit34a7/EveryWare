<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<title>Welcome to EveryWare</title>
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
<link rel="stylesheet"
	href="resources/assets/css/vendor/animate/animate.min.css">
<link rel="stylesheet"
	href="resources/assets/vendor/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css">
<link rel="stylesheet"
	href="resources/assets/vendor/x-editable/bootstrap3-editable/css/bootstrap-editable.css">
<link rel="stylesheet"
	href="resources/assets/vendor/bootstrap-tour/css/bootstrap-tour.min.css">
<link rel="stylesheet"
	href="resources/assets/vendor/jqvmap/jqvmap.min.css">
<link rel="stylesheet" href="resources/assets/vendor/slick/slick.css">
<link rel="stylesheet" href="resources/assets/vendor/slick/slick-theme.css">

<!-- 공지사항 -->
<link rel="stylesheet"
	href="resources/assets/vendor/datatables/css-main/jquery.dataTables.min.css">
<link rel="stylesheet"
	href="resources/assets/vendor/datatables/css-bootstrap/dataTables.bootstrap.min.css">
<link rel="stylesheet"
	href="resources/assets/vendor/datatables-tabletools/css/dataTables.tableTools.css">

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

<!-- 스케줄 시작 -->
<script src="resources/assets/vendor/jquery/jquery.min.js"></script>
<link href='resources/schedule/fullcalendar.css' rel='stylesheet' />
<link href='resources/schedule/fullcalendar.print.css' rel='stylesheet'
	media='print' />
	<script src="resources/assets/vendor/moment/min/moment.min.js"></script>
<script src='resources/schedule/fullcalendar.js'></script>
<script src='resources/schedule/jquery-ui.js'></script>
<link href='resources/schedule/jquery-ui.css' rel='stylesheet' />
<link href='resources/schedule/scheduler.min.css' rel='stylesheet'
	media='print' />
<script src='resources/schedule/scheduler.min.js'></script>
<script src='resources/schedule/gcal.js'></script>
<!-- 스케줄 끝 -->
<!-- 근태관리 시간 출력 -->
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
											 events: ${Mlist}
											, 
											select : function(startDate,
													endDate, event, view,
													resource, split) {
												/* alert('selected ' + startDate.format() + ' to ' + endDate.format() + 'resource id' + resource.id ); */

												var schedule_sdate = document.getElementById('schedule_sdate');
												schedule_sdate.value = startDate.format();
												var schedule_fdate = document.getElementById('schedule_fdate');
												schedule_fdate.value = endDate.format();
												$("#dialog-addMessage").dialog({
													width : "600px"
												});
											},
											eventClick: function(calEvent, jsEvent, view) {
												var curDate = new Date();
												var curTime = curDate.getFullYear() + "-" + (curDate.getMonth() + 1) + "-" + curDate.getDate() + " " + curDate.getHours() + ":" + curDate.getMinutes();
												
												var schedule_num = document.getElementById('schedule_num');
												schedule_num.value = calEvent.id;
			
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
									events: ${Mlist},
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
<script>

	// 브라우저 종류
      var ie4 = document.all; // Explorer
      var ns6 = document.getElementById && !document.all; // Netscape
   
   // 시간 표시 방법
   // 0 = 24, 1 = 12
   var my12_hour = 1;

   // 날짜를 출력할지 선택
   // 0 = No, 1 = Yes
   var DisplayDate = 1;
   var mn = "일";
   var yn = "년";

   var daysOfWeek = ["<font color=red>일</font>", "월", "화", "수", "목", "금", "<font color=blue>토</font>"];
   var monthsOfYear = ["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"];

   function showClock() {
       var today = new Date();
		
       var day = today.getDay(); // 요일(0:일요일, 1:월요일, 2:화요일, 3:수요일, 4:목요일, 5:금요일, 6:토요일)
       var mday = today.getDate(); // 일
       var month = today.getMonth(); // 월 (0부터 시작)
       var year = today.getFullYear(); // 년
       
       var hours = today.getHours(); // 시간
       var minutes = today.getMinutes(); // 분
       var seconds = today.getSeconds(); // 초

       // 시간 표시 설정
       var dn='';
       if (my12_hour) {
           dn = "AM";
           if (hours > 12) { 
               dn = "PM"; 
               hours = hours - 12; 
           }
           if (hours == 0) {
               hours = 12; 
           }
       } 
       
       if (minutes <= 9) { 
           minutes = "0" + minutes; 
       }
       if (seconds <= 9) { 
           seconds = "0" + seconds; 
       }

       // 화면에 출력시킬 날짜 설정
       myclock = '';
       if (DisplayDate) { 
           myclock += year + yn + ' ' + monthsOfYear[month] + ' ' +  mday + mn + ' '  + '('+daysOfWeek[day]+') ' 
       }
       myclock += hours + ':' + minutes + ':' + seconds;
       myclock += ' ' + dn;

       // 브라우저에 따라 객체에 HTML 추가
       if (ie4) {
           liveClock.innerHTML = myclock;
       } else if (ns6) {
           document.getElementById("liveClock").innerHTML = myclock;
               }            

       setTimeout("showClock()", 1000); //1초마다 실행
   }
</script>
<!-- //근태관리 시간출력 끝 -->

<script>
function isPush(pushNum) {
	$.ajax({
		url: 'pushCheck',
		type: 'post',
		data: {isPush: true, push_id: pushNum},
		contentType: "application/x-www-form-urlencoded; charset=UTF-8",  
		datatype: 'json',
		success: function(isCorrect) {
		},
		error: function (e) {
			alert('실패');
		}
	});
}
</script>


<script>
	var w;
	function test1() {
		w = window
				.open(
						'meet/meetingList',
						'MeetingList',
						'width=1000, height=600, location=no, menubar=no, resizable=no, status= no, toolbar=no');
	}
</script>

<!--  광고 /  -->
<style>

 .right {
  float: right;
  width: 100%;
  height: 100%;
  position: relative;
  background-image: url("resources/assets/img/login-bg.jpg");
  background-repeat: no-repeat;
  background-size: cover;
}

.right:before {
  display: inline-block;
  vertical-align: middle;
  *vertical-align: auto;
  *zoom: 1;
  *display: inline;
  content: ' ';
  vertical-align: middle;
  height: 100%;
}

.right .text {
  position: relative;
  padding: 0 30px;
  color: #fff;
}

 .right  {
  margin-top: 0;
  margin-bottom: 5px;
  font-size: 26px;
  font-weight: 300;
}

.right p {
  margin: 0;
  font-size: 18px;
  font-weight: 300;
}

.right .overlay {
  position: absolute;
  top: 0;
  display: block;
  width: 100%;
  height: 100%;
  background: rgba(99, 156, 185, 0.92);
}


li.active{
 background-color: #00aaff;
}

ul.inbox-list-message{

 font-color: black;
}

</style>

</head>
<body onLoad="showClock()">
	<!-- WRAPPER -->
	<div id="wrapper" class="basic test">
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
								class="ti-bell"></i> 
								
							<c:if test="${empty pushList == false}">
								<span class="badge bg-danger">NEW</span>
							</c:if>
						</a>
							<ul class="dropdown-menu notifications">
									<c:forEach var="push" items="${pushList}">
										<li><a href='javascript:void(0)' onclick="isPush(${push.push_id})" class="notification-item"> 
										
											<c:if test="${push.push_type eq '일정'}">
												<i class="fa fa-bullhorn custom-bg-purple"></i>
											</c:if>
											
											<c:if test="${push.push_type eq '결재'}">
												<i class="fa fa-book custom-bg-green2"></i>
											</c:if>
										
												<p>
													<span class="text">${push.push_title}</span> <span
														class="timestamp">${push.push_time}</span>
												</p>
										</a></li>
									</c:forEach>
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
								<li><a href="./mail/getMail?sort=all">받은메일함
								
								<c:if test="${mailRead>0}">
								 <span class="label label-success">NEW</span>
								</c:if>
								
								</a>
								</li>
								
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
						<h1 class="page-title">Welcome to EveryWare</h1>
						<p class="page-subtitle">Giving you a Smart Work
							Experience_only by A7.corp</p>
					</div>
					<ul class="breadcrumb">
						
					</ul>
				</div>
				
				<div class="container-fluid">
					<!-- TOP METRICS -->
					<!-- END TOP METRICS -->
					<!-- 근태확인 시작 -->
					<div class="row sortable-grid" >
						<div class="col-md-6 sortable-item "> <!--   -->
							<div class="panel" >
								<div class="panel-heading">
									<h2 class="panel-title">근태확인</h2>
								</div>
								<div class="panel-body" >

									<div class="col-md-2" style = "text-align:center;">
											<c:choose>
											<c:when test="${attendCheck == true}">
											<form action="support/attendCheck" method="POST"
												id="attendInForm">
												<button type="submit" class="btn btn-primary" id="attendIn">
													<i class="ti-alarm-clock award-icon" style = "font-size:15px;"></i>출근
												</button>
											</form>
											</c:when>
									
											<c:otherwise>
												<form action="support/attendOut" method="POST"
												id="attendOutForm">
												<button type="submit" class="btn btn-danger" id="attendOut">
													<i class="ti-location-arrow award-icon" style = "font-size:15px;"></i>퇴근
												</button>
												</form>
											</c:otherwise>
											</c:choose>
									</div>	
									<div class="col-md-7">
										<center>
											<h4 id="liveClock"></h4>
										</center>
									</div>

									<div class="col-md-3">
										<div>
											<c:choose>
												<c:when test="${attendCheck == true}">
										
													${userName}님.<br>출근하세요.
											
												</c:when>
											</c:choose>	
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6 sortable-item ">
						<div class="right">
							<div class="overlay"></div>
							<div class="content text">
								<h1 class="heading">EveryWare Pro - </h1>
								<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Developed by The A Seven</p>
							</div>
						</div>
						</div>
					</div>
					<!-- //근태확인 출력 끝 -->
					<!-- 공지사항 시작 -->
					<div class="row sortable-grid" >
					<div class="col-md-8 sortable-item ">
					<div class="panel">
						<div class="panel-heading">공지사항</div>
						<div class="panel-body">
							<p style="text-align: right">
								<input type="button" value="공지사항" class="btn btn-info"
									onClick="location.href='board/boardList?boardFolder_id=1';">
							<table 
								class="table table-striped table-hover"><!-- featured-datatable -->
								<thead>
									<tr>
										<th>번호</th>
										<th>제목</th>
										<th>작성자</th>
										<th>조회수</th>
										<th>등록일</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="board" items="${boardlist}">
										<tr>
											<td class="center">${board.board_id}</td>
											<td><a href="board/read?board_id=${board.board_id}">${board.board_title}</a>
											</td>
											<td class="center">${board.user_id}</td>
											<td class="center">${board.board_hits}</td>
											<td>${board.board_date}</td>
										</tr>

									</c:forEach>
									<!-- 반복 끝 -->
								</tbody>
							</table>
						</div>
					</div>
					
					<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">처리해야할 결재</h3>
								</div>
										<div class="panel-body" style="overflow-y: scroll; ">
										<table class="table table-striped">
									
											<thead>
												<tr>
													<th>결재번호</th>
													<th>제목</th>
													<!-- <th>내용</th> -->
													<th>등록날짜</th>
													<th>마감날짜</th>
													<th>첨부파일</th>
													<th>진행률</th>
													<th>비고</th>
												</tr>
											</thead>
											<tbody>						
											
										
												<c:if test="${approvalList_now != null}">
													<c:forEach var="eApp" items="${approvalList_now}">
														<tr>
															<td>${eApp.eApproval_id}		</td>
															<td>
																<a href="readApproval?eApproval_id=${eApp.eApproval_id}&isApproval=true">
																	${eApp.eApproval_title}
																</a>
															</td>
															<%-- <td>${eApp.eApproval_content}	</td> --%>
															<td>${eApp.eApproval_sDate}		</td>
															<td>${eApp.eApproval_fDate}		</td>
															<td>
															<c:choose>
																<c:when test="${eApp.eApproval_original != null}">
																	${eApp.eApproval_original}
																</c:when>
																<c:otherwise>
																	-
																</c:otherwise>
															</c:choose>
															</td>
															<td>
																<div id="project-progress" class="progress progress-transparent custom-color-orange2">
																	<div class="progress-bar" data-transitiongoal="${eApp.eApproval_saved}"></div>
																</div>
															</td>
															<td>${eApp.eApproval_status}</td>
														
														</tr>
													</c:forEach>		
												</c:if>
												
												<c:if test="${approvalList_ban != null}">
												
													<!-- 반려 -->
													<c:forEach var="eApp" items="${approvalList_ban}">
														<tr>
															<td>${eApp.eApproval_id}		</td>
															<td>
																<a href="readApproval?eApproval_id=${eApp.eApproval_id}&ban=true">
																	${eApp.eApproval_title}
																</a>
															</td>
															<td>${eApp.eApproval_sDate}		</td>
															<td>${eApp.eApproval_fDate}		</td>
															<td>
															<c:choose>
																<c:when test="${eApp.eApproval_original != null}">
																	${eApp.eApproval_original}
																</c:when>
																<c:otherwise>
																	-
																</c:otherwise>
															</c:choose>
															</td>
															<td>
																<div id="project-progress" class="progress progress-transparent custom-color-orange2">
																	<div class="progress-bar" data-transitiongoal="${eApp.eApproval_saved}"></div>
																</div>
															</td>
															<td>${eApp.eApproval_status}</td>
														
														</tr>
													</c:forEach>
												</c:if>
										</tbody>
										</table>
										</div>
							</div>
					
					</div>
						
							
								<div class="col-md-4 sortable-item">
									<div class="widget widget-metric_8">
											<div class="heading clearfix">
												<span class="title">목표 매출액</span>
												<div class="dropdown">
													<a href="#" class="toggle-dropdown" data-toggle="dropdown"><i class="fa fa-ellipsis-v"></i></a>
													
												</div>
											</div>
											<i class="ti-settings custom-text-green3"></i>
											<span class="value">1,895,556/10,000,000</span><span>($/원)</span>
											<div class="progress progress-xs progress-transparent custom-color-green3">
												<div class="progress-bar" data-transitiongoal="50"></div>
											</div>
											<p class="info"><i class="ti-arrow-up icon-change"></i> +15% than last month</p>
										</div>
					
								<div class="col-md-4 right sortable-item">
										<div class="content-menu-right">
											<div class="content-menu-header clearfix">
												<h2 class="heading">부서 공지</h2>
											</div>
											<div id="list-message-scrollable">
												<ul class="inbox-list-message">
													
													<c:forEach var = "deptBoard" items ="${deptBoardList}">
													<li>
														<a href="board/read?board_id=${deptBoard.board_id}">
															<div class="detBoardList">
																<span class="sender">${deptBoard.user_id  }</span>
																<span class="timestamp">${deptBoard.board_date }</span>
																<h3 class="title">${deptBoard.board_title }</h3>
																<p class="preview">...</p>
															</div>
														</a>
													</li>
													</c:forEach>
											
												</ul>
											</div>
										</div>
									</div>	
							</div>
						
			
							<div class="col-md-8 sortable-item">
							
			
					<!-- /결재 by 병호 -->
					<!-- END CHAT SUPPORT -->
				</div>		
						
						
						
					</div>
					<!-- //공지사항 끝 -->
					<!-- 스케줄 시작 -->
					<div class="row sortable-grid">
						<!-- CHAT SUPPORT -->
						<div class="col-md-12 sortable-item">
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">일정 관리</h3>
								</div>
								<div class="panel-body">

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
								</div>
							</div>
						</div>
					</div>
					<!-- 스케줄 끝 -->

					<!-- 결재 by 병호 -->
						
				<!-- MINI BAR CHARTS -->	
				<!-- END MINI BAR CHARTS -->
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
				&copy; 2018 <a href="https://www.themeineed.com" target="_blank">EveryWare</a>.
				All Rights Reserved.
			</p>
		</div>
	</footer>
	</div>
	<!-- END WRAPPER -->
	<!-- Javascript -->
	
	<script src="resources/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="resources/assets/vendor/pace/pace.min.js"></script>
	<script
		src="resources/assets/vendor/bootstrap-progressbar/js/bootstrap-progressbar.min.js"></script>
	<script src="resources/assets/vendor/Flot/jquery.flot.js"></script>
	<script src="resources/assets/vendor/Flot/jquery.flot.resize.js"></script>
	<script src="resources/assets/vendor/Flot/jquery.flot.time.js"></script>
	<script
		src="resources/assets/vendor/flot.tooltip/jquery.flot.tooltip.js"></script>
	<script
		src="resources/assets/vendor/x-editable/bootstrap3-editable/js/bootstrap-editable.min.js"></script>
	<script
		src="resources/assets/vendor/jquery.maskedinput/jquery.maskedinput.min.js"></script>

	<script
		src="resources/assets/vendor/jquery-sparkline/js/jquery.sparkline.min.js"></script>
	<script
		src="resources/assets/vendor/bootstrap-tour/js/bootstrap-tour.min.js"></script>
	<script src="resources/assets/vendor/jquery-ui/ui/widget.js"></script>
	<script src="resources/assets/vendor/jquery-ui/ui/data.js"></script>
	<script src="resources/assets/vendor/jquery-ui/ui/scroll-parent.js"></script>
	<script src="resources/assets/vendor/jquery-ui/ui/disable-selection.js"></script>
	<script src="resources/assets/vendor/jquery-ui/ui/widgets/mouse.js"></script>
	<script src="resources/assets/vendor/jquery-ui/ui/widgets/sortable.js"></script>
	<script
		src="resources/assets/vendor/datatables/js-main/jquery.dataTables.min.js"></script>
	<script
		src="resources/assets/vendor/datatables/js-main/jquery.dataTablesBoard.min.js"></script>
	<script
		src="resources/assets/vendor/datatables/js-bootstrap/dataTables.bootstrap.min.js"></script>
	<script
		src="resources/assets/vendor/jquery-appear/jquery.appear.min.js"></script>
	<script src="resources/assets/vendor/jqvmap/jquery.vmap.min.js"></script>
	<script src="resources/assets/vendor/jqvmap/maps/jquery.vmap.world.js"></script>
	<script src="resources/assets/vendor/jqvmap/maps/jquery.vmap.usa.js"></script>
	<script src="resources/assets/vendor/chart-js/Chart.min.js"></script>
	<script src="resources/assets/vendor/raphael/raphael.min.js"></script>
	<script src="resources/assets/vendor/justgage-toorshia/justgage.js"></script>
	<script src="resources/assets/scripts/klorofilpro-common.js"></script>

	<!-- 공지사항 -->
	<script
		src="resources/assets/vendor/datatables-colreorder/dataTables.colReorder.js"></script>
	<script
		src="resources/assets/vendor/datatables-tabletools/js/dataTables.tableTools.js"></script>


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
	<script>
		$(function() {
			
			
		});//end of all script
	</script>


	<!-- 공지사항 -->
	<script>
	$(function()
		{
			// datatable column with reorder extension
			$('#datatable-column-reorder').dataTable(
			{
				pagingType: "full_numbers",
				sDom: "RC" +
					"t" +
					"<'row'<'col-sm-6'i><'col-sm-6'p>>",
				colReorder: true,
			});
			// datatable with column filter enabled
			var dtTable = $('#datatable-column-filter').DataTable(
			{ // use DataTable, not dataTable
				sDom: // redefine sDom without lengthChange and default search box
					"t" +
					"<'row'<'col-sm-6'i><'col-sm-6'p>>"
			});
			$('#datatable-column-filter thead').append('<tr class="row-filter"><th></th><th></th><th></th><th></th><th></th></tr>');
			$('#datatable-column-filter thead .row-filter th').each(function()
			{
				$(this).html('<input type="text" class="form-control input-sm" placeholder="Search...">');
			});
			$('#datatable-column-filter .row-filter input').on('keyup change', function()
			{
				dtTable
					.column($(this).parent().index() + ':visible')
					.search(this.value)
					.draw();
			});
			// datatable with paging options and live search
			$('#featured-datatable').dataTable(
			{
				sDom: "<'row'<'col-sm-6'l><'col-sm-6'f>r>t<'row'<'col-sm-6'i><'col-sm-6'p>>",
			});
			// datatable with export feature
			var exportTable = $('#datatable-data-export').DataTable(
			{
				sDom: "T<'clearfix'>" +
					"<'row'<'col-sm-6'l><'col-sm-6'f>r>" +
					"t" +
					"<'row'<'col-sm-6'i><'col-sm-6'p>>",
				"tableTools":
				{
					"sSwfPath": "resources/assets/vendor/datatables-tabletools/swf/copy_csv_xls_pdf.swf"
				}
			});
			// datatable with scrolling
			$('#datatable-basic-scrolling').dataTable(
			{
				scrollY: "300px",
				scrollCollapse: true,
				paging: false
			});
			
			// metric's progress bar
			$('.progress-bar').progressbar(
			{
				display_text: 'fill'
			});
			
			
		});
		</script>

</body>
</html>