package Service;

import DAO.BoardDAO;

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

}
