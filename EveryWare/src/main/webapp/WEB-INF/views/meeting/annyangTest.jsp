<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ANNYANG_TEST</title>

<script src="../resources/js/jquery-3.2.1.min.js"></script>
<script src="../resources/meeting/voice/annyang.js"></script>
<!-- <script src="../resources/meeting/voice/speechtotext.js"></script> -->


<script>
function test() {
	$(function() {

	    annyang.addCallback("start", function(){

	        console.log("start");

	    });

	    annyang.addCallback("error", function() {

	        //console.log("error");

	    });

	    annyang.addCallback("end", function(){

	        //console.log("end");

	    });

	    annyang.addCallback("soundstart", function(){

	        //console.log("soundstart");

	    });

	    annyang.addCallback("result", function(data){
	    	var tot = document.getElementById('change');
	        console.log("result");
	        
	        console.log(data[0]);
	        tot.value += data[0];
	    });

	    annyang.addCallback("resultMatch", function(){

	        //console.log("resultMatch");

	    });

	    annyang.addCallback("resultNoMatch", function(){

	        //console.log("resultNoMatch");

	        restart();

	    });

	    annyang.addCallback("errorNetwork", function(){

	        //console.log("errorNetwork");

	    });

	    annyang.addCallback("errorPermissionBlocked", function(){

	        //console.log("errorPermissionBlocked");

	    });

	    annyang.addCallback("errorPermissionDenied", function(){

	        //console.log("errorPermissionDenied");

	    });

	    

	    annyang.start({autoRestart: true , continuous: true});

	});

	 

	function restart() {

	    annyang.abort();

	    annyang.start({autoRestart: true , continuous: true});

	}
}
</script>

</head>
<body>
<input type="button" id="test" onclick="test()" value="테스트">
<textarea id="change" rows="20" cols="60"></textarea>
</body>
</html>