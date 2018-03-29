<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script src="../resources/meeting/js/RTCMultiConnection.js"></script>
<script src="../resources/meeting/js/getMediaElement.js"></script>
<script src="../resources/meeting/js/socket.io.js"></script>
<script src="../resources/meeting/js/getScreenId.js"></script>

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
<body onload="javascript:ttt()">

<div id='container'>
    <div id='box-left'>
    WebcamChat Section<br>
    <input type="button" id="share-screen" class="setup" value="screen share"><br>
        
<script>
function ttt() {
    connection.open('${sessionScope.userId}', function() {
        showRoomURL(connection.sessionid);
    });
};

document.getElementById('share-screen').onclick = function() {
    this.disabled = true;
    connection.addStream({
        screen: true,
        oneway: true
    });
};

var connection = new RTCMultiConnection();

connection.getScreenConstraints = function(callback) {
    getScreenConstraints(function(error, screen_constraints) {
        if (!error) {
            screen_constraints = connection.modifyScreenConstraints(screen_constraints);
            callback(error, screen_constraints);
            return;
        }
        throw error;
    });
};

connection.socketURL = '/'; // by default, socket.io server is assumed to be deployed on your own URL

// comment-out below line if you do not have your own socket.io server
// connection.socketURL = 'https://rtcmulticonnection.herokuapp.com:443/';
connection.socketMessageEvent = '회의실 실험';

connection.session = {
    audio: true,
    video: true
};

connection.sdpConstraints.mandatory = {
    OfferToReceiveAudio: true,
    OfferToReceiveVideo: true
};

connection.videosContainer = document.getElementById('box-left');
connection.onstream = function(event) {
/* 	event.mediaElement.style.width="100%";
	document.getElementById('box-left').appendChild(event.mediaElement); */
     if(document.getElementById(event.streamid)) {
        var existing = document.getElementById(event.streamid);
        existing.parentNode.removeChild(existing);
    }
    
    var width = "100%";
    
    if(event.stream.isScreen === true) {
        width = "100%";
    }
    
    var mediaElement = getMediaElement(event.mediaElement, {
        title: event.userid,
        buttons: ['full-screen'],
        width: width,
        showOnMouseEnter: false
    });

    connection.videosContainer.appendChild(mediaElement);

    setTimeout(function() {
        mediaElement.media.play();
    }, 5000);

    mediaElement.id = event.streamid;
};

connection.onstreamended = function(event) {
    var mediaElement = document.getElementById(event.streamid);
    if(mediaElement) {
        mediaElement.parentNode.removeChild(mediaElement);
    }
};
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