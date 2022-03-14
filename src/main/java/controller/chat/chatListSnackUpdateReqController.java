package controller.chat;

import VO.BoardVO;
import controller.Controller;
import controller.HttpUtil;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class chatListSnackUpdateReqController implements Controller{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		String flag = req.getParameter("flag");
		
		if(flag !=null) {
			// 처음 들어 올 때
			HttpUtil.forward(req, resp, "/WEB-INF/view/chat/chatListSnackUpdateReq.jsp");
			
		}else {
			// 비밀번호 입력 후
			
			String conPassword = req.getParameter("password");
			
			HttpSession session = req.getSession();
			BoardVO boardVO = (BoardVO) session.getAttribute("boardVO");
			int number = boardVO.getNumber();
			
			if(conPassword.equals(boardVO.getPassword())) {
				// 비밀번호가 일치할 때
				
				String start = req.getParameter("start");
				String count = req.getParameter("count");
				String currentPage = req.getParameter("currentPage");
				
				String url = "/Chat/chatListSnackUpdate.go?flag=init&number=" + number + "&currentPage=" + currentPage + "&start=" + start + "&count=" + count;
				
				HttpUtil.forward(req, resp, url);
				
			}else {
				// 비밀번호가 다를 때
				
				req.setAttribute("MSG", "비밀번호가 틀렸습니다.");

				String start = req.getParameter("start");
				String count = req.getParameter("count");
				String currentPage = req.getParameter("currentPage");
				
				String url = "/Chat/chatListSnackRead.go?number=" + number + "&currentPage=" + currentPage  + "&start=" + start + "&count=" + count;
				
				HttpUtil.forward(req, resp, url);
			}
		}
		
	}

}
