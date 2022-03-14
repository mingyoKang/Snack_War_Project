package controller.chat;

import VO.BoardVO;
import controller.Controller;
import controller.HttpUtil;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class chatListSnackDeleteReqController implements Controller{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		// Delete할 때 비밀번호의 일치여부를 판별하는 클래스
		
		String flag = req.getParameter("flag");
		
		if(flag !=null) {
			// flag에 값이 있을 때 = 처음 시행할 때
			
			HttpUtil.forward(req, resp, "/WEB-INF/view/chat/chatListSnackDelete.jsp");
			
		}else {
			
			String conPassword = req.getParameter("password");
			
			HttpSession session = req.getSession();
			BoardVO boardVO = (BoardVO) session.getAttribute("boardVO");
			int number = boardVO.getNumber();
			
			String start = req.getParameter("start");
			String count = req.getParameter("count");
			String currentPage = req.getParameter("currentPage");
			
			if(conPassword.equals(boardVO.getPassword())) {
				// 비밀번호가 일치한다면 삭제시키고 다시 해당 페이지로 돌아오기
				
				String url = "/Chat/chatListSnackDelete.go?number=" + number + "&currentPage=" + currentPage + "&start=" + start + "&count=" + count;
				
				HttpUtil.forward(req, resp, url);
				
			}else {
				// 비밀번호가 불일치하면 메시지를 띄우고 다시 돌아가기
				
				req.setAttribute("MSG", "비밀번호가 틀렸습니다.");
				
				String url = "/Chat/chatListSnackRead.go?number=" + number + "&currentPage=" + currentPage + "&start=" + start + "&count=" + count;
				
				HttpUtil.forward(req, resp, url);
			}
		}
		
	}

}
