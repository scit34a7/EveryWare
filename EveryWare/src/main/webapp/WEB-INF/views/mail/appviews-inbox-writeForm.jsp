<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<title>메일:EveryWare</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!-- VENDOR CSS -->
<link rel="stylesheet"	href="../resources/assets/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"	href="../resources/assets/vendor/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"	href="../resources/assets/vendor/themify-icons/css/themify-icons.css">
<link rel="stylesheet"	href="../resources/assets/vendor/pace/themes/orange/pace-theme-minimal.css">
<link rel="stylesheet" href="../resources/assets/vendor/summernote/summernote.css">

<!-- MAIN CSS -->
<link rel="stylesheet" href="../resources/assets/css/main.css">
<link rel="stylesheet" href="../resources/assets/css/skins/sidebar-nav-darkgray.css" type="text/css">
<link rel="stylesheet" href="../resources/assets/css/skins/navbar3.css"
	type="text/css">
<!-- FOR DEMO PURPOSES ONLY. You should/may remove this in your project -->
<link rel="stylesheet" href="../resources/assets/css/demo.css">
<link rel="stylesheet" href="../resources/demo-panel/style-switcher.css">
<!-- ICONS -->
<link rel="apple-touch-icon" sizes="76x76"	href="../resources/assets/img/apple-icon.png">
<link rel="icon" type="image/png" sizes="96x96"	href="../resources/assets/img/favicon.png">
</head>
<body class="sidebar-minified has-content-menu page-inbox">
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
					<input type="text" value="" class="form-control" placeholder="직원검색">
					<button type="button" class="btn btn-default">
						<i class="fa fa-search"></i>
					</button>
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
								<li><a href="./getMail?sort=all">받은메일함 <span
										class="label label-success">NEW</span></a></li>
								<li><a href="./getMail?sort=send">보낸메일함</a></li>
								<li><a href="./sendMail">편지쓰기</a></li>
								<li><a href="./getMail?sort=important">중요편지함</a></li>
								
							</ul>
						</div></li>
					<li class="panel"><a href="#forms" data-toggle="collapse"
						data-parent="#sidebar-nav-menu" class="collapsed"><i
							class="ti-receipt"></i> <span class="title">스케줄 관리</span> <i
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
							class="ti-layout-tab-window"></i> <span class="title">개인정보관리</span>
							<i class="icon-submenu ti-angle-left"></i></a>
						<div id="appViews" class="collapse ">
							<ul class="submenu">
								<li><a href="appviews-project-detail">Project Details</a></li>
								<li><a href="appviews-projects">Projects</a></li>
								<li><a href="appviews-inbox">Inbox <span class="badge">8</span></a></li>
								<li><a href="appviews-file-manager">File Manager</a></li>
							</ul>
						</div></li>

					<li class="panel"><a href="#uiElements" data-toggle="collapse"
						data-parent="#sidebar-nav-menu" class="collapsed"><i
							class="ti-panel"></i> <span class="title">프로젝트관리</span> <i
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
							class="ti-pie-chart"></i> <span class="title">업무지원</span> <i
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
							class="title">전자결재</span></a></li>
					<li><a href="notifications"><i class="ti-bell"></i> <span
							class="title">화상회의</span> <span class="badge">15</span></a></li> +
					<li class="panel"><a href="#subPages" data-toggle="collapse"
						data-parent="#sidebar-nav-menu" class="collapsed"><i
							class="ti-files"></i> <span class="title">자원예약</span> <i
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
											<li><a href="#" class="active">Another menu level</a></li>
											<li><a href="#">Another menu level</a></li>
										</ul>
									</div></li>
								<li><a href="javascript:test1()">회의실</a></li>
								<li><a href="meet/annyangTest"">음성 테스트</a></li>
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
						<h1 class="page-title">e메일</h1>
						<p class="page-subtitle">
							<span style = "font-size:15px;">${sessionScope.userName}</span>You have <strong>118 unread messages</strong>
						</p>
					</div>
					<ul class="breadcrumb">
						<li><a href="#"><i class="fa fa-home"></i> Home</a></li>
						<li><a href="#">App Views</a></li>
						<li class="active">Inbox</li>
					</ul>
				</div>
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-2">
							<div class="content-menu clearfix">
								<div class="col-md-12 left">
									<div class="content-menu-left">
										<button type="button" class="btn-close-content-menu">
											<i class="fa fa-close"></i>
										</button>
										<nav>
											<span>Mail Service</span>
												<ul class="nav-content-menu">
													<li><a href="./sendMail"  ><i class ="fa fa-pencil"></i> 편지쓰기</a></li>
													<li><a href="./getMail?sort=all" 		<c:if test ="${sort== 0}">style = "color : blue; font-weight:bold"</c:if>	><i class="fa fa-inbox"></i> 		받은편지함</a></li>
													<li><a href="./getMail?sort=send" 		<c:if test ="${sort== 2}">style = "color : blue; font-weight:bold"</c:if>	><i class="fa fa-mail-forward"></i> 보낸편지함</a></li>
													<li><a href="./getMail?sort=temporary"  <c:if test ="${sort== 5}">style = "color : blue; font-weight:bold"</c:if>	><i class="fa fa-folder"></i>		 임시보관함</a></li>
													<li><a href="./getMail?sort=important" 	<c:if test ="${sort== 3}">style = "color : blue; font-weight:bold"</c:if>	><i class="fa fa-flag"></i> 		중요편지함</a></li>
													<li><a href="./getMail?sort=self" 		<c:if test ="${sort== 1}">style = "color : blue; font-weight:bold"</c:if>	><i class="fa fa-folder"></i> 		내게쓴편지함</a></li>
													<li><a href="./getMail?sort=trash" 		<c:if test ="${sort== 4}">style = "color : blue; font-weight:bold"</c:if> 	><i class="fa fa-trash"></i> 		휴지통</a></li>
													<li><a href="./setMailForm"><i class = "fa fa-cog"></i> 양식 설정</a></li>
												</ul>
										</nav>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-9">
							
							<div class="content-right clearfix">
								
								<div class="content-panel view-message">
									<button type="button" class="btn-close-content-right">
										<i class="fa fa-close"></i>
									</button>
									
									<div class="header">
										<div class="bottom clearfix">
											<div class="contact-info">
												<div class="form-group">
											
											<table>
												<tr>
													<td><h3>메일 양식 설정</h3> </td>
												</tr>
											</table>
										
											</div>
										</div>
												<div class="btn-group">
													<div class="form-group">
														<button type="submit" class="btn btn-primary btn-replyx">주소록</button>
														<br>
													</div>
													<div class="form-group">
														<button type="submit" class="btn btn-primary btn-replyx">미리보기</button>
														<br>
													</div>
												</div> <!--  end of the button division -->
											</div>
										</div>
									</div>
										
									<div class="content">									
										<div class="container-fluid">
										<form action ="./saveMailForm" id = "saveMailForm" method = "post" enctype ="multipart/form-data">
										<textarea class="summernote" id ="summernote"  name ="mailContent_summer">
											
												 "${writeForm}"
											
											<!--  c:if writeForm != null tag 지 움  -->
										</textarea>
										</form>
										<div class="margin-bottom-30"></div>
										</div>
									<div class="container-fluid">
										<button type="button" id = "formSubmiter1" class="btn btn-primary btn-block" width = "100%">양식 저장하기</button>			
										<hr class="content-separator">
										<div class="attachment-list">
											
										</div>
										
									</div>
									
									<div class="footer">
										<div class="reply-message">
												Footer in the Mails<hr>
								
										<!-- <button type="submit" class="btn btn-primary btn-replyx" id = "formSubmiter">보내기</button>
										<button type="button" class="btn btn-primary btn-replyx">미리보기</button>
										<button type="button" class="btn btn-primary btn-replyx">임시저장</button>		 -->	
										</div>
									</div>
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
					&copy; 2017 <a href="https://www.themeineed.com" target="_blank">Theme
						I Need</a>. All Rights Reserved.
				</p>
			</div>
		</footer>
	</div>
	<!-- END WRAPPER -->
	
	<!-- Javascript -->
	<script src="../resources/assets/vendor/jquery/jquery.min.js"></script>
	<script src="../resources/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="../resources/assets/vendor/pace/pace.min.js"></script>
	<script	src="../resources/assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script src="../resources/assets/vendor/markdown/markdown.js"></script>
	<script src="../resources/assets/vendor/to-markdown/to-markdown.js"></script>
	<script src="../resources/assets/vendor/bootstrap-markdown/bootstrap-markdown.js"></script>
	<script src="../resources/assets/scripts/klorofilpro-common.js"></script>
	<script src="../resources/assets/vendor/summernote/summernote.min.js"></script>
	
	
	<script>
		$(function() {
			$('#list-message-scrollable').slimScroll({
				height : '550px',
				wheelStep : 1,
				color : '#cecece'
			});
			
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
			// markdown editor
			var initContent = '<h4>Hello there</h4> ' +
				'<p>How are you? I have below task for you :</p> ' +
				'<p>Select from this text... Click the bold on THIS WORD and make THESE ONE italic, ' +
				'link GOOGLE to google.com, ' +
				'test to insert image (and try to tab after write the image description)</p>' +
				'<p>Test Preview And ending here...</p> ' +
				'<p>Click "List"</p> Enjoy!';
			$('#markdown-editor').text(toMarkdown(initContent));
		
			// 이메일 보내기 버튼에 이벤트 부여하기 
			document.getElementById('formSubmiter1').onclick = function(){
				document.getElementById('saveMailForm').submit();	
				return false;
			};
		
			/* if("${writeForm}"!= null){
				alert('null 이 아닙니다. ');
			
				$('#summernote').html("${writeForm}");
				
				alert('칸료우! ');
				
				return false; 
			} */
		});
		
		function deleteHtmlTag(id) {
		    
			//var content = id.value.trim();
		    var content = id;
		    content = content.replace(/&/g, "&amp;");
		    content = content.replace(/</g, "&lt;");
		    content = content.replace(/>/g, "&gt;");
		    content = content.replace(/\"/g, "&quot;");
		    
		    return content;
		}
		
	</script>
</body>
</html>