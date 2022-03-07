package controller.auth;

import java.io.IOException;

import controller.Controller;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class LogoutProController implements Controller{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		// 현재 접속중인 계정의 섹션 객체를 꺼내서
		HttpSession session = req.getSession();
		
		// 세션을 해체시킨다.
		session.invalidate();
		
		// 페이지 이동시키기
		
		try {
			resp.sendRedirect("Login.jsp");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
