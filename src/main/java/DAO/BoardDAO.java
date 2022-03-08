package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoardDAO {

	// DataSource관련 참조변수
	Context initCtx;
	Context envCtx;
	DataSource ds;
	
	// 멤버변수 SQL 쿼리관련 참조변수
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs = null;
	
	// Singleton Pattern START
	private static BoardDAO instance = new BoardDAO();
	
	private BoardDAO() {
		
		try {
			
			initCtx = new InitialContext();
			envCtx = (Context) initCtx.lookup("java:comp/env");
			ds = (DataSource) envCtx.lookup("jdbc/MysqlDB");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	};
	
	public static BoardDAO getInstance() {
		
		if(instance == null) {
			instance = new BoardDAO();
		}
		
		return instance;
		
	}
	// Singleton Pattern END
	
}
