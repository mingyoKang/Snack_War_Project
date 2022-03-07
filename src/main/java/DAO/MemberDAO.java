package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import org.mindrot.jbcrypt.BCrypt;

import VO.MemberVO;

public class MemberDAO {

	// 멤버 변수 DataSource 관련 참조변수
	Context initCtx;
	Context envCtx;
	DataSource ds;
	
	// 멤버 변수 SQL 쿼리 관련 참조변수
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs = null;
	
	// Singleton 패턴으로 객체를 하나밖에 생성 못하도록 설정
	// Singleton START
	private static MemberDAO instance = new MemberDAO();
	
	private MemberDAO() {
		
		try {
			
			initCtx = new InitialContext();
			envCtx = (Context) initCtx.lookup("java:comp/env");
			ds = (DataSource) envCtx.lookup("jdbc/MysqlDB");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	};
	
	public static MemberDAO getInstance() {
		
		if(instance == null) {
			instance = new MemberDAO();
		}
		
		return instance;
		
	}
	// Singleton END
	
	// 회원가입을 처리하는 함수
	public boolean memberJoin(MemberVO vo) {
		
		boolean flag = false;
		
		try {
			
			conn = ds.getConnection();
			pstmt = conn.prepareStatement("insert into member_tbl values(?,?,?,?,?)");
			
			pstmt.setString(1, vo.getEmail());
			// password를 암호화시킨다.
			pstmt.setString(2, BCrypt.hashpw(vo.getPassword(), BCrypt.gensalt()));
			pstmt.setString(3, vo.getAddress01());
			pstmt.setString(4, vo.getAddress02());
			pstmt.setString(5, vo.getAge());
			
			int result = pstmt.executeUpdate();
			
			if(result !=0) {
				// 결과가 제대로 실행되면 1이 나온다.
				flag = true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		// 알아서 해제하기 때문에 finally는 불필요
		
		return flag;
		
	}
}
