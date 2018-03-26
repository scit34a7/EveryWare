<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Test Chat Room</title>
	<script src="https://rtcmulticonnection.herokuapp.com/dist/RTCMultiConnection.min.js"></script>
	<script src="https://rtcmulticonnection.herokuapp.com/socket.io/socket.io.js"></script>
	<script src="../resources/js/jquery-3.2.1.min.js"></script>
<style>
body {
	margin: 0;
	padding: 0;
	border: 0;
}

html, body{
	height: 100%;
}

#container {
  display: flex;
  height: 100%;
}
#box-left {
  background: red;
  flex: 1;
  text-align: center;
}
#box-center {
  background: orange;
  flex: 3;
  text-align: center;
}
#box-right {
  background: yellow;
  flex: 1;
  text-align: center;
}
</style>

</head>

<body>
<div id='container'>
    <div id='box-left'>
    WebcamChat Section<br>
    <input type="button" id="setup-new-broadcast" class="setup" value="screen share"><br>
    <script>
    var connection = new RTCMultiConnection();

    connection.socketURL = 'https://rtcmulticonnection.herokuapp.com:443/';

    connection.session = {
        audio: true,
        video: true
    };

    connection.sdpConstraints.mandatory = {
        OfferToReceiveAudio: true,
        OfferToReceiveVideo: true
    };

    connection.onstream = function(event) {
    	event.mediaElement.style.width="100%";
    	document.getElementById('box-left').appendChild(event.mediaElement);
    };

    var predefinedRoomId = 'YOUR_Name';

    // 나중에 구별
	if ('create' == '${enter}') {
		this.disabled = true;
	    connection.open( predefinedRoomId );
	} else if ('join' == '${enter}') {
        this.disabled = true;
        connection.join( predefinedRoomId );
	}
    
    
    </script>
    </div>
    
    <div id='box-center'>
    Board Section<br>
    
    <input type="button" value="start">
    <input type="button" value="end">    
    <input type="button" value="exit"><br>
    
    </div>
    
    <div id='box-right'>
    TextChat Section<br>
    
    <input type="text">
	<input type="button" value="send"> 
    <input type="button" value="upload"><br>
    
    </div>
</div>
</body>
</html>

