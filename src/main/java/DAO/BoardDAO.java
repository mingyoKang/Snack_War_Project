package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import VO.BoardVO;
import VO.MemberVO;
import VO.ReplyVO;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

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
	
	
	// DB에서 정보 가져오기(게시판에)
	public Vector<BoardVO> getSnackRecoList(int start, int count){
		// 저장할 공간
		Vector<BoardVO> list = new Vector<BoardVO>();
		
		try {
			
			conn = ds.getConnection();
			pstmt = conn.prepareStatement("select * from board_tbl order by number desc limit ?,?");
			
			// start: 시작하는 부분 count: 가져오는 행의 개수
			pstmt.setInt(1, start);
			pstmt.setInt(2, count);
			
			rs = pstmt.executeQuery();
			
			if(rs !=null) {
				
				while(rs.next()) {
					
					// 가져온 데이터를 Vector<BoardVO>에 저장
					BoardVO vo = new BoardVO(
							rs.getInt("number"),
							rs.getString("email"),
							rs.getString("password"),
							rs.getString("title"),
							rs.getString("content"),
							rs.getString("regdate"),
							rs.getInt("view"));
					
					// 만들어 놓은 Vector에 넣기
					list.add(vo);
					
				}
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return list;
	}
	
	// DB에 있는 전체 게시물 개수 받기
	public int getTotalCount() {
		int count = 0;
		
		try {
			
			conn = ds.getConnection();
			pstmt = conn.prepareStatement("select count(*) from board_tbl");
			
			rs = pstmt.executeQuery();
			
			if(rs !=null) {
				
				while(rs.next()) {
					count = rs.getInt(1);
				}
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}			
		}
		
		return count;
	}
	
	// 게시물 View 증가시키는 함수
	public void upView(int number) {
		
		try {
			
			conn = ds.getConnection();
			pstmt = conn.prepareStatement("update board_tbl set view=view+1 where number=?");
			
			pstmt.setInt(1, number);
			
			pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
	}
	
	// 게시물 읽는 처리 함수
	public BoardVO getBoardVO(int number) {
		
		// 데이터를 저장할 공간
		BoardVO vo = null;
		
		// 게시물을 읽을 때마다 view는 하나씩 증가
		upView(number);
		
		try {
			
			conn = ds.getConnection();
			pstmt = conn.prepareStatement("select * from board_tbl where number=?");
			
			pstmt.setInt(1, number);
			
			rs = pstmt.executeQuery();
			
			if(rs !=null) {
				
				while(rs.next()) {
					
					vo = new BoardVO(
							rs.getInt("number"),
							rs.getString("email"),
							rs.getString("password"),
							rs.getString("title"),
							rs.getString("content"),
							rs.getString("regdate"),
							rs.getInt("view"));
					
				}
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		
		return vo;
	}
	
	// 채팅 댓글 올리는 함수 (POST)
	public void postReply(ReplyVO vo) {
		
		try {
			
			conn = ds.getConnection();
			pstmt = conn.prepareStatement("insert into reply_tbl values(null,?,?,?,now())");
			
			pstmt.setInt(1, vo.getBoard_number());
			pstmt.setString(2, vo.getWriter());
			pstmt.setString(3, vo.getComment());
			
			pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		
	}
	
	// 채팅 댓글 불러오는 함수 (LIST)
	public Vector<ReplyVO> getReplyList(int number){
		
		Vector<ReplyVO> list = new Vector<ReplyVO>();
		ReplyVO replyVO = null;
		
		try {
			
			conn = ds.getConnection();
			pstmt = conn.prepareStatement("select * from reply_tbl where board_number=? order by reply_number desc");
			
			pstmt.setInt(1, number);
			
			rs = pstmt.executeQuery();
			
			if(rs !=null) {
				
				while(rs.next()) {
					
					replyVO = new ReplyVO(
							rs.getInt("board_number"),
							rs.getString("writer"),
							rs.getString("comment"),
							rs.getString("regdate"));
					
					list.add(replyVO);
					
				}
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		
		return list;
	}
	
	// 글쓰기 함수 처리
	public void boardWrite(HttpServletRequest req) {
		
		try {
			
			conn = ds.getConnection();
			
			HttpSession session = req.getSession();
			MemberVO memberVO = (MemberVO) session.getAttribute("memberVO");
			
			pstmt = conn.prepareStatement("insert into board_tbl values(null,?,?,?,?,now(),0)");
			
			// email, password, title, content
			pstmt.setString(1, memberVO.getEmail());
			pstmt.setString(2, req.getParameter("password"));
			pstmt.setString(3, req.getParameter("title"));
			pstmt.setString(4, req.getParameter("content"));
			
			pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		
	}
	
	// 글 삭제하기 함수 처리
	public void boardDelete(int number) {
		
		try {
			
			conn = ds.getConnection();
			pstmt = conn.prepareStatement("delete from board_tbl where number=?");
			
			pstmt.setInt(1, number);
			
			pstmt.executeUpdate();
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		
	}
	
	// 글 수정하기 함수 처리
	public void boardUpdate(BoardVO vo) {
		
		try {
			
			conn = ds.getConnection();
			pstmt = conn.prepareStatement("update board_tbl set title=?, content=? where number=?");
			
			pstmt.setString(1, vo.getTitle());
			pstmt.setString(2, vo.getContent());
			pstmt.setInt(3, vo.getNumber());
			
			pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {

			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		
	}
}
