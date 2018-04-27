<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<title>Everyware | Mail</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!-- VENDOR CSS -->
<link rel="stylesheet"
	href="../resources/assets/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="../resources/assets/vendor/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="../resources/assets/vendor/themify-icons/css/themify-icons.css">
<link rel="stylesheet"
	href="../resources/assets/vendor/pace/themes/orange/pace-theme-minimal.css">
<!-- MAIN CSS -->
<link rel="stylesheet" href="../resources/assets/css/main.css">
<link rel="stylesheet"
	href="../resources/assets/css/skins/sidebar-nav-darkgray.css"
	type="text/css">
<link rel="stylesheet" href="../resources/assets/css/skins/navbar3.css"
	type="text/css">
<!-- FOR DEMO PURPOSES ONLY. You should/may remove this in your project -->
<link rel="stylesheet" href="../resources/assets/css/demo.css">
<link rel="stylesheet" href="../resources/demo-panel/style-switcher.css">
<!-- ICONS -->
<link rel="apple-touch-icon" sizes="76x76"
	href="../resources/assets/img/apple-icon.png">
<link rel="icon" type="image/png" sizes="96x96"
	href="../resources/assets/img/favicon.png">
</head>
<body class="sidebar-minified has-content-menu page-inbox">
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
						data-	="#sidebar-nav-menu" class="collapsed"><i
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
						<h1 class="page-title">e메일</h1>
						<p class="page-subtitle">
							You have <strong>118 unread messages</strong>
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
												<li><a href="./sendMail"><i class="fa fa-pencil"></i>
														편지쓰기</a></li>
												<li><a href="./getMail?sort=all"
													<c:if test ="${sort== 0}">style = "color : blue; font-weight:bold"</c:if>><i
														class="fa fa-inbox"></i> 받은편지함</a></li>
												<li><a href="./getMail?sort=send"
													<c:if test ="${sort== 2}">style = "color : blue; font-weight:bold"</c:if>><i
														class="fa fa-mail-forward"></i> 보낸편지함</a></li>
												<li><a href="./getMail?sort=temporary"
													<c:if test ="${sort== 5}">style = "color : blue; font-weight:bold"</c:if>><i
														class="fa fa-folder"></i> 임시보관함</a></li>
												<li><a href="./getMail?sort=important"
													<c:if test ="${sort== 3}">style = "color : blue; font-weight:bold"</c:if>><i
														class="fa fa-flag"></i> 중요편지함</a></li>
												<li><a href="./getMail?sort=self"
													<c:if test ="${sort== 1}">style = "color : blue; font-weight:bold"</c:if>><i
														class="fa fa-folder"></i> 내게쓴편지함</a></li>
												<li><a href="./getMail?sort=trash"
													<c:if test ="${sort== 4}">style = "color : blue; font-weight:bold"</c:if>><i
														class="fa fa-trash"></i> 휴지통</a></li>
												<li><a href="./setMailForm"><i class="fa fa-cog"></i>
														양식 설정</a></li>
											</ul>

										</nav>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-9">
							<div class="content-right clearfix">
								<div class="content-panel view-message">
									<div class="content-menu-right">
										<div class="header">
											<div class="content-menu-header clearfix">
												<button type="button" class="btn-open-content-menu">
													<i class="fa fa-bars"></i>
												</button>
												<h2 class="heading">Messages</h2>
												<button type="button" class="btn-icon">
													<i class="fa fa-refresh"></i>
												</button>
											</div>

											<div class="content-menu-header clearfix">
												<table style="border-spacing: 10px; padding: 10px;">
													<tr>
														<td>
															<div class="fancy-checkbox custom-bgcolor-green">
																<label> <input type="checkbox" id="checkAllBt">
																	<span></span>
																</label>
															</div>
														</td>

														<c:choose>
															<c:when test="${sort == 4 }">
																<td>
																	<button type="button" id="permanentDeleteBt"
																		class="btn btn-primary btn-toastr" data-context="info"
																		data-message="This is general theme info"
																		data-position="top-right">영구 삭제</button>
																</td>
																<td>
																	<button class="btn btn-default" id="getBackBt">복원</button>
																</td>
															</c:when>

															<c:when test="${sort == 5 }">
																<td>
																	<button type="button" id="mailDeleteBt"
																		class="btn btn-primary btn-block" data-context="info"
																		width="100%" data-message="This is general theme info"
																		data-position="top-right">임시 메일 삭제</button>
																</td>
															</c:when>

															<c:otherwise>
																<td>
																	<button type="button" id="mailDeleteBt"
																		class="btn btn-primary btn-toastr" data-context="info"
																		data-message="This is general theme info"
																		data-position="top-right">삭제</button>
																</td>
																<td>
																	<button class="btn btn-default" id="replyBt">답장</button>
																</td>
																<td style="margin-left: 10px;">
																	<button class="btn btn-default" id="forwardBt">전달</button>
																</td>
															</c:otherwise>


														</c:choose>
													</tr>
												</table>
											</div>
										</div>
										<!--  end of header -->

										<!-- in content, button line and list line -->
										<div class="content">

											<div id="list-message-scrollable">
												<ul class="inbox-list-message">

													<!-- 반복문  -->
													<form value="./deleteMail" method="post">
														<c:forEach var="a" items="${viewList}">
															<li class="unread">
																<table>
																	<tr>
																		<td>
																			<div class="fancy-checkbox custom-bgcolor-green">
																				<label> <input type="checkbox"
																					name="mailSelectBt" attr1="${a.message_name }"
																					attr2="${seesionScope.userId }"> <span></span>
																				</label>
																			</div>
																		</td>
																		<td>
																			<div name="importanceCheck"
																				class="fancy-checkbox custom-bgcolor-green"
																				style="cursor: pointer;" attr1="${a.message_name }"
																				attr2="${a.mailimportance }">
																				<label> <c:choose>
																						<c:when
																							test="${a.mailimportance!=null&& a.mailimportance !=''}">
																							<span class="mailImportance "
																								style="font-size: 2em; color: Blue; cursor: pointer;"><i
																								class="fa fa-star"></i></span>
																						</c:when>
																						<c:otherwise>
																							<span class="mailImportance "
																								style="font-size: 2em; color: Blue; cursor: pointer;"><i
																								class="fa fa-star-o"></i></span>
																						</c:otherwise>
																					</c:choose>
																				</label>
																			</div>
																		</td>
																		<td><label> <c:choose>
																					<c:when test="${a.mailreaded=='received'}">
																						<span class="mailShape"
																							style="font-size: 2em; color: Blue; cursor: pointer;"><i
																							class="fa fa-envelope-open-o"></i></span>
																					</c:when>
																					<c:otherwise>
																						<span class="mailShape"
																							style="font-size: 2em; color: Blue; cursor: pointer;"><i
																							class="fa fa-envelope"></i></span>
																					</c:otherwise>
																				</c:choose>
																		</label></td>
																		<td width="100%"><c:choose>
																				<c:when test="${sort == 5}">
																					<a href="./readTemp?message_name=${a.message_name}">
																						<div class="text">
																							<span class="sender">${a.from }</span> <span
																								class="timestamp">${a.maildate }</span>
																							<h3 class="title">${a.mailsubject }</h3>
																							<span class="timestamp">${a.mailreaded }</span>
																							<p class="preview"></p>

																							<c:if
																								test="${a.mailattached!=''&&a.mailattached!=null}">
																								<span class="attachment"><i
																									class="fa fa-paperclip"></i></span>
																							</c:if>
																						</div>
																					</a>
																				</c:when>

																				<c:otherwise>
																					<a href="./read?message_name=${a.message_name}">
																						<div class="text">
																							<span class="sender">${a.from }</span> <span
																								class="timestamp">${a.maildate }</span>
																							<h4 class="title">${a.mailsubject }</h4>
																							<span class="timestamp">${a.mailreaded }</span>
																							<p class="preview"></p>

																							<c:if
																								test="${a.mailattached!=''&&a.mailattached!=null}">
																								<span class="attachment"><i
																									class="fa fa-paperclip"></i></span>
																							</c:if>
																						</div>
																					</a>
																				</c:otherwise>
																			</c:choose></td>
																	</tr>
																</table>
															</li>
													</form>
													</c:forEach>
												</ul>
											</div>
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
			<div id="sidebar-right" class="right-sidebar"></div>
			<!-- END RIGHT SIDEBAR -->
		</div>
		<!-- END MAIN -->
		<div class="clearfix"></div>
		<footer>
			<div class="container-fluid">
				<p class="copyright">
					&copy; 2018 <a href="https://www.themeineed.com" target="_blank">EveryWare</a>. All Rights Reserved.
				</p>
			</div>
		</footer>
	</div>
	<!-- END WRAPPER -->
	<!-- Javascript -->
	<script src="../resources/assets/vendor/jquery/jquery.min.js"></script>
	<script src="../resources/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="../resources/assets/vendor/pace/pace.min.js"></script>
	<script
		src="../resources/assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script src="../resources/assets/scripts/klorofilpro-common.js"></script>
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

	<script>
		$(function() {
			$('#list-message-scrollable').slimScroll({
				height : '550px',
				wheelStep : 1,
				color : '#cecece'
			});

			//button 클리학면 전체 클릭 , 한번 더 클릭하면 해제 
			$('#checkAllBt').click(checkAllorNot);

			$('#mailDeleteBt').click(submitDeleteForm);

			$('div[name="importanceCheck"]').click(importanceCheck);

			$('#permanentDeleteBt').click(permanentDelete);

			$('#getBackBt').click(getBack);

			$('#forwardBt').click(forwardMail);

			$('#replyBt').click(replyMail);

		});

		//#checkAllBt
		function checkAllorNot() {

			if ($('input:checkbox[id="checkAllBt"]').is(":checked") == true) {

				$('input:checkbox[name="mailSelectBt"]').each(function() {
					this.checked = true;
				});
			} else {

				$('input:checkbox[name="mailSelectBt"]').each(function() {
					this.checked = false;
				});
			}
		}

		//submit Delete Form
		function submitDeleteForm() {

			var deleteArray = [];

			$('input:checkbox[name= "mailSelectBt"]').each(function(i) {

				if ($(this).is(':checked')) {
					deleteArray.push($(this).attr('attr1'));
				}

			});

			alert(deleteArray);
			jQuery.ajaxSettings.traditional = true;

			$.ajax({
				url : './deleteMail',
				type : 'POST',
				data : {
					deleteArray : JSON.stringify(deleteArray),
					sort : "normal"
				},
				dataType : 'text',
				success : function(txt) {
					location.reload();

				},
				error : function(e) {
					alert(e);
				}

			});

			return false;
		}
		78
		// 중요한 메일 체크하기 
		function importanceCheck() {

			var message_name = $(this).attr('attr1');
			var message_importance = $(this).attr('attr2');
			;

			$.ajax({
				url : './importanceCheck',
				type : 'GET',
				data : {
					message_name : message_name,
					message_importance : message_importance
				},
				dataType : 'text',
				success : function(txt) {
					location.reload();
				},
				error : function(e) {
					alert(e);
				}
			});
		}

		// 영구 삭제 
		function permanentDelete() {

			var deleteArray = [];

			$('input:checkbox[name= "mailSelectBt"]').each(function(i) {

				if ($(this).is(':checked')) {
					deleteArray.push($(this).attr('attr1'));
				}

			});

			alert(deleteArray);
			jQuery.ajaxSettings.traditional = true;

			$.ajax({
				url : './deleteMail',
				type : 'POST',
				data : {
					deleteArray : JSON.stringify(deleteArray),
					sort : "permanent"
				},
				dataType : 'text',
				success : function(txt) {
					location.reload();

				},
				error : function(e) {
					alert(e);
				}
			});

			return false;
		}

		// 메일 휴지통으로 부터 복원하기 ;
		function getBack() {

			var deleteArray = [];

			$('input:checkbox[name= "mailSelectBt"]').each(function(i) {

				if ($(this).is(':checked')) {
					deleteArray.push($(this).attr('attr1'));
				}

			});

			alert(deleteArray);
			jQuery.ajaxSettings.traditional = true;

			$.ajax({
				url : './deleteMail',
				type : 'POST',
				data : {
					deleteArray : JSON.stringify(deleteArray),
					sort : "getBack"
				},
				dataType : 'text',
				success : function(txt) {
					location.reload();

				},
				error : function(e) {
					alert(e);
				}
			});

			return false;
		}

		// ForwardMail  ;
		function forwardMail() {

			var message_name = null;

			$('input:checkbox[name= "mailSelectBt"]').each(function(i) {

				if ($(this).is(':checked')) {
					message_name = $(this).attr('attr1');
				}
			});

			if (message_name != null) {
				location.href = './forwardMail?message_name=' + message_name
						+ '&check=forward';

			} else {
				alert('[Forward] there is no messageName');
			}
			return false;
		}

		// ReplyMail 
		function replyMail() {

			var message_name = null;

			$('input:checkbox[name= "mailSelectBt"]').each(function(i) {

				if ($(this).is(':checked')) {
					message_name = $(this).attr('attr1');
				}
			});

			if (message_name != null) {
				location.href = './forwardMail?message_name=' + message_name
						+ '&check=reply';

			} else {
				alert('[Forward] there is no messageName');
			}
			return false;
		}
	</script>
</body>
</html>