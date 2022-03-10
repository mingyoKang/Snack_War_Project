package controller.chat;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Vector;

import Service.BoardService;
import VO.ReplyVO;
import controller.Controller;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class snackReplyListController implements Controller{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		// 파라미터 받기
		 // About Snack 채팅 보드 번호는 1.
		int number = 1;
		
		// 서비스 시행하기
		BoardService boardService = BoardService.getInstance();
		Vector<ReplyVO> list = boardService.getReplyList(number);
		System.out.println("List size: " + list.size());
		
		// 페이지를 이동할 필요 없이 Ajax가 바로 처리한다.
		
		try {
			
			PrintWriter out = resp.getWriter();
			
			for(int i=0; i<list.size(); i++) {
				
				out.print("<div class = \"row\" style = \"border:2px solid green; padding:5px; width:700px; margin:5px; border-radius:20px;\">");
				out.print("<div class = \"col-2 me-2\" style = \"padding:7px 20px;\">");
				out.print("<img src = \"/Resources/images/person-circle.svg\" width=50px height=50px>");
				out.print("</div>");
				out.print("<div class = \"col-9\">");
				out.print("<small style = \"color:tomato;\">"+ list.get(i).getWriter() +"</small>");
				out.print("<p>"+ list.get(i).getComment() +"</p>");
				out.print("</div>");
				out.print("</div>");
				
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
}
