<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>

<style>
.chat-page-container {
	width: 100%;
	height: 100vh;
	display: flex;
}

.area-1 {
	max-width: 600px;
	width: 400px;
	border-right: 0.2px solid #3B88C3;
	padding: 0 7px;
}

.list-friend-container {
	max-width: 800px;
	font-family: Calibri;
}

.title-frame {
	height: 50px;
	display: flex;
	justify-content: center;
	align-items: center;
	border-bottom: 0.2px solid #3B88C3;
}

.search-frame {
	height: 50px;
	display: flex;
	justify-content: center;
	align-items: center;
	border-bottom: 0.2px solid #3B88C3;
}

.search-container {
	display: flex;
	background-color: #CCE4F2;
	align-items: center;
	justify-content: center;
	border-radius: 30px;
	padding: 10px;
	font-family: Calibri;
}

.search-input {
	height: 100%;
	width: 100%;
	margin: 0 5px;
	font-size: 14px;
	border: 0;
	background-color: transparent;
}

.search-button, .search-input:focus {
	outline: none;
}

.search-button {
	height: 100%;
	width: 40px;
	margin: 0 5px;
	font-size: 14px;
	border: 0;
	background-color: transparent;
}

.friend-container {
	display: flex;
	align-items: center;
	max-width: 700px;
	margin: 5px 0;
	justify-content: space-between;
}

.avatar-name {
	display: flex;
	align-items: center;
}

.avatar-frame {
	height: 64px;
	width: 64px;
	background-color: #3B88C3;
	border-radius: 50%;
	margin: 0 5px;
}

.name-frame {
	font-family: Calibri;
	font-weight: 400;
	margin: 0 5px;
}

.status-frame {
	height: 16px;
	width: 16px;
	background-color: gray;
	border-radius: 50%;
	margin: 0 5px;
}

.onlined {
	background-color: green;
}

.selected {
	background-color: #CCE4F2;
}

.area-2 {
	width: 100vh;
	padding: 0 7px;
}

.chat-area-container {
	max-width: 600px;
	height: 100vh;
	font-family: Calibri;
	display: flex;
	flex-flow: column;
}

.title-frame {
	height: 50px;
	flex: 0 1 auto;
	display: flex;
	justify-content: center;
	align-items: center;
}

.message-frame {
	width: 100%;
	border-bottom: 0.2px solid #3B88C3;
	flex: 1 1 auto;
	overflow-x: hidden;
}

.input-chat-frame {
	flex: 0 1 50px;
	position: absolute;
	bottom: 0; /* 화면의 하단에 고정 */
	left: 39%; /* 수평 중앙 정렬 */
	transform: translateX(-50%); /* 수평 중앙 정렬을 위한 보정 */
	width: 600px;
	padding: 10px; /* 적당한 여백 추가 */
}

.message-frame-left {
	margin: 5px 0px;
	display: flex;
	max-width: 900px;
}

.text-field {
	display: inline-block;
	border-radius: 20px;
	width: auto;
	max-width: 800px;
	padding: 10px;
	margin: 0 10px;
	color: white;
	font-family: Calibri;
	clear: both;
}

.text-field-left {
	background-color: #D8E7F3;
	color: black;
}

.text-field-right {
	background-color: #3B88C3;
}

.avatar {
	height: 64px;
	width: 64px;
	background-color: #3B88C3;
	border-radius: 50%;
	float: left;
}

textarea {
	border: none;
	outline: none; /* 선택 시에도 테두리 없음 */
	resize: none; /* 사용자가 크기 조절할 수 없도록 설정 (선택 사항) */
}

.date {
	font-size: 7px;
	color: gray;
}
</style>
</head>

