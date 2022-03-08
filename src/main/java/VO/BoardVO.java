package VO;

public class BoardVO {
	// board_tbl의 정보를 가져오는 클래스
	
	private int number;
	private String email;
	private String password;
	private String title;
	private String content;
	private String regdate;
	private int view;
	
	// 생성자 생성
	public BoardVO(int number, String email, String password, String title, String content, String regdate, int view) {
		
		this.number = number;
		this.email = email;
		this.password = password;
		this.title = title;
		this.content = content;
		this.regdate = regdate;
		this.view = view;
	}
	
	public int getNumber() {
		return number;
	}
	public String getEmail() {
		return email;
	}
	public String getPassword() {
		return password;
	}
	public String getTitle() {
		return title;
	}
	public String getContent() {
		return content;
	}
	public String getRegdate() {
		return regdate;
	}
	public int getView() {
		return view;
	}

}
