<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 글쓰기</title>
<link rel="stylesheet" type="text/css" href="../resources/board/css/default.css" />

<!-- jQuery -->
<script src="../resources/js/jquery-3.2.1.min.js"></script>

<script>

$(document).ready(function(){
	
	//이벤트 처리
	$('#plusAttachedBt').on('click', function(){
		var output = $('#attachedOutput').html();
		output += '<br>' + '<input type="file" name="upload" size="30">';
		$('#attachedOutput').html(output);
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
</head>
<body>
<div class="centerdiv">
<h1>[ 글쓰기 ]</h1>
<!-- 바이너리 데이터 포함되는 폼. enctype 반드시 정확히 지정 -->
<form id="writeform" action="write"  method="post" 
	enctype="multipart/form-data" onsubmit="return formCheck();">
	
<table>

<tr>
	<th>게시판 선택</th> 
		<td>
			<select name="boardFolder_id">
				<option value="1">공지사항</option>
				<option value="2">부서게시판</option>
				<option value="3">커뮤니티</option>
			</select>
		</td>
</tr>

<tr>
	<th>제목</th>
	<td>
		<input type="text" name="board_title" id="board_title" style="width:400px;">
	</td>
</tr>
<tr>
	<th>내용</th> 
	<td>
		<textarea name="board_content" id="board_content" style="width:400px;height:200px;resize:none;"></textarea>
	</td>
</tr>

 <tr>
	<th>파일첨부</th> 
	<td>
		<span id="attachedOutput">
			<input type="file" name="upload" size="30">
			
		</span>
		<input type="button" id="plusAttachedBt" value="파일추가">
	</td>	
</tr>

<tr>
	<td colspan="2" class="white center">
		<input type="submit" value="저장" />
	</td> 
</tr>
</table>
</form>
</div>
</body>
</html>