<body>
	<link rel="stylesheet"
		href="https://use.fontawesome.com/releases/v5.4.2/css/all.css"
		integrity="sha384-/rXc/GQVaYpyDdyxK+ecHPVYJSN9bmVFBvjA/9eOB+pb3F2w2N6fc5qB9Ew5yIns"
		crossorigin="anonymous">

	<div class='chat-page-container'>
		<div class='area-1'>
			<div class='list-friend-container'>
				<div class='title-frame'>Message Page</div>
				<form action="ChattingRoomService" method="post">
					<div class='room-container'>
						<input type="text" id="roomName" name="room_info"
							placeholder="Room Name"> <input type="submit"
							value="Create Room">
					</div>
				</form>
				<div class='list-friend-frame'>
					<div class='friend-container'>
						<c:forEach items="${chatRoom}" var="cr">
							<form action="CreateRoom" method="post" onsubmit="return false;">
								<div class='avatar-name' onclick="creatRoom(this)">
									<input type="hidden" name="cust_id" value="${cr.cust_id}">
									<div class='avatar-frame'>
										<img src="${cr.cust_nick}" alt="Avatar">
									</div>
									<div class='name-frame'>${cr.room_title}</div>
									<input type="hidden" name="room_idx" value="${cr.room_idx}">
								</div>
							</form>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>

		<div class='area-2'>
			<div class='chat-area-container'>
				<div class='title-frame'>title</div>

				<div>
					<div>
						<div>
							<textarea rows="20" cols="50" readonly>
								<c:forEach items="${chatList}" var="msg">
									<c:if test="${! empty msg.chatting}">
	        							${msg.chatter} : ${msg.chatting}						
									</c:if>
        							<c:if test="${! empty msg.emoticon}">
        								${msg.chatter} : ${msg.emoticon}
        							</c:if>
        							<c:if test="${! empty msg.chat_file}">
        								${msg.chatter} : ${msg.chat_file}
        							</c:if>
    							</c:forEach>	
							</textarea>
						</div>

						<div>
							<textarea id="chatArea" rows="20" cols="50" readonly>
									
							</textarea>
						</div>
					</div>

					<div class='input-chat-frame'>
						<div class='search-container'>
							<form id="chatForm" action="CreateChat" method="post">
								<input type="text" class='search-input' id="message"
									name="message" placeholder='enter your messages' required>
								<input type="hidden" name="curoom_idx" id="currentRoomInput">

							</form>
							<button class='search-button' type="button"
								onclick="sendMessage()">Send</button>
						</div>
					</div>
				</div>
			</div>

		</div>

		<script type="text/javascript"
			src="https://code.jquery.com/jquery-3.7.1.js"></script>
		<script>
			document.getElementById("message").addEventListener("keypress",
					function(event) {
						if (event.key === "Enter") {
							sendMessage();
						}
					});
		</script>
	</div>
	<script>
		let ws;
		let currentRoom = "";
		var custId = "";

		function sendMessage() {

			let message = document.querySelector('input[name="message"]').value;
			let room_num = document.querySelector('input[name="curoom_idx"]');

			let chatArea = document.getElementById("chatArea");

			console.log("room_num btn : " + room_num);
			console.log("room_num 에 currentRoom 넣기 전 : " + currentRoom);

			room_num.value = currentRoom;
			console.log("currentRoom : " + room_num.value);

			if (currentRoom) {
				/*		// WebSocket을 통해 메시지 전송
						ws.send(currentRoom + ":" + message);*/

				$.ajax({
					type : 'POST',
					url : 'CreateChat', // 서버에서 메시지를 처리할 서블릿
					data : {
						message : message, // 입력된 메시지
						curoom_idx : currentRoom
					// 현재 방 번호
					},
					success : function(response) {
						console.log("서버 응답: " + response);
						// 서버 응답 후 필요한 추가 동작 수행
						if (response === "메시지 저장 성공") {
							// 성공적으로 메시지를 저장한 경우 UI 업데이트 등 추가 작업
							chatArea.value += "나 : " + message + "\n";
						} else {
							// 실패 시 처리
							alert("메시지 저장 실패");
						}
					},
					error : function(xhr, status, error) {
						console.error("Error: " + error);
					}
				});
			} else {
				alert("Please join a room first.");
			}

			document.getElementById("message").value = ''; // 메시지 입력란 초기화
		}

		function creatRoom(element) {
			if (ws) {
				ws.close();
				console.log("방 연결 끊기");
			}

			// 클릭한 요소의 부모 <form>에서 input 값을 찾아오기
			let form = element.closest('form');
			let roomIdx = form.querySelector('input[name="room_idx"]').value;
			let custId = form.querySelector('input[name="cust_id"]').value;

			console.log("Room Index:", roomIdx);
			console.log("Cust ID:", custId);

			// WebSocket URL에 방 이름과 사용자 ID를 포함
			ws = new WebSocket("ws://" + location.host + "/SNS/chat/" + roomIdx
					+ "/" + custId);

			ws.onopen = function() {
				currentRoom = roomIdx; // WebSocket 연결이 완료된 후 currentRoom 설정
				localStorage.setItem("custId", custId); // currentRoom을 로컬 스토리지에 저장
				localStorage.setItem("currentRoom", currentRoom); // currentRoom을 로컬 스토리지에 저장

				console.log("Connected to room:", currentRoom);
				console.log("custId:", custId);
			};

			ws.onmessage = function(event) {
				var chatArea = document.getElementById("chatArea");
				chatArea.value += event.data + "\n";
			};

			ws.onclose = function() {
				console.log("Disconnected from server.");
			};

			form.submit();
		}

		// 페이지 로드 시 currentRoom을 복원
		window.onload = function() {
			currentRoom = localStorage.getItem("currentRoom");
			custId = localStorage.getItem("custId");
			console.log("Restored currentRoom: " + currentRoom);
		};
	</script>
</body>

</html>
