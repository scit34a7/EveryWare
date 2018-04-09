<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>업무지원</title>
	<script>
	
		function goA()
		{
	
				location.href = "./attend.go";

		}
		
		// 브라우저 종류
       var ie4 = document.all; // Explorer
       var ns6 = document.getElementById && !document.all; // Netscape
	   
	   // 시간 표시 방법
	   // 0 = 24, 1 = 12
	   var my12_hour = 1;

	   // 날짜를 출력할지 선택
	   // 0 = No, 1 = Yes
	   var DisplayDate = 1;
	   var mn = "일";
	   var yn = "년";

	   var daysOfWeek = ["<font color=red>일</font>요일", "월요일", "화요일", "수요일", "목요일", "금요일", "<font color=blue>토</font>요일"];
	   var monthsOfYear = ["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"];

	   function showClock() {
	       var today = new Date();
			
	       var day = today.getDay(); // 요일(0:일요일, 1:월요일, 2:화요일, 3:수요일, 4:목요일, 5:금요일, 6:토요일)
	       var mday = today.getDate(); // 일
	       var month = today.getMonth(); // 월 (0부터 시작)
	       var year = today.getFullYear(); // 년
	       
	       var hours = today.getHours(); // 시간
	       var minutes = today.getMinutes(); // 분
	       var seconds = today.getSeconds(); // 초

	       // 시간 표시 설정
	       var dn='';
	       if (my12_hour) {
	           dn = "AM";
	           if (hours > 12) { 
	               dn = "PM"; 
	               hours = hours - 12; 
	           }
	           if (hours == 0) {
	               hours = 12; 
	           }
	       } 
	       
	       if (minutes <= 9) { 
	           minutes = "0" + minutes; 
	       }
	       if (seconds <= 9) { 
	           seconds = "0" + seconds; 
	       }

	       // 화면에 출력시킬 날짜 설정
	       myclock = '';
	       if (DisplayDate) { 
	           myclock += year + yn + ' ' + monthsOfYear[month] + ' ' +  mday + mn + ' '  + '('+daysOfWeek[day]+') ' 
	       }
	       myclock += hours + ':' + minutes + ':' + seconds;
	       myclock += ' ' + dn;

	       // 브라우저에 따라 객체에 HTML 추가
	       if (ie4) {
	           liveClock.innerHTML = myclock;
	       } else if (ns6) {
	           document.getElementById("liveClock").innerHTML = myclock;
	               }            

	       setTimeout("showClock()", 1000); //1초마다 실행
	   }
	</script>
	</head>
	<body onLoad="showClock()">
		<% 
		String res = (String)request.getAttribute("result");
		if(res!=null)
		{
			if(res.equals("true"))
			{
				%>
				<script>
					alert("출근이 완료 되었습니다");</script>
					<%		
			}
			else
			{
				%>
			<script>
				alert("이미출근하셨습니다");</script>
				<%
			}
		}
		%>
	
</body>
</html>
