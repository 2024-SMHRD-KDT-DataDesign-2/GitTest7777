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

body {
	display: flex;
	justify-content: center;
	align-items: flex-start;
	height: 100vh;
	margin: 0;
}

.container {
	display: flex;
	width: 80%;
	height: 80%;
}

.conversations-list {
	width: 30%; /* 왼쪽 목록의 너비 */
	border-right: 1px solid #ccc; /* 경계선 추가 */
	padding: 10px;
	overflow-y: auto; /* 스크롤 가능 */
}

.conversation {
	width: 70%; /* 오른쪽 대화창의 너비 */
	padding: 10px;
	display: flex;
	flex-direction: column;
}

.toggle-button {
	border: none;
	background: none;
	padding: 5px;
	cursor: pointer;
}
</style>
</head>
<body>
	<div class="new-chat-button">
		<form action="ChattingRoomService" method="post" id="roomDB">
			<input type="button" onclick="newRoom();" id="newChatButton"
				class="toggle-button ion-plus plus-b" value="+"> <input
				type="hidden" name="member">
		</form>
	</div>
	<div class="container">
		<div class="conversations-list toggle-target toggle-target-active">
			<div class="head">
				<div class="title">Messenger</div>
			</div>
			<div class="search">
				<i class="icon search-icon ion-ios-search"></i> <input type="search"
					placeholder="Search Messenger" class="search-input" />
			</div>

			<div class="conversations-list-items slimscroll"
				data-height="calc(100% - 96px)">
				<div class="conversations-list-item single">
					<c:forEach items="${chatRoom}" var="cr">
						<form action="CreateRoom" method="post" onsubmit="return false;">
							<div class='avatar-name' onclick="creatRoom(this)">
								<input type="hidden" name="cust_id" value="${cr.cust_id}">
								<div class='name-frame'>${cr.room_title}</div>
								<input type="hidden" name="room_idx" value="${cr.room_idx}">
							</div>
						</form>
					</c:forEach>
				</div>
			</div>
		</div>

		<div class="conversation">
			<div class="head">
				<div class="dashboard">
					<c:forEach items="${chatRoom}" var="cr">
						<div class="name">${cr.room_title}</div>
					</c:forEach>
				</div>
			</div>
			<div class="messaging toggle-target">
				<div class="messages">
					<h4>지난 대화 내역</h4>
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
					<br>
					<h4>대화</h4>
					<textarea id="chatArea" rows="20" cols="50" readonly></textarea>
				</div>
				<br>
				<form action="CreateChat" method="post">
					<input type="text" class='message-input' id="message"
						name="message" placeholder='enter your messages' required>
					<input type="hidden" name="curoom_idx" id="currentRoomInput">
					<button onclick="sendMessage()" type="button"
						class="action send-button">Send</button>
				</form>
			</div>
		</div>
	</div>
	<script>
		let ws;
		let currentRoom = "";
		var custId = "";

		function sendMessage() {
			let message = document.querySelector('input[name="message"]').value;
			let room_num = document.querySelector('input[name="curoom_idx"]');

			let chatArea = document.getElementById("chatArea");

			room_num.value = currentRoom;

			if (currentRoom) {
				$.ajax({
					type : 'POST',
					url : 'CreateChat',
					data : {
						message : message,
						curoom_idx : currentRoom
					},
					success : function(response) {
						if (response === "메시지 저장 성공") {
							chatArea.value += "나 : " + message + "\n";
						} else {
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

			document.getElementById("message").value = '';
		}

		function creatRoom(element) {
			if (ws) {
				ws.close();
			}

			let form = element.closest('form');
			let roomIdx = form.querySelector('input[name="room_idx"]').value;
			let custId = form.querySelector('input[name="cust_id"]').value;
			
			document.getElementById("currentRoomInput").value = roomIdx;

			ws = new WebSocket("ws://" + location.host + "/products/chat/"
					+ roomIdx + "/" + custId);

			ws.onopen = function() {
				currentRoom = roomIdx;
				localStorage.setItem("custId", custId);
				localStorage.setItem("currentRoom", currentRoom);
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

		window.onload = function() {
			currentRoom = localStorage.getItem("currentRoom");
			custId = localStorage.getItem("custId");
		};

		function newRoom() {
			let member = prompt("초대할 회원 아이디를 입력하시오");
			let inputtag = document.querySelector("input[name='member']");
			inputtag.value = member;
			document.getElementById("roomDB").submit();
		}

		document.getElementById("message").addEventListener("keypress",
				function(event) {
					if (event.key === "Enter") {
						sendMessage();
					}
				});
	</script>
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-3.7.1.js"></script>
</body>
</html>
