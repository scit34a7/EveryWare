<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE HTML>
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
		<link rel="stylesheet" href="../resources/assets/vendor/summernote/summernote.css">
		<link rel="stylesheet" href="../resources/assets/vendor/bootstrap-markdown/bootstrap-markdown.min.css">
		
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
		
		
		
		<!-- 파일 전송 -->
		<script>
		$(document).ready(function(){
			
			/* //이벤트 처리
			$('#plusAttachedBt').on('click', function(){
				var output = $('#attachedOutput').html();
				output += '<br>' + '<input type="file" name="upload" size="30">';
				$('#attachedOutput').html(output);
			}); */
			
			
			//이벤트 처리(첨부파일)
			$('#plusAttachedBt').on('click', function(){
				var output = $('#attachedOutput').html();
				output += '<br>' + '<input type="file" name="upload" class="upload">';
				$('#attachedOutput').html(output);
				
				var output2 = $('#attachedOutput').html();
				output2 += '<button class="btn btn-success">파일선택</button>';
				$('#attachedOutput').html(output2);
			});
			
		});
		
		
		//글쓰기폼 확인
		function formCheck() {
			var board_title = document.getElementById('board_title');
			var board_content = document.getElementById('board_content');
			
			if (board_title.value.length < 2) {
				alert("제목을 입력하세요.");
				board_title.focus();
				board_title.select();
				return false;
			}
			if (board_content.value.length < 2) {
				alert("내용을 입력하세요.");
				board_content.focus();
				board_content.select();
				return false;
			}
			return true;
		}
		
		</script>	
		
		
		<!-- 첨부파일시 기존 파일버튼 숨김 -->
		<style>
		input.upload {  
		  opacity: 0;       /*input type="file" tag 투명하게 처리*/
		  position:absolute;
		
			/* filter:alpha(opacity=0); */
		  /* position: relative; */
		}
		</style>
		
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
							data-toggle="dropdown"> <span>${sessionScope.userName }</span>
						</a>
							<ul class="dropdown-menu logged-user-menu">
								<<li><a href="<c:url value ='/user/userInfo'/>" ><i class="ti-user"></i> <span>개인정보</span></a></li>
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
						data-parent="#sidebar-nav-menu" class="active"><i
							class="ti-pie-chart"></i> <span class="title">업무지원</span> <i
							class="icon-submenu ti-angle-left"></i></a>
						<div id="charts" class="collapse in">
							<ul class="submenu">
								<li><a href="./supportMain">근태확인</a></li>
								<li><a href="./attendList">근태현황</a></li>
								<li><a href="./boardList" class = "active">업무보고</a></li>
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
						<p class="page-subtitle">
							부서/개인업무에 대한 <strong>보고, 정보공유</strong>의 기능을 담당합니다. 
						</p>
						</div>
						<ul class="breadcrumb">
							
						</ul>
					</div>





		<!-- 본문 내용 시작 -->	
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-11">
					
					<div class="panel">
						<div class="panel-heading">
							<h3 class="panel-title">글수정</h3>
						</div>
						<div class="panel-body">
			
			
			<!-- 폼 태그 -->
			<form id="writeform" action="edit" method="post" 
				enctype="multipart/form-data" onsubmit="return formCheck();">
				<!-- 폼 전송 시 글번호도 전달 -->
				<input type="hidden" name="board_id" value="${board.board_id }">
				<input type="hidden" name="boardFolder_id" value="${board.boardFolder_id }">
				
						<div class="form-group">
						<label>제목</label>
						<input type="text" class="form-control" id="board_title" name="board_title" value="${board.board_title}" required>
						</div>
						
						 <div class="form-group">
						 <label>내용</label>
						 <textarea class="summernote" id="board_content" name="board_content" required>
						 ${board.board_content}
						 </textarea> 
						 </div>	
				
						<div class="margin-bottom-30"></div>		
						
						
					<!-- 
						<label>첨부파일</label>
						<span id="attachedOutput">
							<input type="file" name="upload" value="파일 선택">
						</span>	
							<br><input type="button" id="plusAttachedBt" class="btn btn-success btn-outline" value="파일 추가">
							 -->	
							 
							 
						<label>첨부파일</label><br>
						<span id="attachedOutput">
							<input type="file" name="upload" class="upload">
							<button class="btn btn-success">파일선택</button>
						</span>	
							<br><br><input type="button" id="plusAttachedBt" class="btn btn-info" value="파일 추가">
						 
						
						<br><br><br><br><br>
						<div id="submitBtAlign">
							<center><button type="submit" class="btn btn-primary btn-lg">수정</button></center>
						</div>
				
					</form>	
					</div>
					</div>
				</div>
				</div>
				</div>
				</div>
		
			<!-- END MAIN CONTENT -->
			
		</div>
			<!-- END MAIN -->
			<div class="clearfix"></div>
			<footer>
				<div class="container-fluid">
					<p class="copyright">&copy; 2018 <a href="../index" target="_blank">EveryWare</a>. All Rights Reserved.</p>
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
		<script src="../resources/assets/vendor/dropify/js/dropify.min.js"></script>
		<script src="../resources/assets/vendor/markdown/markdown.js"></script>
		<script src="../resources/assets/vendor/summernote/summernote.min.js"></script>
		<script src="../resources/assets/vendor/to-markdown/to-markdown.js"></script>
		<script src="../resources/assets/vendor/bootstrap-markdown/bootstrap-markdown.js"></script>
		
		
		<script>
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
			// markdown editor
			var initContent = '<h4>업무보고</h4> ' +
				'<p>날짜: </p> ' +
				'<p>작성자: </p>' +
				'<p>내용: </p>' +
				'<p>참고: </p>';
			$('#markdown-editor').text(toMarkdown(initContent));
		});
		</script>

</body>
</html>
