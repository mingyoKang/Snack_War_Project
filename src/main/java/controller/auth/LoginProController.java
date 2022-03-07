package controller.auth;

import org.mindrot.jbcrypt.BCrypt;

import Service.MemberService;
import VO.MemberVO;
import controller.Controller;
import controller.HttpUtil;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class LoginProController implements Controller{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		// 01.파라미터 받기
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		// 02.입력값 검증하기
		if(email.isEmpty() || password.isEmpty()) {
			
			// 값을 미입력했을 때, alert창을 띄우고 다시 로그인페이지로 넘긴다.
			req.setAttribute("MSG", "아이디 혹은 비밀번호를 입력하세요.");
			HttpUtil.forward(req, resp, "Login.jsp");
			
		}
		
		// 03.아이디와 비밀번호가 DB에 있는 정보와 일치하는지 여부 검사하기
		MemberService memberService = MemberService.getInstance();
		MemberVO memberVO = memberService.memberSearch(email);
		
		if(memberVO == null) {
			// 계정이 조회되지 않는 경우 --> 계정이 없는 경우
			
			req.setAttribute("MSG", "해당 이메일과 일치하는 정보가 없습니다.");
			HttpUtil.forward(req, resp, "Login.jsp");
			
		}else {
			// 계정이 조회된 경우
			
			if(BCrypt.checkpw(password, memberVO.getPassword())) {
				// 비밀번호가 일치한다면
				// 세션 객체에 해당 계정과 관련한 정보를 저장한다.
				HttpSession session = req.getSession();
				session.setAttribute("memberVO", memberVO);
				
				// 그 후 해당하는 페이지로 이동
				HttpUtil.forward(req, resp, "/WEB-INF/view/MainPage.jsp");
				
			}else {
				// 비밀번호가 불일치한다면
				
				req.setAttribute("MSG", "잘못된 비밀번호입니다.");
				HttpUtil.forward(req, resp, "Login.jsp");
				
			}
			
		}
	}

}
