package controller.chat;

import Service.BoardService;
import VO.BoardVO;
import controller.Controller;
import controller.HttpUtil;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class chatListSnackReadController implements Controller{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		// 01.파라미터 받기
		 // pageForm으로부터
		int number = Integer.parseInt(req.getParameter("number"));
		String currentPage = req.getParameter("currentPage");
		
		int start = Integer.parseInt(req.getParameter("start"));
		int count = Integer.parseInt(req.getParameter("count"));
		
		// 03.서비스 실행하기
		BoardService boardService = BoardService.getInstance();
		BoardVO boardVO = boardService.getBoardVO(number);
		
		// 04.페이지 이동하기
		HttpSession session = req.getSession();
		session.setAttribute("boardVO", boardVO);
		
		req.setAttribute("currentPage", currentPage);
		req.setAttribute("start", start);
		req.setAttribute("count", count);
		
		HttpUtil.forward(req, resp, "/WEB-INF/view/chat/chatListSnackRead.jsp");
		
	}

}
