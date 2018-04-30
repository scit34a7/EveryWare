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
<link rel="stylesheet"
	href="../resources/assets/vendor/summernote/summernote.css">

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
				<form class="navbar-form navbar-left search-form"></form>
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
		<!-- LEFT SIDEBAR -->
		<div id="sidebar-nav" class="sidebar">
			<nav>
				<nav>
					<ul class="nav" id="sidebar-nav-menu">
						<li class="menu-group">Main</li>
						<li class="panel"><a href="index" data-toggle="collapse"
							data-parent="#sidebar-nav-menu" class="collapsed"><i
								class="ti-dashboard"></i> <span class="title">MainHome</span> <i
								class="icon-submenu ti-angle-left"></i></a></li>
						<li class="panel"><a href="#subLayouts"
							data-toggle="collapse" data-parent="#sidebar-nav-menu"
							class="active"><i class="ti-layout"></i> <span
								class="title">e메일</span> <i class="icon-submenu ti-angle-left"></i></a>
							<div id="subLayouts" class="collapse in">
								<ul class="submenu">
									<li><a href="./getMail?sort=all">받은메일함 
									<c:if test="${mailRead>0}">
								 <span class="label label-success">NEW</span>
								</c:if>
									</a></li>
									<li><a href="./getMail?sort=send">보낸메일함</a></li>
									<li><a href="./sendMail" class = "active">편지쓰기</a></li>
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
						<h1 class="page-title">전자우편</h1>
						<p class="page-subtitle">
							메일을 <strong>수신, 발신, 관리</strong>할 수 있습니다. 
						</p>
					</div>
					<ul class="breadcrumb">
						
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
												<li><a href="./sendMail" style = "color : blue; font-weight:bold"><i class="fa fa-pencil"></i>
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
							<form action="./sendMail" id="sendForm" method="post"
								name="sendForm" enctype="multipart/form-data">
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
																<td><h4>받는 사람&nbsp;&nbsp;&nbsp;&nbsp;</h4></td>
																<td style="position: absolute; " width="50%";><label
																	for="contact-email" class="control-label sr-only">Email</label>

																	<div style = "overflow-x :scroll;">
																	<span class="form-control" > <span
																		id="blankForSending"> <!-- reply 또는 forward -->
																	</span> <input type="text" id="mailSearcher">
																</span>
																	</div>
																	<ul class="list-group" id="mailResult"
																		style="position: relative; z-index: 100;"></ul> <input
																	type="hidden" id="mailRecipients" name="mailRecipients">
																</td>
															</tr>
															<tr>
																<td><h4>참조&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h4></td>
																
																<td >
																	<label for="contact-email"
																		class="control-label sr-only">Reference</label> 
																		
																		<span class="form-control"> 
																			<span id="blankForCC"> 
																			<!-- reply 또는 forward -->
																			</span> 
																			<input type="text" id="mailSearcher2">
																		</span> 
																		
																		<ul class="list-group" id="mailCCResult"
																		style="position: relative; z-index: 100;"></ul> 
																		<input type="hidden" id="mailCCs" name="mailCCs">
																</td>
															</tr>

															<tr>
																<td width="13%"><h4>제목&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h4></td>
																<td><label for="contact-subject"
																	class="control-label sr-only">Subject</label> <input
																	type="text" name="mailSubject" class="form-control"
																	id="mailSubject" placeholder="Subject" size="80">
																</td>

																<td>
																	<div class="fancy-checkbox custom-bgcolor-green"
																		style="margin: 0">
																		<label> &nbsp;&nbsp; <input type="checkbox"
																			name="mailImportance"> <span>중요도</span>
																		</label>
																	</div>
																</td>
															</tr>
														</table>

													</div>
												</div>
												<div class="btn-group">
													<div class="form-group">
														<button type="button" class="btn btn-primary btn-replyx"
															id="getAddrBook">주소록 불러오기</button>
														<br>
													</div>
													<div class="form-group">
														<button type="button" class="btn btn-primary btn-replyx"
															id="setAddrBook">주소록으로 저장하기</button>
														<br>
													</div>
												</div>
												<!--  end of the button division -->
											</div>
										</div>
									</div>

									<div class="content">
										<div class="container-fluid">
											<textarea class="summernote" name="mailContent_summer">
										
											<c:choose>
												<c:when test="${sort == 5 }">
											
												<!--  임시 보관함으로 부터 왔을 대에  -->
													${mail.contentpreview }
												</c:when>
												<c:otherwise>
											
													${writeForm }
											
													<c:if test="${mail != null }">
											
														<br>
														<p>-------------------Original Message -----------------</p>
														<p id="dataFrom">  From : "${mail.from}" </p>
														<p id="dataTo">  To : "${mail.recipients}"</p>
														<p>  Cc :</p>
														<p>  Sent : ${mail. maildate}</p>
														<p>  Subject: ${mail.mailsubject }</p>
														<p>  Content: </p>	
														${mail.contentpreview }
											</c:if>
											</c:otherwise>
												
											</c:choose>
										</textarea>
											<div class="margin-bottom-30"></div>
										</div>
										<div class="container-fluid">

											<hr class="content-separator">
											<div class="attachment-list">
												<h4>첨부 파일</h4>

												<c:choose>
													<c:when test="${fn:length(attaches)>0}">
														<h4>${fn:length(attaches)} Attachments</h4>

														<div class="form-group">
															<label for="ticket-attachment"
																class="col-sm-3 control-label">Attach File</label>
															<div class="col-md-9">
																<input type="file" id="ticket-attachment"
																	name="mailAttach" multiple>
																<p class="help-block">
																	<em>Valid file type: .jpg, .png, .txt, .pdf. File
																		size max: 1 MB</em>
																</p>
															</div>
														</div>

														<ul class="list-inline">

															<!-- 그림 일갈 바꾸기 , href 또는 클릭 이벤트 부여해서 ajax로 다운받기 ;  -->
															<c:forEach var="a" items="${attaches}">
																<li style="cursor: pointer">
																	<!--<a href="./download?message_number=${a.message_number}&part_number=${a.part_number}"  -->
																	<a class="download_attached"
																	attr1="${a.message_number}" attr2="${a.part_number}">
																		<span class="file-type"> <img
																			src="../resources/assets/img/pages/inbox/attachment-img.jpg"
																			alt="Thumbnail"> <span class="text"> <span
																				class="filename">${a.fileName }</span> <br> <span
																				class="filesize">${a.size} byte</span>
																		</span>
																	</span>
																</a>
																</li>
															</c:forEach>
														</ul>
													</c:when>
													<c:otherwise>
														<h4>Attachments</h4>

														<div class="form-group">
															<label for="ticket-attachment"
																class="col-sm-3 control-label">Attach File</label>
															<div class="col-md-9">
																<input type="file" id="ticket-attachment"
																	name="mailAttach" multiple>
																<p class="help-block">
																	<em>Valid file type: .jpg, .png, .txt, .pdf. File
																		size max: 1 MB</em>
																</p>
															</div>
														</div>
													</c:otherwise>


												</c:choose>
											</div>
										</div>
							</form>
							<div class="footer">
								<div class="reply-message">
									Footer in the Mails
									<hr>

									<button type="submit" class="btn btn-primary btn-replyx"
										id="formSubmiter">보내기</button>

									<button type="button" class="btn btn-primary btn-replyx"
										onclick="insertTemp();">임시저장</button>

									<form id="hiddenAddressSetter" action="./saveAddress"
										method="post">
										<input type="hidden" name="mailto"> <input
											type="hidden" name="mailreference">
									</form>

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
	<script
		src="../resources/assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script src="../resources/assets/vendor/markdown/markdown.js"></script>
	<script src="../resources/assets/vendor/to-markdown/to-markdown.js"></script>
	<script
		src="../resources/assets/vendor/bootstrap-markdown/bootstrap-markdown.js"></script>
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
			$('.summernote').summernote({
				height : 300,
				focus : true,
				onpaste : function() {
					alert('You have pasted something to the editor');
				}
			});

			// 이메일 보내기 버튼에 이벤트 부여하기 
			document.getElementById('formSubmiter').onclick = function() {
				document.getElementById('sendForm').submit();
				return false;
			};

			$('#mailSearcher').click(mailSearch);
			$('#mailSearcher2').click(mailSearch2);

			if ('${mail.mailsubject}' != null && '${mail.mailsubject}' != '') {

				var check = '${check}';

				if (check == 'RE') {

					$('#blankForSending').html('${mail.from}');
					$('#mailRecipients').val('${mail.from}');
				}

				$('#mailSubject').val(
						'[' + '${check}' + ']' + '${mail.mailsubject}');

				$('#dataFrom').html(
						'<span>From : ' + '${mail.from}' + '</span>');

				$('#dataTo').html(
						'<span>To : ' + '${mail.recipients}' + '</span>');
			}

			// 임시저장함으로 부터 왔을 때에; 
			if ('${sort}' == 5) {

				$('#mailSubject').val('${mail.mailsubject}');
			}

			$('#setAddrBook').click(setAddrBook);
			$('#getAddrBook').click(getAddrBook);
		
		});//end of preparation; 

		function mailSearch() {
			$('#mailSearcher').keyup(function() {
				var searchTxt = $('#mailSearcher').val();

				if (searchTxt != '') {
					$.ajax({
						url : './mailSearch',
						type : 'get',
						data : {
							searchTxt : searchTxt
						},
						dataType : 'json',
						success : resultOfSearch,
						error : function(e) {

						}
					});
				} else {
					$('#mailResult').html('');
				}
			});
		}

		function resultOfSearch(resultList) {

			if (resultList.length > 0) {

				var searchResult = '';

				$.each(	resultList,	function(i, n) {
									searchResult += '<li class="list-group-item" name = "choice" style = "cursor:pointer; position: relative; z-index:100;" attr1 ='+resultList[i]+'>'
											+ resultList[i] + '</li>';

								});

				$('#mailResult').html(searchResult);

			} else {
				var searchResult = '<li class="list-group-item" name = "choice" style = "cursor:pointer; position: relative; z-index:100;" attr1 ='
						+ $('#mailSearcher').val()
						+ '>'
						+ $('#mailSearcher').val() + '</li>';

				$('#mailResult').html(searchResult);
			}

			$('li[name="choice"]').click(selectChoice);

		}

		function selectChoice() {
			var selectedValue = $(this).attr('attr1');

			// 여기서 다시 바꿔줘야함 , &lt; &gt		
			var selectedValueModified = deleteHtmlTag(selectedValue);

			$('#blankForSending').append(
					'<span>' + selectedValueModified
							+ ' <i class ="fa fa-times"></i></span>'); //XXX: 보여줄 때는 &lt; 로 ; 

			$('i[class= "fa fa-times"]').css('cursor', 'pointer');

			$('i[class= "fa fa-times"]').click(deleteAddress);

			$('#mailRecipients').val(
					$('#mailRecipients').val() + selectedValue + ","); //XXX: 실제로 갈 때에는 <>태그 그대로 

			$('#mailResult').html('');

			$('#mailSearcher').val('');

			return false;
		}

		//특수문자 대체 ! 
		function deleteHtmlTag(id) {

			//var content = id.value.trim();
			var content = id;
			content = content.replace(/&/g, "&amp;");
			content = content.replace(/</g, "&lt;");
			content = content.replace(/>/g, "&gt;");
			content = content.replace(/\"/g, "&quot;");

			return content;
		}

		function deleteAddress() {
			//지우기 ; 상위요소의 
			$(this).closest('span').html('');
		}

		function mailSearch2() {
			$('#mailSearcher2').keyup(function() {
				var searchTxt = $('#mailSearcher2').val();

				if (searchTxt != '') {
					$.ajax({
						url : './mailSearch',
						type : 'get',
						data : {
							searchTxt : searchTxt
						},
						dataType : 'json',
						success : resultOfSearch2,
						error : function(e) {

						}
					});
				} else {
					$('#mailResult').html('');
				}
			});
		}
		
		function resultOfSearch2(resultList) {

			if (resultList.length > 0) {

				var searchResult = '';

				$.each(	resultList,	function(i, n) {
									searchResult += '<li class="list-group-item" name = "choice" style = "cursor:pointer; position: relative; z-index:100;" attr1 ='+resultList[i]+'>'
											+ resultList[i] + '</li>';

								});

				$('#mailCCResult').html(searchResult);

			} else {
				var searchResult = '<li class="list-group-item" name = "choice" style = "cursor:pointer; position: relative; z-index:100;" attr1 ='
						+ $('#mailSearcher2').val()
						+ '>'
						+ $('#mailSearcher2').val() + '</li>';

				$('#mailCCResult').html(searchResult);
			}

			$('li[name="choice"]').click(selectChoice2);

		}
		
		function selectChoice2() {
			var selectedValue = $(this).attr('attr1');

			// 여기서 다시 바꿔줘야함 , &lt; &gt		
			var selectedValueModified = deleteHtmlTag(selectedValue);

			$('#blankForCC').append(
					'<span>' + selectedValueModified
							+ ' <i class ="fa fa-times"></i></span>'); //XXX: 보여줄 때는 &lt; 로 ; 

			$('i[class= "fa fa-times"]').css('cursor', 'pointer');

			$('i[class= "fa fa-times"]').click(deleteAddress);

			$('#mailCCs').val(
					$('#mailCCs').val() + selectedValue + ","); //XXX: 실제로 갈 때에는 <>태그 그대로 

			$('#mailCCResult').html('');

			$('#mailSearcher2').val('');

			return false;
		}
		
		
		//임시저장 
		function insertTemp() {

			var sendForm = document.sendForm;
			var url = './tempMail'

			sendForm.action = url;
			sendForm.submit();

			return false;
		}

		function setAddrBook() {

			var form = document.getElementById('hiddenAddressSetter');
			var url = './saveAddress';

			window.open('', 'addressSetWindow',
					'top=100, left=500, width=600, height=600');

			form.setAttribute('target', 'addressSetWindow');
			
			form.mailto.value = $('#mailRecipients').val();
			form.mailreference.value = $('#mailCCs').val();

			form.submit();

			return false;
		}

		function getAddrBook() {

			window.open('./getAddress', 'addressGetWindow',
					'top=100, left=500, width=600, height=600');

			return false;
		}
	</script>
</body>
</html>