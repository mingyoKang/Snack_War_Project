package TMP;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class BoardPost1000 {

	public static void main(String[] args) {
		
		String url = "jdbc:mysql://localhost:3306/snackdb";
		String id = "root";
		String pw = "0312";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			conn = DriverManager.getConnection(url,id,pw);
			
			for(int i=1; i<=1000; i++) {
				
				pstmt = conn.prepareStatement("insert into board_tbl values(null,?,?,?,?,?)");
				
				// email, title, content, regdate, view 순서
				pstmt.setString(1, "abc" + i + "@gmail.com");
				pstmt.setString(2, "Title" + i);
				pstmt.setString(3, "Content" + i);
				pstmt.setString(4, "20220308");
				pstmt.setInt(5, 0);
				
				pstmt.executeUpdate();
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			
			try {
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		System.out.println("Insert Data to DB done!!");

	}

}
