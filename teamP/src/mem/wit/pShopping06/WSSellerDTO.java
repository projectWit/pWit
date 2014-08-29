package mem.wit.pShopping06;

public class WSSellerDTO {
	private String 	sel_id;				// 판매자 ID
	private String 	sel_password;		// 판매자 패스워드
	private String 	sel_name;			// 판매자 이름
	private int 	sel_zipcode;		// 판매자 사업지 우편번호
	private String 	sel_addr;			// 판매자 사업지 주소
	private String 	sel_tel1;			// 판매자 주연락처
	private String 	sel_tel2;			// 판매자 부연락처
	private String 	sel_email;			// 판매자 이메일 주소
	private String 	sel_enterDate;		// 판매자 가입일	
	private int		sel_level;			// 판매자 등급
	
	public WSSellerDTO() {
	}

	public WSSellerDTO(String sel_id, String sel_password, String sel_name,
			int sel_zipcode, String sel_addr, String sel_tel1,
			String sel_tel2, String sel_email, String sel_enterDate,
			int sel_level) {
		super();
		this.sel_id = sel_id;
		this.sel_password = sel_password;
		this.sel_name = sel_name;
		this.sel_zipcode = sel_zipcode;
		this.sel_addr = sel_addr;
		this.sel_tel1 = sel_tel1;
		this.sel_tel2 = sel_tel2;
		this.sel_email = sel_email;
		this.sel_enterDate = sel_enterDate;
		this.sel_level = sel_level;
	}

	public String getSel_id() {
		return sel_id;
	}

	public void setSel_id(String sel_id) {
		this.sel_id = sel_id;
	}

	public String getSel_password() {
		return sel_password;
	}

	public void setSel_password(String sel_password) {
		this.sel_password = sel_password;
	}

	public String getSel_name() {
		return sel_name;
	}

	public void setSel_name(String sel_name) {
		this.sel_name = sel_name;
	}

	public int getSel_zipcode() {
		return sel_zipcode;
	}

	public void setSel_zipcode(int sel_zipcode) {
		this.sel_zipcode = sel_zipcode;
	}

	public String getSel_addr() {
		return sel_addr;
	}

	public void setSel_addr(String sel_addr) {
		this.sel_addr = sel_addr;
	}

	public String getSel_tel1() {
		return sel_tel1;
	}

	public void setSel_tel1(String sel_tel1) {
		this.sel_tel1 = sel_tel1;
	}

	public String getSel_tel2() {
		return sel_tel2;
	}

	public void setSel_tel2(String sel_tel2) {
		this.sel_tel2 = sel_tel2;
	}

	public String getSel_email() {
		return sel_email;
	}

	public void setSel_email(String sel_email) {
		this.sel_email = sel_email;
	}

	public String getSel_enterDate() {
		return sel_enterDate;
	}

	public void setSel_enterDate(String sel_enterDate) {
		this.sel_enterDate = sel_enterDate;
	}

	public int getSel_level() {
		return sel_level;
	}

	public void setSel_level(int sel_level) {
		this.sel_level = sel_level;
	}
	


	
}
