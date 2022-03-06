package controller.chat;

import controller.Controller;
import controller.HttpUtil;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class chatListSnackController implements Controller{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		HttpUtil.forward(req, resp, "/WEB-INF/view/chat/chatListSnack.jsp");
	}

}
