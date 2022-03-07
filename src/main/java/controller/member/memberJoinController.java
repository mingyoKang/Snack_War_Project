package controller.member;

import Service.MemberService;
import VO.MemberVO;
import controller.Controller;
import controller.HttpUtil;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class memberJoinController implements Controller{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		// 01.파라미터 받기
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		String address01 = req.getParameter("address01");
		String address02 = req.getParameter("address02");
		String age = req.getParameter("age");
		
		// 파라미터 값을 잘 받아오는지 확인
		// System.out.printf("%s %s %s %s %s\n", email, password, address01, address02, age);
		
		// Optional 코드
		if(email.isEmpty() || password.isEmpty() ||
				address01.isEmpty() || address02.isEmpty() || age.isEmpty()) {
			req.setAttribute("MSG", "모두 빠짐없이 입력하세요.");
			// 값을 미입력했을 경우 다시 가입 페이지로 가게 한다.
			HttpUtil.forward(req, resp, "/MemberJoin.go");
		}
		
		// 02.서비스 작업
		 // Singleton 객체 생성
		MemberService memberService = MemberService.getInstance();
		MemberVO memberVO = new MemberVO(email, password, address01, address02, age);
		memberService.memberJoin(memberVO);
		
		// 03.페이지 이동
		HttpUtil.forward(req, resp, "Login.jsp");
	}

}
