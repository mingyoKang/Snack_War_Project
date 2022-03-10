package VO;

public class ReplyVO {

	private int reply_number;
	// board_number: 1 -> AboutSnak, board_number: 2 -> aboutUs
	private int board_number;
	private String writer;
	private String comment;
	private String regdate;
	
	// 생성자 생성
	public ReplyVO(int board_number, String writer, String comment, String regdate) {
		
		this.board_number = board_number;
		this.writer = writer;
		this.comment = comment;
		this.regdate = regdate;
	}
	
	public ReplyVO(int board_number, String writer, String comment) {

		this.board_number = board_number;
		this.writer = writer;
		this.comment = comment;
	}
	
	public int getReply_number() {
		return reply_number;
	}
	public int getBoard_number() {
		return board_number;
	}
	public String getWriter() {
		return writer;
	}
	public String getComment() {
		return comment;
	}
	public String getRegdate() {
		return regdate;
	}
	
}
