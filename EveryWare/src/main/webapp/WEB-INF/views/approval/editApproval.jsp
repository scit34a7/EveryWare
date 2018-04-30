<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
	<head>
		<title>Everyware | eApproval</title>
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
		
		
		
		<script type="text/javascript">
		
		function openLineSet(){
			window.open("approvalLineSet", "approvalLineSetkWin", "top=100, left=400, width=600, height=700")
		}
		
		</script>
		
		
	</head>
	<body>
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
					<input type="text" value="" class="form-control"
						placeholder="직원검색">
					<button type="button" class="btn btn-default">
						<i class="fa fa-search"></i>
					</button>
				</form>
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
								<c:if test="${pushList!= null }">
									<li>알림이 있습니다.</li>
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
									</c:if>
							</ul></li>
						
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">  <span>${sessionScope.userName }</span>
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
							
							
							
						<li class="panel"><a href="#approval" data-toggle="collapse"
						data-parent="#sidebar-nav-menu" class="active"> <i
							class="ti-widget"></i> <span class="title">전자결재</span> <i
							class="icon-submenu ti-angle-left"></i>
					</a>
						<div id="approval" class="collapse in"><!-- collapse : 서브메뉴 닫혀있음 collapse in : 서브메뉴 열려있음 -->
							<ul class="submenu">
								<li><a href="../approval/myApproval" class="active">내 결재</a></li>
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
							<h1 class="page-title">전자 결재 문서 수정</h1>
							<p class="page-subtitle">반려된 문서를 수정하여 재상신 할 수 있습니다.</p>
						</div>
						<ul class="breadcrumb">
							
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
										<form action="editApproval" method="post" enctype="multipart/form-data">
										<!-- <form id="insertApproval" method="post" enctype="multipart/form-data" novalidate>	 -->
											<div class="form-group">
												<!-- <label class="control-label">결재 제목</label> -->
												
												
												<input type="hidden" name="eApproval_id" value="${approval.eApproval_id}">
												
												
												
												<br><br>
												
												<label>결재 제목</label>
												<input type="text" class="form-control" id="eApproval_title" name="eApproval_title" value="${approval.eApproval_title}" required>
											</div>
											
											<div class="form-group">
												<label>결재 내용</label>
												<!-- <textarea class="form-control" rows="5" cols="30" id="eApproval_content" name="eApproval_content" required></textarea> -->
												<div class="container-fluid">
													<textarea class="summernote" name ="eApproval_content2" id="eApproval_content_string">
														
														${approval.eApproval_content2}
														
														
													</textarea>
												<div class="margin-bottom-30"></div>
												</div>
											
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
																					<input type="hidden" id="eApprovalLine_id" name="eApprovalLine_id" readonly="readonly" value="${line.eApprovalLine_id}">
																					<input type="text" id="loginId" readonly="readonly" value="${userName} / ${userDepartment} / ${userPosition}">
																				</div>																			
																			</td>
																		
																		
																			<td>
																				<div class="form-group">																					
																					<input type="text" id="eApprovalLine_person1" readonly="readonly" value="${line.eApprovalLine_person1}" required>
																				</div>																			
																			</td>
																			
																			<td>
																				<div class="form-group">																					
																					<input type="text" id="eApprovalLine_person2" readonly="readonly" value="${line.eApprovalLine_person2}" required>
																				</div>																			
																			</td>
																			
																			<td>
																				<div class="form-group">																					
																					<input type="text" id="eApprovalLine_person3" readonly="readonly" value="${line.eApprovalLine_person3}" required>
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
															<input type="text" class="input-sm form-control" name="eApproval_sDate" value="${approval.eApproval_sDate}" required>
															<span class="input-group-addon">to</span>
															<input type="text" class="input-sm form-control" name="eApproval_fDate" value="${approval.eApproval_fDate}" required>
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
													<input type="file" class="dropify" name="upload" value="${approval.eApproval_original}">
												</div>
											</div>
											
											<br><br><br><br><br><br><br><br><br><br>
											<div id="submitBtAlign">
												<button type="submit" class="btn btn-primary btn-lg">수정</button>
											</div>
								<!-- END DATE PICKER -->
						
										
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
			
			
		
		
		
		
		
		<!-- END DEMO PANEL -->
		
	</body>
</html>