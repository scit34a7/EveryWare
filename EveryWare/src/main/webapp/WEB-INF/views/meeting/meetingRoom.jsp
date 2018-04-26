<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
	<head>
		<title>Everyware | Meeting</title>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
		<!-- VENDOR CSS -->
		<link rel="stylesheet" href="../resources/assets/vendor/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="../resources/assets/vendor/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="../resources/assets/vendor/themify-icons/css/themify-icons.css">
		<link rel="stylesheet" href="../resources/assets/vendor/pace/themes/orange/pace-theme-minimal.css">
		<!-- MAIN CSS -->
		<link rel="stylesheet" href="../resources/assets/css/main.css">
		<link rel="stylesheet" href="../resources/assets/css/skins/sidebar-nav-darkgray.css" type="text/css">
		<link rel="stylesheet" href="../resources/assets/css/skins/navbar3.css" type="text/css">
		<!-- FOR DEMO PURPOSES ONLY. You should/may remove this in your project -->
		<link rel="stylesheet" href="../resources/assets/css/demo.css">
		<link rel="stylesheet" href="../resources/demo-panel/style-switcher.css">
		<!-- ICONS -->
		<link rel="apple-touch-icon" sizes="76x76" href="../resources/assets/img/apple-icon.png">
		<link rel="icon" type="image/png" sizes="96x96" href="../resources/assets/img/favicon.png">
		
		<link rel="stylesheet" href="../resources/meeting/dev/getHTMLMediaElement.css">
		<script src="../resources/js/jquery-3.2.1.min.js"></script>
		<script src="../resources/meeting/voice/annyang.js"></script>
		
		<link rel="stylesheet" href="../resources/test/css/bootstrap.min.css">
    	<link rel="stylesheet" href="../resources/test/css/style.min.css">
    	<link rel="stylesheet" href="../resources/test/css/style.css">
		<script>
		
		$(document).ready(function () {
			var w = screen.availWidth;
			var h = screen.availHeight;
			parent.resizeTo(w, h);
		});
		
		var text;
		var countTest = 0;
		
		// 음성인식 활성화 비활성화 (두 개 이상의 인스턴스가 존재할 때 루한루프 방지)
		function handleVisibilityChange() {
			if (document.webkitHidden) {
				console.log("handleVisibilityChange abort");
				annyang.abort();
			} else {
				console.log("handleVisibilityChange Start");
				annyang.start();
				
				// 인식한 음성 텍스트화 해서 저장
			    annyang.addCallback("result", function(data){
			    	var tot = document.getElementById('change');
			        console.log("result");
			        
			        console.log(data[0]);
			        text = data[0];
				    
				    if (countTest == 0) {
				    	countTest++;
					    document.getElementById('input-text-chat').value = text;
						var chat = document.getElementById('input-text-chat');
						chat.value = chat.value.replace(/^\s+|\s+$/g, '');
						if (!chat.value.length) return;
						connection.send({
				            userid: "${sessionScope.userName}",
				            value: chat.value
				        });
						appendDIV(chat.value);
						chat.value = '';
					}
			    });
			    countTest = 0;
			}
		}
		
		function speechStart() {
			console.log("speechStart");
			annyang.start();
		}
		
		function speechStop() {
		    console.log("speechStop");
			annyang.abort();
		}
		
		document.addEventListener("webkitvisibilitychange", handleVisibilityChange, false);
		window.addEventListener("focus", speechStart, false);
		window.addEventListener("blur", speechStop, false);
		</script>
		
		<script type="text/javascript" src="../resources//meeting/vad.js"></script>
		
		<script type="text/javascript">
		  // AudioContext 생성
		  window.AudioContext = window.AudioContext || window.webkitAudioContext;
		  var audioContext = new AudioContext();
		
		  // getUserMedia에 의해 호출되는 함수 정의
		  function startUserMedia(stream) {
		    // MediaStreamAudioSourceNode 생성 
		    var source = audioContext.createMediaStreamSource(stream);
		
		    // Setup options
		    var options = {
		     source: source,
		     voice_stop: function() {
		    	 console.log('voice_stop');
				}, 
		     voice_start: function() {
		    	 console.log('voice_start');
		    	 handleVisibilityChange();
		    	}
		    }; 
		    
		    // VAD 생성
		    var vad = new VAD(options);
		  }
		
		  // audio device 요청
		  navigator.getUserMedia = navigator.getUserMedia || 
		                           navigator.mozGetUserMedia || 
		                           navigator.webkitGetUserMedia;
		  navigator.getUserMedia({audio: true}, startUserMedia, function(e) {
		          console.log("No live audio input in this browser: " + e);
		  });
		</script>

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
			background: url("../resources/meeting/image/meet_back.png") no-repeat center center fixed;
			-webkit-background-size: cover;
			-moz-background-size: cover;
			-o-background-size: cover;
			background-size: cover;
		}
		
		#left {
			background-color: rgba(255, 255, 255, 0.15);
			height: 100%;
			width:60px;
		}
		
		#box-left {
		  overflow:auto;
		  flex: 1;
		  text-align: center;
		  height: 100%;
		}
		
		#box-center {
	      overflow:auto;
		  flex: 3;
		  text-align: center;
		  height: 100%;
		}
		#box-right {
		  overflow:auto;
		  flex: 1;
		  text-align: center;
		  height: 100%;
		}
		
		#chat-container {
			overflow:auto;
			background: white;
			height: 90%;
			zoom: 1;
			filter: alpha(opacity=80);
			opacity: 0.8;
		}
		#chat-input {
			background: white;
			margin: 0 auto;
			height: 10%;
			zoom: 1;
			filter: alpha(opacity=80);
			opacity: 0.8;
		}
		</style>
	</head>
	<body class="sidebar-minified" onload="openOrJoinRoom()">
		<!-- WRAPPER -->
		<div id="wrapper" style="height:100%">
			<!-- LEFT SIDEBAR -->
			<div id="sidebar-nav" class="sidebar">
				<nav>
				<ul class="nav" id="sidebar-nav-menu">
					<li class="menu-group">Main</li>
					<li class="panel"><a href="index" data-toggle="collapse"
						data-parent="#sidebar-nav-menu" class="active"><i
							class="ti-dashboard"></i> <span class="title">Everyware 회의실</span> <i
							class="icon-submenu ti-angle-left"></i></a>
					</li>
					
					<c:if test="${sessionScope.userId == roomid}">
						<li class="panel"><a href='javascript:void(0)' onclick="shareScreen()" data-toggle="collapse" id="share-screen"
							data-parent="#sidebar-nav-menu" class="collapsed"><i
								class="ti-share"></i> <span class="title">화면공유</span> <i
								class="icon-submenu ti-angle-left"></i></a>
						</li>
						
						<li class="panel"><a href="#forms" data-toggle="collapse"
							data-parent="#sidebar-nav-menu" class="collapsed"><i
								class="ti-control-play"></i> <span class="title">회의시작</span> <i
								class="icon-submenu ti-angle-left"></i></a>
							<div id="forms" class="collapse ">
							</div>
						</li>
					</c:if>
					<li class="panel"><a href='javascript:void(0)' onclick="leaveRoom()" data-toggle="collapse" id="btn-leave-room"
						data-parent="#sidebar-nav-menu" class="collapsed"><i
							class="ti-power-off"></i> <span class="title">나가기</span>
							<i class="icon-submenu ti-angle-left"></i></a>
						<div id="appViews" class="collapse ">
						</div>
					</li>
				</ul>
				</nav>
			</div>
			<!-- END LEFT SIDEBAR -->
			<!-- MAIN -->

			<div id='container'>
				<div id="left" style="background-color: black"></div>
			
			    <div id='box-left'>
				    <h5>WebcamChat Section</h5><br>
				    <div id="videos-container"></div>
			    </div>
			
			    <div id='box-center'>
			    	<h5>Board Section</h5><br>
			    	<div id="videos"></div>
			    </div>
			    
			    <div id='box-right'>
					<div id="chat-container">
						<h5>TextChat Section</h5><br>
						<div class="chat-output" id="file-container"></div>
					</div>
					
					<div id="chat-input">
					    <input type="text" id="input-text-chat" placeholder="내용을 입력하세요" disabled>
						<!-- <input type="button" class="btn btn-primary" onclick="sendText()" id="send" value="전송" disabled="disabled"> -->
						<button type="button" class="btn btn-primary" id="share-file" disabled><i class="fa fa-paperclip"></i></button>
					</div>
			    </div>
			</div>
			<!-- END MAIN -->
		</div>
		<!-- END WRAPPER -->
		<!-- Javascript -->
		<script src="../resources/assets/vendor/jquery/jquery.min.js"></script>
		<script src="../resources/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="../resources/assets/vendor/pace/pace.min.js"></script>
		<script src="../resources/assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
		<script src="../resources/assets/scripts/klorofilpro-common.js"></script>

		<script>
		$(function()
		{
			$('#list-message-scrollable').slimScroll(
			{
				height: '550px',
				wheelStep: 1,
				color: '#cecece'
			});
		});
		</script>
		
