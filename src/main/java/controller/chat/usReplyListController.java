package controller.chat;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Vector;

import Service.BoardService;
import VO.ReplyVO;
import controller.Controller;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class usReplyListController implements Controller{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		// About US board_number: 2
		int number = 2;
		
		// 서비스 실행하기
		BoardService boardService = BoardService.getInstance();
		Vector<ReplyVO> list = boardService.getReplyList(number);
		
		// 페이지 이동 없이 Ajax로 처리하기
		
		try {
			
			PrintWriter out = resp.getWriter();
			
			for(int i=0; i<list.size(); i++) {
				
				out.print("<div class = \"row\" style = \"border:2px solid dodgerblue; padding:5px; width:700px; margin:5px; border-radius:20px;\">");
				out.print("<div class = \"col-2 me-2\" style = \"padding:7px 20px;\">");
				out.print("<img src = \"/Resources/images/person-circle.svg\" width=50px height=50px>");
				out.print("</div>");
				out.print("<div class = \"col-9\">");
				out.print("<small style = \"color:orange;\">"+ list.get(i).getWriter() +"</small>");
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
