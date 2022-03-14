package controller.chat;

import java.io.IOException;

import Service.BoardService;
import VO.BoardVO;
import controller.Controller;
import controller.HttpUtil;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class chatListSnackUpdateController implements Controller{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		// 01.파라미터 받기
		String flag = req.getParameter("flag");
		
		if(flag !=null) {
			// 처음으로 페이지를 실행할 때
			HttpUtil.forward(req, resp, "/WEB-INF/view/chat/chatListSnackUpdate.jsp");
			
		}else {
			// update를 실행할 때
			
			// 01.파라미터 받기
			String title = req.getParameter("title");
			String content = req.getParameter("content");
			
			// 02.입력값 검증하기
			if(title.isEmpty() || content.isEmpty()) {
				
				req.setAttribute("MSG", "값을 입력하세요.");
				
				HttpUtil.forward(req, resp, "/Chat/chatListSnackUpdate.go");
				
			}
			
			// 03.서비스 실행하기
			HttpSession session = req.getSession();
			BoardVO boardVO = (BoardVO) session.getAttribute("boardVO");
			int number = boardVO.getNumber();
			
			BoardService boardService = BoardService.getInstance();
			BoardVO vo = new BoardVO(number,title,content);
			
			boardService.boardUpdate(vo);
			
			// 04.페이지 이동하기
			
			String start = req.getParameter("start");
			String count = req.getParameter("count");
			String currentPage = req.getParameter("currentPage");
			
			String url = "/Chat/chatListSnackRead.go?currentPage=" + currentPage + "&start=" + start + "&count=" + count + "&number=" + number;
			
			try {
				resp.sendRedirect(url);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}

}
