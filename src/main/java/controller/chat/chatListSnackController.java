package controller.chat;

import java.util.Vector;

import Service.BoardService;
import VO.BoardVO;
import controller.Controller;
import controller.HttpUtil;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class chatListSnackController implements Controller{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		// 01.파라미터
		int start = 0;
		int count = 10; // 10행을 받아들일 것
		
		// 03.서비스 실행하기
		BoardService boardService = BoardService.getInstance();
		Vector<BoardVO> list = boardService.getSnackRecoList(start, count);
		int totalCount = boardService.getTotalCount();
		
		// 04.해당 페이지로 이동
		 // list와 totalCount를 실어 보낸다.
		req.setAttribute("list", list);
		req.setAttribute("totalCount", totalCount);
		HttpUtil.forward(req, resp, "/WEB-INF/view/chat/chatListSnack.jsp");
	}

}
