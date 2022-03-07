package controller.profile;

import VO.MemberVO;
import controller.Controller;
import controller.HttpUtil;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class userProfileController implements Controller{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		// 01.세션에서 접속한 계정 정보를 꺼내기
		HttpSession session = req.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("memberVO");
		
		// 02. 페이지 이동시키기
		req.setAttribute("memberVO", memberVO);
		HttpUtil.forward(req, resp, "/WEB-INF/view/profile/userProfile.jsp");
		
	}

}
