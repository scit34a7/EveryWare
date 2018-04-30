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
		<link rel="stylesheet" href="../resources/assets/vendor/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css">
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
		
		
		<script type="text/javascript">
		
		function submit(type){
			
			
			
			
			
			var reason = '';
			
			
			if(type == 1){
				
				swal(
					{
						title: '결재를 승인 하시겠습니까?',
						text: "승인하신 후에는 취소할 수 없습니다.",
						type: 'success',
						allowOutsideClick: false,
						showCancelButton: true,
						confirmButtonColor: '#41B314',
						cancelButtonColor: '#F9354C',
						confirmButtonText: '승인',
						cancelButtonText: '취소'
					}).then(function()
					{
						swal(
							'승인 완료',
							'해당결제가 승인되었습니다.',
							'success'
						).catch(swal.noop);
						
						ajaxSubmit(1,'');
						
					}, function(dismiss)
					{
						if (dismiss === 'cancel')
						{
							swal(
								'취소',
								'정상적으로 취소되었습니다.',
								'info'
							).catch(swal.noop);
						}
					});
				
			
			}else if(type == 2){
				
				swal({
					title: '결재를 거절 하시겠습니까?',
					text: "거절하신 결재는 폐기됩니다.",
					type: 'warning',
					allowOutsideClick: false,
					showCancelButton: true,
					confirmButtonColor: '#F9354C',
					cancelButtonColor: '#41B314',
					confirmButtonText: '거절',
					cancelButtonText: '취소'
					}).then(function(){
						//prompt
						swal(
							{
								title: '거절 이유',
								text: '거절 이유를 적어주세요',
								input: 'text',
								showCancelButton: true,
								inputValidator: function(value)
								{
									return new Promise(function(resolve, reject)
									{
										if (value)
										{
											resolve();
										}
										else
										{
											reject('거절 이유를 적어주세요.');
										}
									});
								}
							}).then(function(result)
							{
								swal(
								{
									type: 'success',
									html: '결재가 거절되었습니다.' 
								});
								
								ajaxSubmit(2, result);
								
							}).catch(swal.noop);
						
						//prompt 끝
						
							
					}, function(dismiss)
					{
						if (dismiss === 'cancel')
						{
							swal(
								'취소',
								'정상적으로 취소되었습니다.',
								'info'
							).catch(swal.noop);
						}
					});
				
				
				
				
				
				
				
			}else{
				
				swal({
					title: '결재를 반려 하시겠습니까?',
					text: "반려한 결재는 작성자에게 상신됩니다.",
					type: 'warning',
					allowOutsideClick: false,
					showCancelButton: true,
					confirmButtonColor: '#F9354C',
					cancelButtonColor: '#41B314',
					confirmButtonText: '반려',
					cancelButtonText: '취소'
					}).then(function(){
						//prompt
						swal(
							{
								title: '반려 이유',
								text: '반려 이유를 적어주세요',
								input: 'text',
								showCancelButton: true,
								inputValidator: function(value)
								{
									return new Promise(function(resolve, reject)
									{
										if (value)
										{
											resolve();
										}
										else
										{
											reject('반려 이유를 적어주세요.');
										}
									});
								}
							}).then(function(result)
							{
								swal(
								{
									type: 'success',
									html: '결재가 반려되었습니다.' 
								});
								
								ajaxSubmit(3, result);
								
							}).catch(swal.noop);
						
						//prompt 끝
						
							
					}, function(dismiss)
					{
						if (dismiss === 'cancel')
						{
							swal(
								'취소',
								'정상적으로 취소되었습니다.',
								'info'
							).catch(swal.noop);
						}
					});
				
				
				
			}
			
				
			
				
				
				
		}
		
		
		function ajaxSubmit(type, reason){
			
			
			
			$.ajax({
				url: 'insertHistory'
					,type: 'POST'
					,dataType: 'text'
					,data: {type: type, eApproval_id: ${approval.eApproval_id}, reason: reason}
					,success: function(){
						location.href='myApproval';
					}		
					,error: function(e){	
						alert(JSON.stringify(e));
					}		
			
			});	 
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
								class="ti-bell"></i> <span class="badge bg-danger">5</span>
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
							<h1 class="page-title">결재문서 읽기</h1>
							<p class="page-subtitle">결재문서의 상세내용과 승인,거절,반려</p>
						</div>
						<ul class="breadcrumb">
							
						</ul>
					</div>
					
					
					<div class="container-fluid">
						<div class="row">
						
							<div class="col-md-8">						
								<div class="panel">
								
									<div class="project-heading">
										<div class="row">
											<div class="col-md-9">
												<div class="media">
													<div class="media-left">
														<img src="../resources/assets/img/project-logo.png" class="project-logo" alt="Project Logo">
													</div>
													<div class="media-body">
														<h2 class="project-title">${approval.eApproval_title}</h2>
														<c:if test="${ban eq true}">
															<span class="label label-danger label-transparent">반려</span>
														</c:if>
														
														<!-- <span class="label label-success status">진행중</span> -->
													</div>
												</div>
											</div>
											
											<div class="col-md-3 text-right">
												<div class="btn-group">
													<c:if test="${isApproval eq true}">
														<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-expanded="false">결재하기
															<span class="caret"></span>
														</button>
														<ul class="dropdown-menu dropdown-menu-right" role="menu">
															<li><a href="javascript:submit(1)">승인</a></li>
															<li><a href="javascript:submit(2)">거절</a></li>
															<li><a href="javascript:submit(3)">반려</a></li>
														</ul>
													</c:if>
													<c:if test="${ban eq true}">
														<a href="editApproval?eApproval_id=${approval.eApproval_id}">
															<button type="button" class="btn btn-primary">
																<i class="fa fa-pencil"></i>수정하기
															</button>
														</a>
													</c:if>
												</div>
											</div>
										</div>
										<div class="project-subheading">
											<div class="layout-table project-metrics">
												<div class="cell">
													<div class="main-info-item">
														<span class="title"><i class="fa fa-calendar-o icon custom-text-orange"></i>   DATE START</span>
														<span class="value">${approval.eApproval_sDate}</span>
													</div>
												</div>
												<div class="cell">
													<div class="main-info-item">
														<span class="title"><i class="fa fa-calendar-o icon custom-text-orange"></i>   DATE END</span>
														<span class="value">${approval.eApproval_fDate}</span>
													</div>
												</div>
												<!-- <div class="cell">
													<div class="main-info-item">
														<span class="title">EST. VALUE</span>
														<span class="value">$21,847</span>
													</div>
												</div> -->
												<div class="cell">
													<div class="main-info-item">
														<span class="title">PROGRESS</span>
														<div id="project-progress" class="progress progress-transparent custom-color-orange2">
															<div class="progress-bar" data-transitiongoal="${progress }"></div>
														</div>
													</div>
												</div>
												
												
												
											</div>
										</div>
									</div><!-- #project-heading DIV -->
									
									
									<div class="panel-body">
									
										<c:if test="${ban eq true}">
											
											<div class="project-info">
											
											<div class="panel-group project-accordion">											
										
												<div class="panel project-milestone">
													<div class="panel-heading">
														<h4 class="panel-title">
															<a href="#collapse2" data-toggle="collapse" data-parent="#accordion" class="collapsed">
																<span class="milestone-title"><i class="fa fa-check icon-indicator text-success"></i>반려 이유</span>
																
																<i class="fa fa-plus-circle toggle-icon"></i>
															</a>
														</h4>
													</div>
													<div id="collapse2" class="panel-collapse collapse">
														<div class="panel-body">
															<div class="milestone-section">
																
																<p class="milestone-description">
																	${reason}
																</p>
															</div>
															
														</div>
														<div class="panel-footer">
															<a href="editApproval?eApproval_id=${approval.eApproval_id}">
																<button type="button" class="btn btn-primary">
																	
																		<i class="fa fa-pencil"></i>수정하기
																	
																</button>
															</a>
															<!-- <a href="#" class="btn btn-default"><i class="fa fa-cloud-upload"></i> UPLOAD</a>
															<a href="#" class="btn btn-success"><i class="fa fa-file"></i> VIEW INVOICE</a> -->
														</div>
													</div>
												</div>
												
												
											</div>
										</div>
											
											
										</c:if>
									
									
										<div class="project-info">
											<h3 class="info-heading">문서 내용</h3>
											<p class="project-description">
												${approval.eApproval_content2}
											</p>
										</div>
										
									</div> 
								</div>
							</div>
							
							<!-- 오른쪽 행 -->
							<div class="col-md-4">
								<!-- project team -->
								<div class="panel">
									<div class="panel-heading">
										<h4 class="panel-title">작성자 & 결재자</h4>
										<div class="right">
											<!-- <button type="button" class="btn btn-primary">
												<span class="sr-only">Add Contact</span>
												<i class="fa fa-user-plus"></i>
											</button> -->
										</div>
									</div>
									
									<div class="panel-body">
										<ul class="list-unstyled list-contacts">
											<li>
												<div class="media">
													<img src="../resources/assets/img/people/female3.png" class="picture" alt="">
													<span class="status online"></span>
												</div>
												<div class="info">
													<span class="name">${approvalLine.user_id}</span>
													<span class="title">결재 작성자</span>
												</div>
												<div class="controls">
													<a href="#"><i class="fa fa-commenting-o"></i></a>
												</div>
											</li>
											<li>
												<div class="media">
													<div class="picture custom-bg-blue3">MB</div>
													<span class="status"></span>
												</div>
												<div class="info">
													<span class="name">${approvalLine.eApprovalLine_person1}</span>
													<span class="email">1차 결재자</span>
												</div>
												<div class="controls">
													<a href="#"><i class="fa fa-commenting-o"></i></a>
												</div>
											</li>
											<li>
												<div class="media">
													<img src="../resources/assets/img/people/male1.png" class="picture" alt="">
													<span class="status online"></span>
												</div>
												<div class="info">
													<span class="name">${approvalLine.eApprovalLine_person2}</span>
													<span class="email">2차 결재자</span>
												</div>
												<div class="controls">
													<a href="#"><i class="fa fa-commenting-o"></i></a>
												</div>
											</li>
											<li>
												<div class="media">
													<img src="../resources/assets/img/people/female4.png" class="picture" alt="">
													<span class="status"></span>
												</div>
												<div class="info">
													<span class="name">${approvalLine.eApprovalLine_person3}</span>
													<span class="email">최종 결재자</span>
												</div>
												<div class="controls">
													<a href="#"><i class="fa fa-commenting-o"></i></a>
												</div>
											</li>
											<!-- <li>
												<div class="media">
													<img src="../resources/assets/img/people/female5.png" class="picture" alt="">
													<span class="status online"></span>
												</div>
												<div class="info">
													<span class="name">Martha Mendoza</span>
													<span class="email">Full-Stack Developer</span>
												</div>
												<div class="controls">
													<a href="#"><i class="fa fa-commenting-o"></i></a>
												</div>
											</li> -->
										</ul>
									</div>
								</div>
								<!-- end project team -->
								<!-- 첨부파일 -->
								<div class="panel">
									<div class="panel-heading">
										<h4 class="panel-title">첨부파일</h4>
									</div>
									<div class="panel-body">
										<ul class="list-unstyled list-justify list-file-simple">
											<li>
												<c:choose>
													<c:when test="${approval.eApproval_original ne null}">
														<a href="download?eApproval_id=${approval.eApproval_id}">
															<i class="fa fa-file-word-o"></i>
															${approval.eApproval_original}
														</a>
														<span>4 MB</span>
													</c:when>
													<c:otherwise>
														첨부파일이 없습니다.
													</c:otherwise>
													
												</c:choose>
											</li>
											<!-- <li><a href="#"><i class="fa fa-file-pdf-o"></i>Final_Presentation.ppt</a>
												<span>20 MB</span>
											</li>
											<li><a href="#"><i class="fa fa-file-zip-o"></i>Phase1_AllFiles.zip</a>
												<span>315 MB</span>
											</li>
											<li><a href="#"><i class="fa fa-file-excel-o"></i>Meeting_Schedule.xls</a>
												<span>1 MB</span>
											</li> -->
										</ul>
									</div>
									<!-- <div class="panel-footer text-right">
										<a href="#" class="btn btn-primary btn-sm"><i class="fa fa-cloud-upload"></i> UPLOAD FILE</a>
									</div> -->
								</div>
								<!-- end 첨부파일 -->
								
								
							</div> <!-- 오른쪽행 -->
							
							
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
		<script src="../resources/assets/vendor/bootstrap-progressbar/js/bootstrap-progressbar.min.js"></script>
		<script src="../resources/assets/scripts/klorofilpro-common.js"></script>
		<script src="../resources/assets/vendor/sweetalert2/sweetalert2.js"></script>
		<!-- DEMO PANEL -->
		<!-- for demo purpose only, you should remove it on your project directory -->
		<script type="text/javascript">
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
		});
		</script>
		
		<!-- END DEMO PANEL -->
		<script>
		$(function()
		{
			// project progress
			$('#project-progress .progress-bar').progressbar(
			{
				display_text: 'fill'
			});
			// accordion toggle collapse
			$('.project-accordion [data-toggle="collapse"]').on('click', function()
			{
				$(this).find('.toggle-icon').toggleClass('fa-minus-circle fa-plus-circle');
			});
		});
		</script>
	</body>
</html>