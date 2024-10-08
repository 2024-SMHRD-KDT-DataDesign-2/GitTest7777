package com.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.smhrd.model.chatDAO;
import com.smhrd.model.chattingRoomDTO;
import com.smhrd.model.CustomerDAO;
import com.smhrd.model.CustomerDTO;

/**
 * Servlet implementation class ChattingRoomService
 */
@WebServlet("/ChattingRoomService")
public class ChattingRoomService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("ChattingRoomService에 도착");

		request.setCharacterEncoding("UTF-8");
		
		String productIdx = request.getParameter("product_idx");
	       if (productIdx != null) {
	           System.out.println("Product ID: " + productIdx);
	           // 여기서 productIdx를 이용한 추가 로직을 작성할 수 있음
	       } else {
	           // product_idx 값이 없을 경우 400 에러 처리
	           response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid product ID");
	           return; // 이후 로직을 실행하지 않기 위해 return
	       }

		String room_info = request.getParameter("member");

		System.out.println("ChattingRoomService member : " + room_info);

		chattingRoomDTO dto = new chattingRoomDTO();
		chatDAO dao = new chatDAO();

		// 세션에서 아이디 꺼내오기
		HttpSession session = request.getSession();
		CustomerDTO cust = (CustomerDTO) session.getAttribute("info");

		System.out.println("ChattingRoomService Cust_id : " + cust.getCust_id());

		dto.setCust_nick(cust.getCust_nick());

		if (room_info != null) {

			dto.setRoom_info(room_info);
			dto.setCust_id(cust.getCust_id());

			System.out.println("채팅방 db에 저장하기 전 마지막 테스트 CustId : " + dto.getCust_id());
			System.out.println("채팅방 db에 저장하기 전 마지막 테스트 room_info : " + dto.getRoom_info());

			int cnt = dao.creatRoom(dto);

			if (cnt > 0) {
				System.out.println("채팅방 생성 성공");
			} else {
				System.out.println("채팅방 생성 실패");

			}
		}

		// dto에 꺼낸 아이디 넣기
		dto.setCust_id(cust.getCust_id());
		List<chattingRoomDTO> chatRoom = dao.chattingRoom(dto);

		if (chatRoom != null) {
			request.setAttribute("chatRoom", chatRoom);
			System.out.println("채팅 목록 : " + chatRoom);

			RequestDispatcher rd = request.getRequestDispatcher("ChattingPage.jsp");
			rd.forward(request, response);
		} else {
			response.sendRedirect("ChattingPage.jsp");
		}

	}

}