<script src="../resources/meeting/dist/RTCMultiConnection.min.js"></script>
<script src="../resources/meeting/dev/adapter.js"></script>
<script src="../resources/meeting/socket.io/socket.io.js"></script>
<script src="../resources/meeting/js/getScreenId.js"></script>
<script src="../resources/meeting/dev/getHTMLMediaElement.js"></script>
<script src="../resources/meeting/dev/FileBufferReader.js"></script>

<script>
var connection = new RTCMultiConnection();

connection.sendMessage = function(message) {
    message.userid = connection.userid;
    message.extra = true;
    showObj2(message);
    connection.send(message);
};

var test;
var cnt=0;
window.enableAdapter = true; // enable adapter.js

// UI
function shareScreen() { // 화면 공유
        this.disabled = true;
        connection.videosContainer = document.getElementById('videos');
	    var session = { screen: true };

 	    connection.captureUserMedia(function(stream) {
	        var streamid = connection.token();
	        connection.customStreams[streamid] = stream;
	        connection.sendMessage({
	            hasScreen: true,
	            streamid: streamid,
	            session: session,
	            stream: stream
	        });
	    }, session);
};

function openOrJoinRoom() { // create room 또는 join room
	//alert(${sessionScope.userId});
	//alert(${roomid});
	if(${sessionScope.userId} == ${roomid}) {
		connection.open(${roomid});
	} else {
		connection.join(${roomid});
	}
}

