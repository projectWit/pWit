package mem.wit.pShopping06;

public class WSBuyDTO {
	private int		buy_code;			// 주문 코드
	private int		buy_prdcode;		// 상품 코드
	private int		buy_prdcodeopt;		// 상품의 옵션 코드
	private String	buy_memberID;		// 주문자 ID
	private int		buy_price;			// 결제 가격
	private int		buy_paytype;		// 결제 유형
	private int		buy_cash_receipt;	// 현금결제시 현금영수증 발행 여부
	private String	buy_date;			// 주문일시
	private int		buy_currdelv;		// 현재 배송상태
	private int		buy_cancle;			// 주문 취소 여부
	private int		buy_delvtype;		// 배송비 결제 유형	
	
	
	public WSBuyDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public WSBuyDTO(int buy_code, int buy_prdcode, int buy_prdcodeopt,
			String buy_memberID, int buy_price, int buy_paytype,
			int buy_cash_receipt, String buy_date, int buy_currdelv,
			int buy_cancle, int buy_delvtype) {
		super();
		this.buy_code = buy_code;
		this.buy_prdcode = buy_prdcode;
		this.buy_prdcodeopt = buy_prdcodeopt;
		this.buy_memberID = buy_memberID;
		this.buy_price = buy_price;
		this.buy_paytype = buy_paytype;
		this.buy_cash_receipt = buy_cash_receipt;
		this.buy_date = buy_date;
		this.buy_currdelv = buy_currdelv;
		this.buy_cancle = buy_cancle;
		this.buy_delvtype = buy_delvtype;
	}
	public int getBuy_code() {
		return buy_code;
	}
	public void setBuy_code(int buy_code) {
		this.buy_code = buy_code;
	}
	public int getBuy_prdcode() {
		return buy_prdcode;
	}
	public void setBuy_prdcode(int buy_prdcode) {
		this.buy_prdcode = buy_prdcode;
	}
	public int getBuy_prdcodeopt() {
		return buy_prdcodeopt;
	}
	public void setBuy_prdcodeopt(int buy_prdcodeopt) {
		this.buy_prdcodeopt = buy_prdcodeopt;
	}
	public String getBuy_memberID() {
		return buy_memberID;
	}
	public void setBuy_memberID(String buy_memberID) {
		this.buy_memberID = buy_memberID;
	}
	public int getBuy_price() {
		return buy_price;
	}
	public void setBuy_price(int buy_price) {
		this.buy_price = buy_price;
	}
	public int getBuy_paytype() {
		return buy_paytype;
	}
	public void setBuy_paytype(int buy_paytype) {
		this.buy_paytype = buy_paytype;
	}
	public int getBuy_cash_receipt() {
		return buy_cash_receipt;
	}
	public void setBuy_cash_receipt(int buy_cash_receipt) {
		this.buy_cash_receipt = buy_cash_receipt;
	}
	public String getBuy_date() {
		return buy_date;
	}
	public void setBuy_date(String buy_date) {
		this.buy_date = buy_date;
	}
	public int getBuy_currdelv() {
		return buy_currdelv;
	}
	public void setBuy_currdelv(int buy_currdelv) {
		this.buy_currdelv = buy_currdelv;
	}
	public int getBuy_cancle() {
		return buy_cancle;
	}
	public void setBuy_cancle(int buy_cancle) {
		this.buy_cancle = buy_cancle;
	}
	public int getBuy_delvtype() {
		return buy_delvtype;
	}
	public void setBuy_delvtype(int buy_delvtype) {
		this.buy_delvtype = buy_delvtype;
	}
	
	
	
	

}
