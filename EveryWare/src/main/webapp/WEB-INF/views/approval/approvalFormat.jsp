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
		<link rel="stylesheet" href="../resources/assets/vendor/summernote/summernote.css">
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
				<a href="../index"> <img src="../resources/assets/img/logo-white.png"
					alt="Klorofil Pro Logo" class="img-responsive logo">
				</a>
			</div>
			<div class="container-fluid">
				
				<div id="navbar-menu">
					<ul class="nav navbar-nav navbar-right">
					
						</a></li>
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
							data-toggle="dropdown">  <span>${sessionScope.userName}</span>
						</a>
							<ul class="dropdown-menu logged-user-menu">
								<li><a href="#"><i class="ti-user"></i> <span>개인정보</span></a></li>
								<li><a href="appviews-inbox"><i class="ti-email"></i> <span>Message</span></a></li>
								<li><a href="#"><i class="ti-settings"></i> <span>Settings</span></a></li>
								<li><a href="page-lockscreen"><i class="ti-power-off"></i>
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
						<li class="panel"><a href="../index" data-toggle="collapse"
							data-parent="#sidebar-nav-menu" class="collapsed"><i
								class="ti-dashboard"></i> <span class="title">MainHome</span> <i
								class="icon-submenu ti-angle-left"></i></a></li>
						<li class="panel"><a href="#subLayouts" data-toggle="collapse"
							data-parent="#sidebar-nav-menu" class="collapsed"><i
								class="ti-layout"></i> <span class="title">e메일</span> <i
								class="icon-submenu ti-angle-left"></i></a>
							<div id="subLayouts" class="collapse">
								<ul class="submenu">
									<li><a href="../mail/getMail?sort=all">받은메일함 
										<c:if test="${mailRead>0}">
											 <span class="label label-success">NEW</span>
										</c:if>
									</a></li>
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
									<li><a href="../support/supportMain">출퇴근체크</a></li>
									<li><a href="../support/attendList">출퇴근확인</a></li>
									<li><a href="../support/boardList">업무보고</a></li>
								</ul>
							</div></li>
							
							
							
						<li class="panel">
							<a href="#approval" data-toggle="collapse" data-parent="#sidebar-nav-menu" class="active">
								<i class="ti-widget"></i>
								<span class="title">전자결재</span> 
								<i class="icon-submenu ti-angle-left"></i>
							</a>
							<div id="approval" class="collapse in"><!-- collapse : 서브메뉴 닫혀있음 collapse in : 서브메뉴 열려있음 -->
								<ul class="submenu">
									<li><a href="myApproval">내 결재</a></li>
									<li><a href="writeApproval">결재 작성</a></li>
									<li><a href="approvalFormat" class="active">결재 양식 작성</a></li>
								</ul>
									
							</div>
						</li>
				<li class="panel"><a href="#" data-toggle="collapse"
							data-target="#submenuDemo" data-parent="#sidebar-nav-menu"
							class="collapsed"><i class="ti-menu"></i> <span class="title">화상회의
							</span><i class="icon-submenu ti-angle-left"></i></a>
							<div id="submenuDemo" class="collapse">
								<ul class="submenu">
									<li><a href="../meet/meetingList">회의실</a></li>
									<li><a href="../meet/minutes">회외록</a></li>
								</ul>
							</div>
						</li>
	
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
							<h1 class="page-title">결재 양식 작성</h1>
							<p class="page-subtitle">미리 결재양식을 작성해 결재 작성시 바로 불러올 수 있습니다.</p>
						</div>
						<ul class="breadcrumb">
							
						</ul>
					</div>
					
					
					
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-12">	<!-- 뒤에 숙자가 크기 조절 -->
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">결재 양식 작성</h3>
									</div>
									<div class="panel-body">
									
										<!-- 폼 태그 -->
										<form action="insertApprovalFormat" method="post">
										<!-- <form id="insertApproval" method="post" enctype="multipart/form-data" novalidate>	 -->
											<div class="form-group">
												<label>저장할 양식 이름</label>
												<input type="text" class="form-control" name="approvalFormat_name" required>
											</div>
											
											<div class="form-group">
												<label>결재 제목</label>
												<input type="text" class="form-control" name="approvalFormat_title" required>
											</div>
											
											<div class="form-group">
												<label>결재 내용</label>
												<!-- <textarea class="form-control" rows="5" cols="30" id="eApproval_content" name="eApproval_content" required></textarea> -->
												<div class="container-fluid">
													<textarea class="summernote" name ="approvalFormat_content2">
														
														<%-- ${writeForm } --%>
														
														
													</textarea>
												<div class="margin-bottom-30"></div>
												</div>
											
											</div>
											
											
											
											<div id="submitBtAlign">
												<button type="submit" class="btn btn-primary btn-lg">양식 저장</button>
											</div>	
											
										
											
						
											
											
										</form>
									</div>
								</div>
							</div>
							
							
							
							
						</div>
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
						&copy; 2018 <a href="../index" target="_blank">EveryWare</a>.
						All Rights Reserved.
					</p>
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
		<script src="../resources/assets/vendor/summernote/summernote.min.js"></script>
		<!-- datepicker -->
		<script src="../resources/assets/vendor/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
		
		<!-- DEMO PANEL -->
		<!-- for demo purpose only, you should remove it on your project directory -->
		<script type="text/javascript">
		
		/* DROPIFY */
		$(function()
		{
			
			// summernote editor
			$('.summernote').summernote(
			{
				height: 300,
				focus: true,
				onpaste: function()
				{
					alert('You have pasted something to the editor');
				}
			});
			
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
			
			
		
		
		
		
		<!-- <div id="demo-panel">
			<a href="#" onclick="toggleDemoPanel(event);"><i class="fa fa-cog fa-spin"></i></a>
			<iframe src="../resources/demo-panel/index.html"></iframe>
		</div> -->
		
		
		
		<!-- END DEMO PANEL -->
		
	</body>
</html>