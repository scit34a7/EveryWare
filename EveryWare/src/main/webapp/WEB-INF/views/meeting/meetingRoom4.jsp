<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta name="format-detection" content="telephone=no">
    <meta name="msapplication-tap-highlight" content="no">
    <meta name="viewport" content="user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1, width=device-width">

    <link rel="stylesheet" href="https://cdn.webrtc-experiment.com/style.css">

    <title>MERGE</title>

    <meta name="description" content="Audio+Video+Screen Sharing using RTCMultiConnection" />
    <meta name="keywords" content="WebRTC,RTCMultiConnection,Demos,Experiments,Samples,Examples" />

    <style>
        * {
            word-wrap:break-word;
        }
        video {
            object-fit: fill;
            width: 30%;
        }
        button,
        input,
        select {
            font-weight: normal;
            padding: 2px 4px;
            text-decoration: none;
            display: inline-block;
            text-shadow: none;
            font-size: 16px;
            outline: none;
        }

        .make-center {
            text-align: center;
            padding: 5px 10px;
        }

        img, input, textarea {
          max-width: 100%
        }

        @media all and (max-width: 500px) {
            .fork-left, .fork-right, .github-stargazers {
                display: none;
            }
        }
    </style>
    
    <script src="../resources/js/jquery-3.2.1.min.js"></script>
	<script src="../resources/meeting/voice/annyang.js"></script>
	<script src="../resources/meeting/voice/speechtotext.js"></script>
</head>

<body>
        <div class="github-stargazers"></div>

        <section class="experiment">
            <div class="make-center">
                <input type="text" id="room-id" value="${roomid}" autocorrect=off autocapitalize=off size=20>
                <button id="open-room">Open Room</button>
                <button id="join-room">Join Room</button>
                
                <hr>
                    <button id="share-screen" disabled>Share Screen</button>
                <hr>

                <div id="room-urls" style="text-align: center;display: none;background: #F1EDED;margin: 15px -10px;border: 1px solid rgb(189, 189, 189);border-left: 0;border-right: 0;"></div>
            </div>

            <div id="videos-container"></div>
        </section>

		<script src="../resources/meeting/RTCMultiConnection.js"></script>
		<script src="https://rtcmulticonnection.herokuapp.com/socket.io/socket.io.js"></script>
        <script src="https://cdn.webrtc-experiment.com/getMediaElement.js"></script>
        <script src="https://cdn.webrtc-experiment.com:443/getScreenId.js"></script>

        <script>
            // UI Code
            document.getElementById('share-screen').onclick = function() {
                this.disabled = true;
                connection.addStream({
                    screen: true,
                    oneway: true
                });
            };

            document.getElementById('open-room').onclick = function() {
                disableInputButtons();
                connection.open('180001', function() {
                    showRoomURL(connection.sessionid);
                });
            };

            document.getElementById('join-room').onclick = function() {
                disableInputButtons();
                connection.join('180001');
            };

            // RTCMultiConnection Code
            var connection = new RTCMultiConnection();
            
            // Using getScreenId.js to capture screen from any domain
            // You do NOT need to deploy Chrome Extension YOUR-Self!!
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

            // by default, socket.io server is assumed to be deployed on your own URL
            connection.socketURL = 'https://rtcmulticonnection.herokuapp.com:443/';

            // comment-out below line if you do not have your own socket.io server
            // connection.socketURL = 'https://rtcmulticonnection.herokuapp.com:443/';

            connection.socketMessageEvent = 'audio-video-screen-demo';

            connection.session = {
                audio: true,
                video: true
            };

            connection.sdpConstraints.mandatory = {
                OfferToReceiveAudio: true,
                OfferToReceiveVideo: true
            };

            connection.videosContainer = document.getElementById('videos-container');
            connection.onstream = function(event) {
                if(document.getElementById(event.streamid)) {
                    var existing = document.getElementById(event.streamid);
                    existing.parentNode.removeChild(existing);
                }
                
                var width = parseInt(connection.videosContainer.clientWidth / 2) - 20;
                
                if(event.stream.isScreen === true) {
                    width = connection.videosContainer.clientWidth - 20;
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

            function disableInputButtons() {
                document.getElementById('open-room').disabled = true;
                document.getElementById('join-room').disabled = true;
                document.getElementById('room-id').disabled = true;
                document.getElementById('share-screen').disabled = false;
            }

            // Handling Room-ID

            function showRoomURL(roomid) {
                var roomHashURL = '#' + roomid;
                var roomQueryStringURL = '?roomid=' + roomid;

                var html = '<h2>Unique URL for your room:</h2><br>';

                html += 'Hash URL: <a href="' + roomHashURL + '" target="_blank">' + roomHashURL + '</a>';
                html += '<br>';
                html += 'QueryString URL: <a href="' + roomQueryStringURL + '" target="_blank">' + roomQueryStringURL + '</a>';

                var roomURLsDiv = document.getElementById('room-urls');
                roomURLsDiv.innerHTML = html;

                roomURLsDiv.style.display = 'block';
            }

            (function() {
                var params = {},
                    r = /([^&=]+)=?([^&]*)/g;

                function d(s) {
                    return decodeURIComponent(s.replace(/\+/g, ' '));
                }
                var match, search = window.location.search;
                while (match = r.exec(search.substring(1)))
                    params[d(match[1])] = d(match[2]);
                window.params = params;
            })();

            var roomid = '';
            if (localStorage.getItem(connection.socketMessageEvent)) {
                roomid = localStorage.getItem(connection.socketMessageEvent);
            } else {
                roomid = connection.token();
            }
            document.getElementById('room-id').value = roomid;
            document.getElementById('room-id').onkeyup = function() {
                localStorage.setItem(connection.socketMessageEvent, this.value);
            };

            var hashString = location.hash.replace('#', '');
            if(hashString.length && hashString.indexOf('comment-') == 0) {
              hashString = '';
            }

            var roomid = params.roomid;
            if(!roomid && hashString.length) {
                roomid = hashString;
            }

            if(roomid && roomid.length) {
                document.getElementById('room-id').value = roomid;
                localStorage.setItem(connection.socketMessageEvent, roomid);

                // auto-join-room
                (function reCheckRoomPresence() {
                    connection.checkPresence(roomid, function(isRoomExists) {
                        if(isRoomExists) {
                            connection.join(roomid);
                            return;
                        }

                        setTimeout(reCheckRoomPresence, 5000);
                    });
                })();

                disableInputButtons();
            }
        </script>
        
        <hr>
        <div>
        <textarea id="change" rows="20" cols="60"></textarea>
        </div>
</body>

</html>