<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE HTML>
<html>
<head>
<title>게시판 글읽기</title>

<link rel="stylesheet" type="text/css" href="../resources/board/css/default.css" />
	
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
<div class="centerdiv">

<h2>[ 게시판 글읽기 ]</h2>

<table>
<tr>
<th style="width:100px;">작성자 </th>
<td style="width:600px;">${board.user_id}</td>
</tr>
<tr>
<th>작성일 </th>
<td>${board.board_date}</td>
</tr>
<tr>
<th>조회수 </th>
<td>${board.board_hits}</td>
</tr>
<tr>
<th>제목 </th>
<td>${board.board_title}</td>
</tr>
<tr>
<th>내용 </th> 
<td><pre>${board.board_content}</pre></td>
</tr>
<tr>
  
<%-- <th>파일첨부 </th> 
<td>
<!-- 첨부된 파일이 있는 경우, 해당 파일을 다운로드 할 수 있는 링크 제공 -->

<c:if test="${board.originalfile != null}">
	<a href="download?boardnum=${board.boardnum}">
		${board.originalfile}
	</a>
</c:if>
</td>  --%>
</tr>
</table>

<div id="navigator">
<!-- 본인 글인 경우에만 보이기 -->
<c:if test="${userId == board.user_id}">
	<!-- 현재글 삭제하기-->
	<a href="javascript:deleteCheck(${board.board_id})">삭제</a>
	<!-- 현재글 수정하기-->
	<a href="edit?board_id=${board.board_id}">수정</a>
</c:if>

<!-- 목록보기-->
<a href="boardList">목록보기</a>
</div>
<br>
<!-- 리플 내용 -->
<!-- 리플 작성 폼 시작 -->
<form id="replyform" action="replyWrite" method="post" onSubmit="return replyFormCheck();">
리플내용
	<input type="hidden" name="board_id" value="${board.board_id}" />
	<input type="text" name="bReply_content" id="bReply_content" style="width:500px;" />
	<input type="submit" value="저장" />
</form>
<!-- /리플 작성 폼 끝 -->
<br>

<!-- 리플 목록 출력 시작 -->
<table class="reply">
<c:forEach var="reply" items="${replylist}">
	<tr>
		<td class="replyid">
			<b>${reply.user_id}</b>
		</td>
		<td class="replytext">
			${reply.bReply_content}
		</td>
		<td class="replydate">
			${reply.bReply_date}
		</td>
		<td class="replybutton">
			<c:if test="${userId == reply.user_id}">
				[<a href="javascript:replyEditForm(${reply.bReply_id}, ${reply.board_id}, '${reply.bReply_content}')">수정</a>]
			</c:if>
		</td>
		<td class="replybutton">
			<c:if test="${userId == reply.user_id}">
				[<a href="javascript:replyDelete(${reply.bReply_id}, ${reply.board_id })">삭제</a>]
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

</body>
</html>
