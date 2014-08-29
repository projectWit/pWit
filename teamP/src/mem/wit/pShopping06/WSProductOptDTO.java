package mem.wit.pShopping06;

public class WSProductOptDTO {
	private int 	opt_prdCode;		// 상품 코드
	private int		opt_no;				// 옵션 번호
	private String	opt_name;			// 옵션 제목
	private	int		opt_valid;			// 옵션 유효 여부
	private	int		opt_price;			// 옵션에 추가되는 금액(마이너스 허용)
	
	
	public WSProductOptDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public WSProductOptDTO(int opt_prdCode, int opt_no, String opt_name,
			int opt_valid, int opt_price) {
		super();
		this.opt_prdCode = opt_prdCode;
		this.opt_no = opt_no;
		this.opt_name = opt_name;
		this.opt_valid = opt_valid;
		this.opt_price = opt_price;
	}
	public int getOpt_prdCode() {
		return opt_prdCode;
	}
	public void setOpt_prdCode(int opt_prdCode) {
		this.opt_prdCode = opt_prdCode;
	}
	public int getOpt_no() {
		return opt_no;
	}
	public void setOpt_no(int opt_no) {
		this.opt_no = opt_no;
	}
	public String getOpt_name() {
		return opt_name;
	}
	public void setOpt_name(String opt_name) {
		this.opt_name = opt_name;
	}
	public int getOpt_valid() {
		return opt_valid;
	}
	public void setOpt_valid(int opt_valid) {
		this.opt_valid = opt_valid;
	}
	public int getOpt_price() {
		return opt_price;
	}
	public void setOpt_price(int opt_price) {
		this.opt_price = opt_price;
	}
	
	

}
