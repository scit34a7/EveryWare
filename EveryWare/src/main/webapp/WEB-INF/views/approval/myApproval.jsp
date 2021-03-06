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
		<!-- PROGRESS BAR -->
		<link rel="stylesheet" href="../resources/assets/vendor/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css">
		
		<link rel="stylesheet" href="../resources/assets/vendor/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="../resources/assets/vendor/themify-icons/css/themify-icons.css">
		<link rel="stylesheet" href="../resources/assets/vendor/pace/themes/orange/pace-theme-minimal.css">
		<link rel="stylesheet" href="../resources/assets/vendor/datatables/css-main/jquery.dataTables.min.css">
		<link rel="stylesheet" href="../resources/assets/vendor/datatables/css-bootstrap/dataTables.bootstrap.min.css">
		<link rel="stylesheet" href="../resources/assets/vendor/datatables-tabletools/css/dataTables.tableTools.css">
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
	</head>
	<body>
		<!-- WRAPPER -->
		<div id="wrapper">
		
		
		<!-- NAVBAR -->
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="brand">
				<a href="../index"> <img
					src="../resources/assets/img/logo-white.png"
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
							data-toggle="dropdown"> <span>${sessionScope.userName}</span>
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
			알림이 있습니다.
			<!-- MAIN -->
			
			
			<!-- LEFT SIDEBAR -->
		<div id="sidebar-nav" class="sidebar">
			<nav>
				<ul class="nav" id="sidebar-nav-menu">
					<li class="menu-group">Main</li>
					<li class="panel"><a href="index" data-toggle="collapse in"
						data-parent="#sidebar-nav-menu" class="collapsed"><i
							class="ti-dashboard"></i> <span class="title">MainHome</span> <i
							class="icon-submenu ti-angle-left"></i></a></li>
					<li class="panel"><a href="#subLayouts" data-toggle="collapse in"
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
								<li><a href="../support/supportMain">근태확인</a></li>
								<li><a href="../support/attendList">근태현황</a></li>
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
								<li><a href="../approval/approvalFormat" >결재 양식 작성</a></li>
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
		
		
			
			
			
			<div class="main">
				<!-- MAIN CONTENT -->
				<div class="main-content">
					<div class="content-heading clearfix">
						<div class="heading-left">
							<h1 class="page-title">내 결재</h1>
							<p class="page-subtitle">내 모든 결재를 볼 수 있습니다.</p>
						</div>
						<ul class="breadcrumb">
						
						</ul>
					</div>
					
					
					
					<div class="container-fluid">

						<!-- FEATURED DATATABLE 승인 가능 Now-->
						<div class="panel">
							<div class="panel-heading">
								<h3 class="panel-title">승인 가능 결재</h3>
							</div>
							<div class="panel-body">
								<!-- <p class="alert alert-info">Added paging options and live search</p> -->
								<table class="featured-datatable" class="table table-striped table-hover" >
									
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
						<!-- END FEATURED DATATABLE 승인 가능 Now-->
					</div>
					
					
					
					
					<div class="container-fluid">

						<!-- FEATURED DATATABLE 내가 올린 결재 fromMe-->
						<div class="panel">
							<div class="panel-heading">
								<h3 class="panel-title">내가 올린 결재</h3>
							</div>
							<div class="panel-body">
								<!-- <p class="alert alert-info">Added paging options and live search</p> -->
								<table class="featured-datatable" class="table table-striped table-hover" >
									
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
									
									<c:choose>
										<c:when test="${approvalList_fromMe != null}">
											<c:forEach var="eApp" items="${approvalList_fromMe}">
												<tr>
													<td>${eApp.eApproval_id}		</td>
													<td>
														<a href="readApproval?eApproval_id=${eApp.eApproval_id}">
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
													<td>							</td>
												
												</tr>
											</c:forEach>		
										</c:when>
										
									</c:choose>
									
									
								</tbody>
								</table>
							</div>
						</div>
						<!-- END FEATURED DATATABLE 내가 올린 결재 fromMe-->
					</div>
					
					
					
					
					
					
					
					
					<div class="container-fluid">

						<!-- FEATURED DATATABLE 승인 대기 결재 future-->
						<div class="panel">
							<div class="panel-heading">
								<h3 class="panel-title">승인 대기 결재</h3>
							</div>
							<div class="panel-body">
								<!-- <p class="alert alert-info">Added paging options and live search</p> -->
								<table class="featured-datatable" class="table table-striped table-hover" >
									
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
									
									<c:choose>
										<c:when test="${approvalList_future != null}">
											<c:forEach var="eApp" items="${approvalList_future}">
												<tr>
													<td>${eApp.eApproval_id}		</td>
													<td>
														<a href="readApproval?eApproval_id=${eApp.eApproval_id}">
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
													<td>							</td>
												
												</tr>
											</c:forEach>		
										</c:when>
										
									</c:choose>
									
									
								</tbody>
								</table>
							</div>
						</div>
						<!-- END FEATURED DATATABLE 승인 대기 결재 future-->
					</div>
					
					
					
					<div class="container-fluid">

						<!-- FEATURED DATATABLE 승인 한 결재 past-->
						<div class="panel">
							<div class="panel-heading">
								<h3 class="panel-title">승인 한 결재</h3>
							</div>
							<div class="panel-body">
								<!-- <p class="alert alert-info">Added paging options and live search</p> -->
								<table class="featured-datatable" class="table table-striped table-hover" >
									
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
									
									<c:choose>
										<c:when test="${approvalList_past != null}">
											<c:forEach var="eApp" items="${approvalList_past}">
												<tr>
													<td>${eApp.eApproval_id}		</td>
													<td>
														<a href="readApproval?eApproval_id=${eApp.eApproval_id}">
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
													<td>							</td>
												
												</tr>
											</c:forEach>		
										</c:when>
										
									</c:choose>
									
									
								</tbody>
								</table>
							</div>
						</div>
						<!-- END FEATURED DATATABLE 승인 한 past-->
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
		
		<!-- Approval버전으로 따로 만듬 -->
		<script src="../resources/assets/vendor/datatables/js-main/jquery.dataTablesApproval.min.js"></script>
		
		<script src="../resources/assets/vendor/datatables/js-bootstrap/dataTables.bootstrap.min.js"></script>
		<script src="../resources/assets/vendor/datatables-colreorder/dataTables.colReorder.js"></script>
		<script src="../resources/assets/vendor/datatables-tabletools/js/dataTables.tableTools.js"></script>
		<script src="../resources/assets/scripts/klorofilpro-common.js"></script>
		
		<!-- PROGRESS BAR -->
		<script src="../resources/assets/vendor/bootstrap-progressbar/js/bootstrap-progressbar.min.js"></script>
		
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
			
			// project progress
			$('#project-progress .progress-bar').progressbar(
			{
				display_text: 'fill'
			});
			
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
			$('.featured-datatable').dataTable(
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
					"sSwfPath": "../resources/assets/vendor/datatables-tabletools/swf/copy_csv_xls_pdf.swf"
				}
			});
			// datatable with scrolling
			$('#datatable-basic-scrolling').dataTable(
			{
				scrollY: "300px",
				scrollCollapse: true,
				paging: false
			});
		});
		</script>
	</body>
</html>