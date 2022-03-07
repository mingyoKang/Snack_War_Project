package Service;

import DAO.MemberDAO;
import VO.MemberVO;

public class MemberService {

	// DAO 연결용 참조변수
	MemberDAO dao = null;
	
	// Singleton START
	private static MemberService instance = new MemberService();
	
	private MemberService() {
		dao = MemberDAO.getInstance();
	};
	
	public static MemberService getInstance() {
		
		if(instance == null) {
			instance = new MemberService();
		}
		
		return instance;
		
	}
	// Singleton END
	
	// 회원가입 서비스 처리 함수
	public boolean memberJoin(MemberVO vo) {
		return dao.memberJoin(vo);
	}
}
