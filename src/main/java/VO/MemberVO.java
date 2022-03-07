package VO;

public class MemberVO {
	// 가입자들의 정보를 담는 클래스
	
	// VO: getter만 사용
	// DTO: getter, setter 둘 다 사용
	
	private String email;
	private String password;
	private String address01;
	private String address02;
	private String age;
	
	// 생성자 생성
	public MemberVO(String email, String password, String address01, String address02, String age) {
		
		this.email = email;
		this.password = password;
		this.address01 = address01;
		this.address02 = address02;
		this.age = age;
	}

	// getter 메소드 생성
	public String getEmail() {
		return email;
	}
	
	public String getPassword() {
		return password;
	}
	
	public String getAddress01() {
		return address01;
	}
	
	public String getAddress02() {
		return address02;
	}
	
	public String getAge() {
		return age;
	}

}
