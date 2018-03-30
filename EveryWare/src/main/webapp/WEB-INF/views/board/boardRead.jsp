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
	var retext = document.getElementById('retext');
	if (retext.value.length < 5) {
		alert('리플 내용을 입력하세요.');
		retext.focus();
		retext.select();
		return false;
	}
	return true;			
}

//리플 수정
function replyEditForm(replynum, board_id, retext) {
	//해당 리플번호를 붙여 생성한 <div>태그에 접근
	var div = document.getElementById("div"+replynum);
	
	var str = '<form name="editForm' + replynum + '" action="replyEdit" method="post">';
	str += '<input type="hidden" name="replynum" value="'+replynum+'">';
	str += '<input type="hidden" name="boardnum" value="'+boardnum+'">';
	str += '&nbsp;';
	str += '<input type="text" name="text" value="' + retext + '" style="width:530px;">';
	str += '&nbsp;';
	str += '<a href="javascript:replyEdit(document.editForm' + replynum + ')">[저장]</a>';
	str += '&nbsp;';
	str += '<a href="javascript:replyEditCancle(document.getElementById(\'div' + replynum + '\'))">[취소]</a>';
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
function replyDelete(replynum, boardnum) {
	if (confirm('리플을 삭제하시겠습니까?')) {
		location.href='replyDelete?replynum=' + replynum + '&boardnum=' + boardnum;
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

<!-- 리플 내용 -->
</body>
</html>
