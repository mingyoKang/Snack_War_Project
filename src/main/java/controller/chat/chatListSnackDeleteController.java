package controller.chat;

import java.io.IOException;

import Service.BoardService;
import VO.BoardVO;
import controller.Controller;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class chatListSnackDeleteController implements Controller{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		HttpSession session = req.getSession();
		BoardVO boardVO = (BoardVO) session.getAttribute("boardVO");
		int number = boardVO.getNumber();
		
		BoardService boardService = BoardService.getInstance();
		boardService.boardDelete(number);
		
		// 페이지 이동하기
		
		String start = req.getParameter("start");
		String count = req.getParameter("count");
		String currentPage = req.getParameter("currentPage");
		
		String url = "/Chat/chatListSnack.go?currentPage=" + currentPage + "&start=" + start + "&count=" + count + "&number=" + number;
		
		try {
			resp.sendRedirect(url);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
