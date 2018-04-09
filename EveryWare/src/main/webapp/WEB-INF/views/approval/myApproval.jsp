<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>내 결재</title>

<%-- Jquery --%>
	<script src="../resources/js/jquery-3.2.1.min.js" ></script>

<script type="text/javascript">


	
	
	
	
$(document).ready(function() {
	
		
	
		
		//이벤트 처리
		$('#setBt').on('click', function(){
			
			
			
		});	//이벤트 처리
	});// doc reaedy
	
	

</script>




	
</head>

<body>

<div id="fromMe">
	<h2>
		내가 등록한 결재
	</h2>
	<c:choose>
		<c:when test="${approvalList_fromMe != null}">
			<c:forEach var="eApp" items="${approvalList_fromMe}">
				결재번호 : ${eApp.eApproval_id}			<br>
				결재제목 : ${eApp.eApproval_title}		<br>
				결재내용 : ${eApp.eApproval_content}	<br>
				등록날짜 : ${eApp.eApproval_sDAte}		<br>
				마감날짜 : ${eApp.eApproval_fDate}		<br>
				첨부파일 : 
				<c:choose>
					<c:when test="${eApp.eApproval_original != null}">
						${eApp.eApproval_original}
					</c:when>
					<c:otherwise>
						첨부파일이 없습니다.
					</c:otherwise>
				</c:choose>
				<hr>
			</c:forEach>		
		</c:when>
		<c:otherwise>
			등록된 결재가 없습니다.
		</c:otherwise>
	</c:choose>
</div><!-- #fromMe -->

<div id="now">
	<h2>
		현재 승인 가능 결재
	</h2>
	<c:choose>
		<c:when test="${approvalList_now != null}">
			<c:forEach var="eApp" items="${approvalList_now}">
				결재번호 : ${eApp.eApproval_id}			<br>
				결재제목 : ${eApp.eApproval_title}		<br>
				결재내용 : ${eApp.eApproval_content}	<br>
				등록날짜 : ${eApp.eApproval_sDAte}		<br>
				마감날짜 : ${eApp.eApproval_fDate}		<br>
				첨부파일 : 
				<c:choose>
					<c:when test="${eApp.eApproval_original != null}">
						${eApp.eApproval_original}
					</c:when>
					<c:otherwise>
						첨부파일이 없습니다.
					</c:otherwise>
				</c:choose>
				<hr>
			</c:forEach>		
		</c:when>
		<c:otherwise>
			등록된 결재가 없습니다.
		</c:otherwise>
	</c:choose>

</div><!-- now -->

<div id="future">
	<h2>
		대기중인 결재
	</h2>
	<c:choose>
		<c:when test="${approvalList_future != null}">
			<c:forEach var="eApp" items="${approvalList_future}">
				결재번호 : ${eApp.eApproval_id}			<br>
				결재제목 : ${eApp.eApproval_title}		<br>
				결재내용 : ${eApp.eApproval_content}	<br>
				등록날짜 : ${eApp.eApproval_sDAte}		<br>
				마감날짜 : ${eApp.eApproval_fDate}		<br>
				첨부파일 : 
				<c:choose>
					<c:when test="${eApp.eApproval_original != null}">
						${eApp.eApproval_original}
					</c:when>
					<c:otherwise>
						첨부파일이 없습니다.
					</c:otherwise>
				</c:choose>
				<hr>
			</c:forEach>		
		</c:when>
		<c:otherwise>
			등록된 결재가 없습니다.
		</c:otherwise>
	</c:choose>


</div><!-- #future -->
	
<div id="past">
	<h2>
		처리한 결재
	</h2>
	<c:choose>
		<c:when test="${!empty approvalList_past}">
			<c:forEach var="eApp" items="${approvalList_past}">
				결재번호 : ${eApp.eApproval_id}			<br>
				결재제목 : ${eApp.eApproval_title}		<br>
				결재내용 : ${eApp.eApproval_content}	<br>
				등록날짜 : ${eApp.eApproval_sDAte}		<br>
				마감날짜 : ${eApp.eApproval_fDate}		<br>
				첨부파일 : 
				<c:choose>
					<c:when test="${eApp.eApproval_original != null}">
						${eApp.eApproval_original}
					</c:when>
					<c:otherwise>
						첨부파일이 없습니다.
					</c:otherwise>
				</c:choose>
				<hr>
			</c:forEach>		
		</c:when>
		<c:otherwise>
			<h4>
				등록된 결재가 없습니다.
			</h4>
		</c:otherwise>
	</c:choose>
	

</div><!-- past -->
</body>
</html>