function leaveRoom() { // 나가기 버튼 클릭 했을 시
    this.disabled = true;
    if (connection.isInitiator) {
        connection.closeEntireSession(function() {}); // 전체 세션 종료 (개설자인 경우)
        
       	$.ajax({
    		url: 'removeRoom',
    		type: 'post',
    		data: {isRemove: true, userid: "${sessionScope.userId}"},
    		contentType: "application/x-www-form-urlencoded; charset=UTF-8",  
    		datatype: 'json',
    		success: function(isCorrect) {
    			self.opener = self;
    			window.close();
    		},
    		error: function (e) {
    			alert('실패');
    		}
    	});
    } else {
        connection.leave();
        history.back();
    }
};

// FileSharing/TextChat
document.getElementById('share-file').onclick = function() {
    var fileSelector = new FileSelector();
    fileSelector.selectSingleFile(function(file) {
        connection.send(file);
    });
};

// 엔터눌렀을 경우 메시지 전송
document.getElementById('input-text-chat').onkeyup = function(e) {
    if (e.keyCode != 13) return;
    this.value = this.value.replace(/^\s+|\s+$/g, '');
    if (!this.value.length) return;
	connection.send({
        userid: "${sessionScope.userName}",
        value: this.value
    });

	appendDIV(this.value);
    this.value = '';
};

function sendText() {
    this.value = this.value.replace(/^\s+|\s+$/g, '');
    if (!this.value.length) return;

    connection.send({
        userid: "${sessionScope.userName}",
        value: this.value
    });

    appendDIV(this.value);
    this.value = '';
};

function showObj(obj, attr) {
	var str = "";
	for(key in obj) {
		str += key+"="+obj[key]+"\n";
		if (key == attr) {
			return obj[key];
		}
	}
	return;
}

function showObj2(obj) {
	var str = "";
	for(key in obj) {
		str += key+"="+obj[key]+"\n";
	}
	alert(str);
	return;
}

function insertAfter(newNode, referenceNode) {
    referenceNode.parentNode.insertBefore(newNode, referenceNode.nextSibling);
}

