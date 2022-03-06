package controller.complaint;

import java.io.IOException;

import controller.Controller;
import controller.HttpUtil;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class complaintController implements Controller{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		// 01.파라미터 받기
		String flag = req.getParameter("flag");
		
		if(flag !=null) {
			// flag에 값이 있을 때
			// 즉, 처음 이 페이지를 실행했을 때
			HttpUtil.forward(req, resp, "/WEB-INF/view/complaint/comp.jsp");
			
		}else {
			// flag에 값이 없을 때
			// 즉, opinion을 보낸 후에(SEND 버튼을 누른 후)
			
			// 01. 파라미터 받기
			String opinion = req.getParameter("opinion");
			
			// 페이지 이동하기
			try {
				resp.sendRedirect("/Complaint/done.go");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		
		
	}

}
