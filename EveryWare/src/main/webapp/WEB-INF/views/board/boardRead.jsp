<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE HTML>
<html>
	<head>
		<title>Dynamic Tables | Klorofil Pro - Bootstrap Admin Dashboard Template</title>
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
		//글삭제시 확인 스크립트
		function deleteCheck(board_id){
			if(confirm("정말 삭제하시겠습니까?")){
				location.href = 'delete?board_id=' + board_id;
			}
		}
		
		//리플 쓰기 폼 체크
		function replyFormCheck() {
			var bReply_content = document.getElementById('bReply_content');
			if (bReply_content.value.length < 1) {
				alert('리플 내용을 입력하세요.');
				bReply_content.focus();
				bReply_content.select();
				return false;
			}
			return true;			
		}
		
		//리플 수정
		function replyEditForm(bReply_id, board_id, bReply_content) {
			//해당 리플번호를 붙여 생성한 <div>태그에 접근
			var div = document.getElementById("div"+bReply_id);
			
			var str = '<form name="editForm' + bReply_id + '" action="replyEdit" method="post">';
			str += '<input type="hidden" name="bReply_id" value="'+bReply_id+'">';
			str += '<input type="hidden" name="board_id" value="'+board_id+'">';
			str += '&nbsp;';
			str += '<input type="text" name="bReply_content" value="' + bReply_content + '" style="width:530px;">';
			str += '&nbsp;';
			str += '<a href="javascript:replyEdit(document.editForm' + bReply_id + ')">[저장]</a>';
			str += '&nbsp;';
			str += '<a href="javascript:replyEditCancle(document.getElementById(\'div' + bReply_id + '\'))">[취소]</a>';
			str += '</form>';
			div.innerHTML = str;
		}
		
		//리플 수정 취소
		function replyEditCancle(div) {
			div.innerHTML = '';
		}
		
		//리플 수정 정보 저장
		function replyEdit(form) {
			if (confirm('수정된 내용을 저장하시겠습니까?')) {
				form.submit();
			}
		}
		
		//리플 삭제
		function replyDelete(bReply_id, board_id) {
			if (confirm('리플을 삭제하시겠습니까?')) {
				location.href='replyDelete?bReply_id=' + bReply_id + '&board_id=' + board_id;
			}
		}
		
		
		</script>
	
	</head>
	
	
	<body>
	<!-- WRAPPER -->
		<div id="wrapper">
		<!-- NAVBAR -->
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="brand">
				<a href="index"> <img src="../resources/assets/img/logo-white.png"
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
						<li><a href="#" class="btn-toggle-rightsidebar"> <i
								class="ti-layout-sidebar-right"></i>
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
						<li class="dropdown"><a href="#" id="tour-help"
							class="dropdown-toggle" data-toggle="dropdown"><i
								class="ti-help"></i> <span class="hide">Help</span></a>
							<ul class="dropdown-menu">
								<li><a href="#"><i class="ti-direction"></i> Basic Use</a></li>
								<li><a href="#"><i class="ti-server"></i> Working With
										Data</a></li>
								<li><a href="#"><i class="ti-lock"></i> Security</a></li>
								<li><a href="#"><i class="ti-light-bulb"></i>
										Troubleshooting</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> <img
								src="../resources/assets/img/user.png" alt="Avatar"> <span>박자바</span>
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
								<li><a href="../appviews-inbox">받은메일함 <span
										class="label label-success">NEW</span></a></li>
								<li><a href="../layout-minified">Minified</a></li>
								<li><a href="../layout-fullwidth">Fullwidth</a></li>
								<li><a href="../layout-default">Default</a></li>
								<li><a href="../layout-grid">Grid</a></li>
							</ul>
						</div></li>
					<li class="panel"><a href="#forms" data-toggle="collapse"
						data-parent="#sidebar-nav-menu" class="collapsed"><i
							class="ti-receipt"></i> <span class="title">스케줄 관리</span> <i
							class="icon-submenu ti-angle-left"></i></a>
						<div id="forms" class="collapse ">
							<ul class="submenu">
								<li><a href="../forms-inputs">Inputs</a></li>
								<li><a href="../forms-multiselect">Multiselect</a></li>
								<li><a href="../forms-input-pickers">Input Pickers</a></li>
								<li><a href="../forms-input-sliders">Input Sliders</a></li>
								<li><a href="../forms-select2">Select2</a></li>
								<li><a href="../forms-xeditable">In-place Editing</a></li>
								<li><a href="../forms-dragdropupload">Drag and Drop Upload</a></li>
								<li><a href="../forms-layouts">Form Layouts</a></li>
								<li><a href="../forms-validation">Form Validation</a></li>
								<li><a href="../forms-texteditor">Text Editor</a></li>
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

					<li class="panel"><a href="#uiElements" data-toggle="collapse"
						data-parent="#sidebar-nav-menu" class="collapsed"><i
							class="ti-panel"></i> <span class="title">프로젝트관리</span> <i
							class="icon-submenu ti-angle-left"></i></a>
						<div id="uiElements" class="collapse ">
							<ul class="submenu">
								<li><a href="../ui-sweetalert">Sweet Alert</a></li>
								<li><a href="../ui-treeview">Tree View</a></li>
								<li><a href="../ui-wizard">Wizard</a></li>
								<li><a href="../ui-dragdrop-panel">Drag &amp; Drop Panel</a></li>
								<li><a href="../ui-nestable">Nestable</a></li>
								<li><a href="../ui-gauge">Gauge <span
										class="label label-success">NEW</span></a></li>
								<li><a href="../ui-panels">Panels</a></li>
								<li><a href="../ui-progressbars">Progress Bars</a></li>
								<li><a href="../ui-tabs">Tabs</a></li>
								<li><a href="../ui-buttons">Buttons <span
										class="label label-info">UPDATED</span></a></li>
								<li><a href="../ui-bootstrap">Bootstrap UI</a></li>
								<li><a href="../ui-social-buttons">Social Buttons</a></li>
								<li><a href="../ui-icons">Icons</a></li>
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
						
						
					<li><a href="approval/approvalList"><i class="ti-widget"></i> <span
							class="title">전자결재</span></a></li>
					<li><a href="meet/meetingList"><i class="ti-bell"></i> <span
							class="title">화상회의</span> <span class="badge">15</span></a></li>
							
								
					<!-- <li><a href="widgets"><i class="ti-widget"></i> <span
							class="title">전자결재</span></a></li> -->
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
							
							
				
					<!-- <li><a href="../typography"><i class="ti-paragraph"></i> <span
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
								<li><a href="meet/annyangTest">음성 테스트</a></li>
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
							<h1 class="page-title">게시판</h1>
						</div>
						<ul class="breadcrumb">
							<li><a href="#"><i class="fa fa-home"></i>홈</a></li>
							<li><a href="#">게시판</a></li>
							<!-- <li class="active">회의목록</li> -->
						</ul>
					</div>
	
	
	
	
		<!-- 본문 내용 시작 -->
			<div class="container-fluid">
			<div class="row">
				<div class="col-md-11">
				<!-- CONTACT FORM -->
					<div class="panel">
						<div class="panel-heading">
							
							<c:choose>
			
							<c:when test="${boardFolder_id==1}">
							<h3 class="panel-title">공지사항 </h3>
							</c:when>
							
							<c:when test="${boardFolder_id==2}">
							<h3 class="panel-title">부서게시판 </h3>
							</c:when>
							
							<c:when test="${boardFolder_id==3}">
							<h3 class="panel-title">커뮤니티 </h3>
							</c:when>
						
							<c:when test="${boardFolder_id==4}">
							<h3 class="panel-title">업무보고</h3>
							</c:when>
						
							</c:choose>
							
							
						</div>
						<div class="panel-body">
							
							<div class="form-group">
								<table>
								<tr>
								<th style="width:100px; height:30px">작성자 </th>
								<td style="width:700px; height:30px">${board.user_id}</td>
								</tr>
							
								<tr>
								<th style="width:100px; height:30px">작성일 </th>
								<td style="width:100px; height:30px">${board.board_date}</td>
								</tr>
								<tr>
								<th style="width:100px; height:30px">조회수 </th>
								<td style="width:100px; height:30px">${board.board_hits}</td>
								</tr>
								<tr>
								<th style="width:100px; height:30px">제목 </th>
								<td style="width:100px; height:30px">${board.board_title}</td>
								</tr>
								<tr>
								<th style="width:100px; height:30px">내용 </th> 
								<td style="width:100px; height:30px"><pre>${board.board_content}</pre></td>
								</tr>
								<tr>
				
						  
						  
							   <th style="width:100px; height:30px">파일첨부 </th> 
								<td style="width:100px; height:30px">
								<!-- 첨부된 파일이 있는 경우, 해당 파일을 다운로드 할 수 있는 링크 제공 -->
								<c:if test="${board.board_attached == 'T'}">
								 	<c:forEach var="attachedList" items="${boardAttachedList}"> 
									<a href="download?bAttached_id=${attachedList.bAttached_id}">
									
									${attachedList.bAttached_original} <br>
								</a>
								</c:forEach>
							
							</c:if>
							</td> 
							
							</tr>
							</table>
								</div>
							
							
						<br>
						
						
						<center>
						<p class="demo-button">
						
						<!-- 목록보기-->
						<a href="boardList?boardFolder_id=${board.boardFolder_id}" class="btn btn-success">목록보기</a>&nbsp;&nbsp;
						
						<!-- 본인 글인 경우에만 보이기 -->
						<c:if test="${userName == board.user_id}">
							<!-- 현재글 삭제하기-->
							<a href="javascript:deleteCheck(${board.board_id})" class="btn btn-danger">삭제</a>&nbsp;&nbsp;
							<!-- 현재글 수정하기-->
							<a href="edit?board_id=${board.board_id}" class="btn btn-primary">수정</a>
						</c:if>
					
						</p>
						</center>
						
						<br><br>
						
						<!-- 리플 내용 -->
						<!-- 리플 작성 폼 시작 -->
						<form id="replyform" action="replyWrite" method="post" onSubmit="return replyFormCheck();">
						
						리플&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="hidden" name="board_id" value="${board.board_id}" />
							<input type="text" name="bReply_content" id="bReply_content" style="width:700px;" />
							&nbsp;<input type="submit" class="btn btn-info" value="저장" />
						</form>
						<!-- /리플 작성 폼 끝 -->
						<br>
						
						
						<!-- 리플 목록 출력 시작 -->
						<table class="reply">
						<c:forEach var="reply" items="${replylist}">
							<tr>
								<td class="replyid" style="width:100px;">
									${reply.user_id}
								</td>
								<td class="replytext" style="width:600px;">
									${reply.bReply_content}
								</td>
								<td class="replydate" style="width:100px;">
									${reply.bReply_date}
								</td>
								<td>
									<c:if test="${userName == reply.user_id}">
										&nbsp;&nbsp;
										<a style="width:70px; height:30px;" href="javascript:replyEditForm(${reply.bReply_id}, ${reply.board_id}, '${reply.bReply_content}')">
											<button type="button" class="btn btn-success" title="Save"><i class="fa fa-save"></i>
												
											</button>
										</a>
									</c:if>
								</td>
								<td>
									<c:if test="${userName == reply.user_id}">
										
										<a style="width:70px; height:30px;" href="javascript:replyDelete(${reply.bReply_id}, ${reply.board_id })">
											<button type="button" class="btn btn-danger" title="Delete"><i class="fa fa-trash-o"></i>
												
											</button>
										</a>
									</c:if>
								</td>
							</tr>	
								
							<tr>
								<!-- 리플 수정 폼이 나타날 위치 -->
								<td class="white" colspan="4"><div id="div${reply.bReply_id}"></div></td>
							</tr>
								 
						</c:forEach>
						</table>
						<!-- /리플 목록 출력 끝 -->
						<br><br><br>
						</div>	
						
		
						</div>
					</div>
					<!-- END CONTACT FORM -->



		<!-- END MAIN CONTENT / 본문 내용 끝-->
			
		</div>
			<!-- END MAIN -->
			<div class="clearfix"></div>
			<footer>
				<div class="container-fluid">
					<p class="copyright">&copy; 2017 <a href="https://www.themeineed.com" target="_blank">Theme I Need</a>. All Rights Reserved.</p>
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