// 회의록 저장 함수
function saveLog(id, data) {
	var idLog = data.userid;
	var contentLog = data.value;
	var meet_title = "${roomInfo.meet_title}";
	
   	$.ajax({
		url: 'saveLog',
		type: 'post',
		data: {user_id: idLog, log_content: contentLog, meet_title: meet_title},
		contentType: "application/x-www-form-urlencoded; charset=UTF-8",  
		datatype: 'json',
		success: function(isCorrect) {
		},
		error: function (e) {
			console.log('실패');
		}
	});
}

// 채팅 내용을 추가하기 위한 함수
var chatContainer = document.querySelector('.chat-output');
function appendDIV(event) {
    var div = document.createElement('div');
	var id = showObj(event, 'userid');
	var data = showObj(event, 'data');
	var steam = showObj(event.data, 'stream');
	var isScreen = showObj(steam, 'isScreen');
	
	//alert("ID:" + id);
	//alert("DATA:" + data);
	// data.userid
	//alert(data);
	//alert(isScreen);
	if (typeof data == 'object' && isScreen == true) {
  		cnt = 1;
	    location.reload();
	    return;
	} else if (id != undefined) {
		saveLog(id, data);
	}
	
	if(id != undefined) {
		var test = data.userid + ": " + data.value;
		//div.innerHTML = test;
		div.innerHTML = '<div>' + data.userid + '</div>';
		div.innerHTML += '<div class="message" style="background-color:#ffff99;">' + data.value + '</div>';
		div.style.textAlign="left";
		chatContainer.appendChild(div);
	} else {
		div.innerHTML = '<div>' + "${sessionScope.userName}" + "</div>";
		div.innerHTML += '<div class="message" style="background-color:#66ccff;">' + event + '</div>';
		//div.innerHTML = (event.data) || ("${sessionScope.userName}" + ": " + event); //+ connection.userid
		div.style.textAlign="right";
		chatContainer.appendChild(div);
	}
	div.tabIndex = 0;
	div.focus();
	document.getElementById('input-text-chat').focus();
}

// RTCMultiConnection
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

connection.socketURL = 'https://rtcmulticonnection.herokuapp.com:443/';
connection.socketMessageEvent = 'audio-video-file-chat-demo';
connection.enableFileSharing = true;
connection.session = {
    audio: true,
    video: true,
    data: true
};

connection.sdpConstraints.mandatory = {
    OfferToReceiveAudio: true,
    OfferToReceiveVideo: true
};

connection.videosContainer = document.getElementById('videos-container');

connection.onstream = function(event) {
	//alert("test:" + test);
	if (test == event.userid) {
		connection.videosContainer = document.getElementById('videos');
	} else {
		test = event.userid;
		connection.videosContainer = document.getElementById('videos-container');
	}
	
	var isScreen = event.isScreen || event.stream.isScreen;
	if (isScreen) {
		connection.videosContainer = document.getElementById('videos');
		connection.send(event);
	}
	
    event.mediaElement.removeAttribute('src');
    event.mediaElement.removeAttribute('srcObject');
    var video = document.createElement('video');
    video.controls = true;
    if(event.type === 'local') {
        video.muted = true;
    }
    
    video.srcObject = event.stream;
    var width = parseInt(connection.videosContainer.clientWidth) - 20;
    test = event.userid;
    var mediaElement = getHTMLMediaElement(video, {
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
    if (mediaElement) {
        mediaElement.parentNode.removeChild(mediaElement);
    }
};

connection.onmessage = appendDIV;
connection.filesContainer = document.getElementById('file-container');
connection.onopen = function() {
    document.getElementById('share-file').disabled = false;
    document.getElementById('input-text-chat').disabled = false;
    document.getElementById('btn-leave-room').disabled = false;
};

connection.onclose = function() {
    if (connection.getAllParticipants().length) {

    } else {

    }
};

connection.onEntireSessionClosed = function(event) {
    document.getElementById('share-file').disabled = true;
    document.getElementById('input-text-chat').disabled = true;
    document.getElementById('btn-leave-room').disabled = true;
    connection.attachStreams.forEach(function(stream) {
        stream.stop();
    });
    if (connection.userid === event.userid) return;
};

connection.onUserIdAlreadyTaken = function(useridAlreadyTaken, yourNewUserId) {
    connection.join(useridAlreadyTaken);
};

function disableInputButtons() {
    document.getElementById('share-screen').disabled = false;
}
</script>
	</body>
</html>