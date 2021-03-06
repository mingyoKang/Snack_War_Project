package Service;

import java.util.Vector;

import DAO.BoardDAO;
import VO.BoardVO;
import VO.ReplyVO;
import jakarta.servlet.http.HttpServletRequest;

public class BoardService {
	
	// 멤버변수 추가
	BoardDAO dao;
	
	// Singleton Pattern START
	private static BoardService instance = new BoardService();
	
	private BoardService() {
		dao = BoardDAO.getInstance();
	};
	
	public static BoardService getInstance() {
		
		if(instance == null) {
			instance = new BoardService();
		}
		
		return instance;
		
	}
	// Singleton Pattern END

	
	// DB에서 정보 가져오기(게시판으로)
	public Vector<BoardVO> getSnackRecoList(int start, int count){
		return dao.getSnackRecoList(start, count);
	}
	
	// DB에 있는 전체 정보 개수 가져오기
	public int getTotalCount() {
		return dao.getTotalCount();
	}
	
	// 게시물 읽기(Read)
	public BoardVO getBoardVO(int number) {
		return dao.getBoardVO(number);
	}
	
	// 댓글 달기(POST Reply)
	public void postReply(ReplyVO vo) {
		dao.postReply(vo);
	}
	
	// 댓글 불러오기(LIST Reply)
	public Vector<ReplyVO> getReplyList(int number){
		return dao.getReplyList(number);
	}
	
	// 글쓰기 함수 처리
	public void boardWrite(HttpServletRequest req) {
		dao.boardWrite(req);
	}
	
	// 글 삭제하기 함수 처리
	public void boardDelete(int number) {
		dao.boardDelete(number);
	}
	
	// 글 수정하기 함수 처리
	public void boardUpdate(BoardVO vo) {
		dao.boardUpdate(vo);
	}
}
