<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html class="fullscreen-bg">
<head>
<title>Everyware | Mail</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!-- VENDOR CSS -->
<link rel="stylesheet"
	href="../resources/assets/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="../resources/assets/vendor/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="../resources/assets/vendor/themify-icons/css/themify-icons.css">
<!-- MAIN CSS -->
<link rel="stylesheet" href="../resources/assets/css/main.css">
<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
<link rel="stylesheet" href="../resources/assets/css/demo.css">
<!-- GOOGLE FONTS -->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700"
	rel="stylesheet">
<!-- ICONS -->
<link rel="apple-touch-icon" sizes="76x76"
	href="../resources/assets/img/apple-icon.png">
<link rel="icon" type="image/png" sizes="96x96"
	href="../resources/assets/img/favicon.png">


<%-- Jquery --%>
<script src="../resources/js/jquery-3.2.1.min.js"></script>

<script >
	
	
	
	$(document).ready(function() {
		
		<c:forEach var='a' items='${addrBook}'>
	
		var modified = deleteHtmlTag('${a.mailto}');
		$('#mailto${a.addrbook_num}').html(modified);
				
		var modifiedCc = deleteHtmlTag('${a.mailreference}');
		$('#mailreference${a.addrbook_num}').html(modifiedCc);
		
		</c:forEach>
		
	
		//이벤트 처리
		$('div[name = click]').on('click', function() {

			var addrnum = $(this).attr('addr1');
			var attrto = $(this).attr('attr2');
			var attrcc = $(this).attr('attr3');
			
			//var mailto = document.getElementById('mailto'+addrnum).html;
			var mailto = $('#mailto'+addrnum).html();
			var mailreference = $('#mailreference'+addrnum).html();
			
			
			//받는 사람에 세팅하기 
			/* opener.document.getElementById('blankForSending').value = mailtoModified;
			opener.document.getElementById('mailRecipients').value = mailto; */
			
			$("#blankForSending", opener.document).append('<span>' + mailto
																+ '<i class ="fa fa-times" onclick="deleteAddress();"></i></span>');
		
			$('mailRecipients').val(attrto);
				
			$("#blankForCC", opener.document).append('<span>' + mailreference
																+ '<i class ="fa fa-times" onclick="deleteAddress();"></i></span>');
			
			$('mailCCs').val(attrcc);

			$('i[class= "fa fa-times"]',opener.document).click(deleteAddress);
					
			self.close();

		}); //이벤트 처리
	});// doc reaedy
	
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
</script>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<!-- 뒤에 숙자가 크기 조절 -->
				<div class="panel">
					<div class="panel-heading">
						<h3 class="panel-title">메일 주소록 저장</h3>
					</div>
					<div class="panel-body">
						<ul class="inbox-list-message">

							<c:forEach var="a" items="${addrBook}">
								<li class="unread">
									<table>
										<tr>
											<td width="100%">
													<div class="text" style = "cursor:pointer;" name = "click" addr1 ="${a.addrbook_num }"
														attr2 ="${a.mailto }" attr3 = "${a.mailreference }">
														<span class="sender">${a.addrbook_name}</span> <span
															class="timestamp"></span>
														<h3 class="title" id = "mailto${a.addrbook_num }" ></h3>
														<span name = "mailreference" class="timestamp" id = "mailreference${a.addrbook_num }"></span>
														<p class="preview"></p>			
													</div>
											</td>
										</tr>
								</table>
								</li>
							</c:forEach>
							</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>