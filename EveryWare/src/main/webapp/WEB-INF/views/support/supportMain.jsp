<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
	<head>
		<title>Everyware | Support</title>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
		<!-- VENDOR CSS -->
		<link rel="stylesheet" href="../resources/assets/vendor/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="../resources/assets/vendor/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="../resources/assets/vendor/themify-icons/css/themify-icons.css">
		<link rel="stylesheet" href="../resources/assets/vendor/pace/themes/orange/pace-theme-minimal.css">
		<link rel="stylesheet" href="../resources/assets/vendor/datatables/css-main/jquery.dataTables.min.css">
		<link rel="stylesheet" href="../resources/assets/vendor/datatables/css-bootstrap/dataTables.bootstrap.min.css">
		<link rel="stylesheet" href="../resources/assets/vendor/datatables-tabletools/css/dataTables.tableTools.css">
		
		<link rel="stylesheet" href="../resources/assets/vendor/sweetalert2/sweetalert2.css">
		
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
			
	</head>

	<body onLoad="showClock()">
		<!-- WRAPPER -->
	<div id="wrapper">
		<!-- NAVBAR -->
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="brand">
				<a href="../index"> <img src="../resources/assets/img/logo-white.png"
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
								<li>알림이 있습니다.</li>
								<li><a href="#" class="notification-item"> <i
										class="fa fa-hdd-o custom-bg-red"></i>
										<p>
											<span class="text">(예)14프로젝트 회의에 초대되었습니다.</span> <span
												class="timestamp">(예)11 minutes ago</span>
										</p>
								</a></li>
								<li><a href="#" class="notification-item"> <i
										class="fa fa-tasks custom-bg-yellow"></i>
										<p>
											<span class="text">[양식]알림이 있습니다.회의/결제</span> <span
												class="timestamp">[양식]현재 - 보낸시간</span>
										</p>
								</a></li>
								<li><a href="#" class="notification-item"> <i
										class="fa fa-book custom-bg-green2"></i>
										<p>
											<span class="text">[양식]알림이 있습니다.회의/결제</span> <span
												class="timestamp">[양식]현재 - 보낸시간</span>
										</p>
								</a></li>
								<li><a href="#" class="notification-item"> <i
										class="fa fa-bullhorn custom-bg-purple"></i>
										<p>
											<span class="text">[양식]알림이 있습니다.회의/결제</span> <span
												class="timestamp">[양식]현재 - 보낸시간</span>
										</p>
								</a></li>
								<li><a href="#" class="notification-item"> <i
										class="fa fa-check custom-bg-green"></i>
										<p>
											<span class="text">[양식]알림이 있습니다.회의/결제</span> <span
												class="timestamp">[양식]단위는 일수/ 시간수/ 분수</span>
										</p>
								</a></li>
								<li><a href="#" class="more">전체 알람 보러 가기</a></li>
							</ul></li>
					
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> <span>${sessionScope.userName }</span>
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
								<li><a href="../mail/getMail?sort=all">받은메일함 <span
										class="label label-success">NEW</span></a></li>
								<li><a href="../mail/getMail?sort=send">보낸메일함</a></li>
								<li><a href="../mail/sendMail">편지쓰기</a></li>
								<li><a href="../mail/getMail?sort=important">중요편지함</a></li>
							</ul>
						</div></li>
					<li class="panel"><a href="#forms" data-toggle="collapse"
						data-parent="#sidebar-nav-menu" class="collapsed"><i
							class="ti-receipt"></i> <span class="title">스케줄 관리</span> <i
							class="icon-submenu ti-angle-left"></i></a>
						<div id="forms" class="collapse ">
							<ul class="submenu">
								<li><a href="../schedule">개인 및 부서일정 관리</a></li>
							</ul>
						</div></li>
					<li class="panel"><a href="#appViews" data-toggle="collapse"
						data-parent="#sidebar-nav-menu" class="collapsed"><i
							class="ti-layout-tab-window"></i> <span class="title">개인정보관리</span>
							<i class="icon-submenu ti-angle-left"></i></a>
						<div id="appViews" class="collapse ">
							<ul class="submenu">
								<li><a href="../user/userInfo">내 정보</a></li>
								<li><a href="../user/update">내 정보 수정</a></li>
								<li><a href="../user/userList">주소록</a></li>
							</ul>
						</div></li>

					<li class="panel"><a href="#charts" data-toggle="collapse"
						data-parent="#sidebar-nav-menu" class="collapsed"><i
							class="ti-pie-chart"></i> <span class="title">업무지원</span> <i
							class="icon-submenu ti-angle-left"></i></a>
						<div id="charts" class="collapse ">
							<ul class="submenu">
								<li><a href="./supportMain">근태확인</a></li>
								<li><a href="./attendList">근태현황</a></li>
								<li><a href="./boardList">업무보고</a></li>
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
								<li><a href="../approval/myApproval">내 결재</a></li>
								<li><a href="../approval/writeApproval">결재 작성</a></li>
								<li><a href="../approval/approvalFormat">결재 양식 작성</a></li>
							</ul>

						</div></li>
					<li class="panel"><a href="#" data-toggle="collapse"
						data-target="#submenuDemo" data-parent="#sidebar-nav-menu"
						class="collapsed"><i class="ti-menu"></i> <span class="title">화상회의
						</span><i class="icon-submenu ti-angle-left"></i></a>
						<div id="submenuDemo" class="collapse">
							<ul class="submenu">
								<li><a href="../meet/meetingList">회의실</a></li>
								<li><a href="../meet/minutes">회외록</a></li>
							</ul>
						</div></li>

					<li class="panel"><a href="#subPages" data-toggle="collapse"
						data-parent="#sidebar-nav-menu" class="collapsed"><i
							class="ti-files"></i> <span class="title">자원예약</span> <i
							class="icon-submenu ti-angle-left"></i></a>
						<div id="subPages" class="collapse ">
							<ul class="submenu">
								<li><a href="../resource">자원 예약 관리</a></li>
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
								<li><a href="../board/boardList?boardFolder_id=1">공지사항</a></li>
								<li><a href="../board/boardList?boardFolder_id=2">부서게시판</a></li>
								<li><a href="../board/boardList?boardFolder_id=3">커뮤니티</a></li>
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
							<h1 class="page-title">업무지원</h1>
						</div>
						<ul class="breadcrumb">
							<li><a href="#"><i class="fa fa-home"></i>홈</a></li>
							<li><a href="#">업무지원</a></li>
							<!-- <li class="active">회의목록</li> -->
						</ul>
					</div>
				<!-- RIGHT COLUMN -->
				<div class="profile-center">
					<h4 class="heading">근태확인</h4>
					
					<center>
						<!-- 시간 -->
						<div class="hero-unit">
							<h2 id="liveClock"></h2>
							<br/><br/>
							<p><a href="#"
							onClick="formCheck()"></a></p>
						</div>
					</center>
					
					<!-- AWARDS -->
					<div class="awards">
						<div class="row">
										
							<div class="col-md-3 col-sm-6">
								<div class="award-item">
									<div class="hexagon">
										<span class="ti-alarm-clock award-icon"></span>
									</div>
									<form action="attendCheck" method="POST" id="attendInForm">
									<input type="button" value="출근" class="btn btn-primary" id="attendIn">
									</form>
											
								</div>
							</div>
							
							<div class="col-md-3 col-sm-6">
								<div class="award-item">
									<div class="hexagon">
										<span class="ti-home award-icon"></span>
									</div>
									<form action="attendOut" method="POST" id="attendOutForm">
									<input type="button" value="퇴근" class="btn btn-danger" id="attendOut">
									</form>
											
								</div>
							</div>
							
							<div class="col-md-3 col-sm-6">
								<div class="award-item">
									<div class="hexagon">
										<span class="ti-map award-icon"></span>
									</div>
									<form action="goOut" method="POST" id="goOutForm">
									<input type="button" value="외출" class="btn btn-success" id="goOut">
									</form>
											
								</div>
							</div>
							
							<div class="col-md-3 col-sm-6">
								<div class="award-item">
									<div class="hexagon">
										<span class="ti-location-arrow award-icon"></span>
									</div>
									<form action="goIn" method="POST" id="goInForm">
									<input type="button" value="복귀" class="btn btn-warning" id="goIn">
									</form>
											
								</div>
							</div>
							
				
						</div>
						<br>
						<div class="text-center"><a href="attendList" class="btn btn-info">근태 현황 조회</a></div>
					</div>
					<!-- END AWARDS -->



		
		
		<!-- 	<div class="panel-body">
				<table class="table">
					<tr>
						<td>
						<form action="attendCheck" method="POST" id="attendInForm">
						<input type="button" value="출근" class ="btn btn-success" id="attendIn">
						</form>
						</td>
						<td>
						<form action="attendOut" method="POST" id="attendOutForm">
						<input type="button" value="퇴근" class ="btn btn-info" id="attendOut">
						</form>
						</td>
								
					</tr>	
			</table>
			</div>
			 -->
		
					
		 </div>	 
				<!-- END MAIN CONTENT -->
				
			</div>
			<!-- END MAIN -->
			<div class="clearfix"></div>
			<footer>
				<div class="container-fluid">
					<p class="copyright">&copy; 2018 <a href="https://www.themeineed.com" target="_blank">EveryWare</a>. All Rights Reserved.</p>
				</div>
			</footer>
		</div>
		<!-- END WRAPPER -->
		<!-- Javascript -->
		<script src="../resources/assets/vendor/jquery/jquery.min.js"></script>
		<script src="../resources/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="../resources/assets/vendor/pace/pace.min.js"></script>
		<script src="../resources/assets/vendor/datatables/js-main/jquery.dataTables.min.js"></script>
		<script src="../resources/assets/vendor/datatables/js-bootstrap/dataTables.bootstrap.min.js"></script>
		<script src="../resources/assets/vendor/datatables-colreorder/dataTables.colReorder.js"></script>
		<script src="../resources/assets/vendor/datatables-tabletools/js/dataTables.tableTools.js"></script>
		<script src="../resources/assets/scripts/klorofilpro-common.js"></script>
		
		<script src="../resources/assets/vendor/sweetalert2/sweetalert2.js"></script>

	
	
		<script>
	
		$(function()
		{
			
			$('#attendIn').on('click', function()
				{
					swal(
					{
						title: '출근하시겠습니까?',
						type: 'info',
						allowOutsideClick: false,
						showCancelButton: true,
						confirmButtonColor: '#F9354C',
						cancelButtonColor: '#41B314',
						confirmButtonText: '네',
						cancelButtonText: '아니오'
					}).then(function()
					{
						
						var form = document.getElementById('attendInForm');
						form.submit();
					}, function(dismiss)
					{
						if (dismiss === 'cancel')
						{
							swal(
								'출근이 취소되었습니다.'
							).catch(swal.noop);
						}
					});
				});
			
	
			
			$('#attendOut').on('click', function()
					{
						swal(
						{
							title: '퇴근하시겠습니까?',
							type: 'info',
							allowOutsideClick: false,
							showCancelButton: true,
							confirmButtonColor: '#F9354C',
							cancelButtonColor: '#41B314',
							confirmButtonText: '네',
							cancelButtonText: '아니오'
						}).then(function()
						{
							
							var form = document.getElementById('attendOutForm');
							form.submit();
						}, function(dismiss)
						{
							if (dismiss === 'cancel')
							{
								swal(
									'퇴근이 취소되었습니다.'
								).catch(swal.noop);
							}
						});
					});
			
			
			$('#goOut').on('click', function()
					{
						swal(
						{
							title: '외출하시겠습니까?',
							type: 'info',
							allowOutsideClick: false,
							showCancelButton: true,
							confirmButtonColor: '#F9354C',
							cancelButtonColor: '#41B314',
							confirmButtonText: '네',
							cancelButtonText: '아니오'
						}).then(function()
						{
							
							var form = document.getElementById('goOutForm');
							form.submit();
						}, function(dismiss)
						{
							if (dismiss === 'cancel')
							{
								swal(
									'외출이 취소되었습니다.'
								).catch(swal.noop);
							}
						});
					});
			
			
			
			$('#goIn').on('click', function()
					{
						swal(
						{
							title: '복귀하시겠습니까?',
							type: 'info',
							allowOutsideClick: false,
							showCancelButton: true,
							confirmButtonColor: '#F9354C',
							cancelButtonColor: '#41B314',
							confirmButtonText: '네',
							cancelButtonText: '아니오'
						}).then(function()
						{
							
							var form = document.getElementById('goInForm');
							form.submit();
						}, function(dismiss)
						{
							if (dismiss === 'cancel')
							{
								swal(
									'복귀가 취소되었습니다.'
								).catch(swal.noop);
							}
						});
					});
			
			
		});
		</script>
		
		
	</body>
</html>
	