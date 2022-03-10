package controller.chat;

import Service.BoardService;
import VO.MemberVO;
import VO.ReplyVO;
import controller.Controller;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class snackReplyPostController implements Controller{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		String comment = req.getParameter("comment");
		
		HttpSession session = req.getSession();
		
		MemberVO memberVO = (MemberVO) session.getAttribute("memberVO");
		
		// board_number, writer, comment;
		ReplyVO replyVO = new ReplyVO(
				1,
				memberVO.getEmail(),
				comment);
		
		// 서비스 실행하기
		BoardService boardService = BoardService.getInstance();
		boardService.postReply(replyVO);
	}

}
