package controller.chat;

import java.io.IOException;

import Service.BoardService;
import controller.Controller;
import controller.HttpUtil;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class chatListSnackWriteController implements Controller{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		// 01.파라미터 받기
		String flag = req.getParameter("flag");
		
		if(flag.equals("true")) {
			// 처음 접근했을 때
			HttpUtil.forward(req, resp, "/WEB-INF/view/chat/chatListSnackWrite.jsp");
			
		}else {
			// form에 정보를 입력한 후 POST 처리 요청을 했을 때
			
			BoardService boardService = BoardService.getInstance();
			boardService.boardWrite(req);
			
			try {
				resp.sendRedirect("/Chat/chatListSnack.go");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		
	}

}
