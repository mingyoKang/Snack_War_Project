package Service;

import java.util.Vector;

import DAO.BoardDAO;
import VO.BoardVO;

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
}
