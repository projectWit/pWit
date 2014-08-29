package mem.wit.pShopping06;

public class WSBasketDTO {
	private String	bsk_memID;			// 회원 ID
	private int		bsk_prdcode;		// 장바구니에 담길 상품 코드
	private int		bsk_prdcodeopt;		// 장바구니에 담길 상품의 옵션코드
	private int		bsk_quanty;			// 장바구니에 찜한 상품의 개수
	
	
	public WSBasketDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public WSBasketDTO(String bsk_memID, int bsk_prdcode, int bsk_prdcodeopt,
			int bsk_quanty) {
		super();
		this.bsk_memID = bsk_memID;
		this.bsk_prdcode = bsk_prdcode;
		this.bsk_prdcodeopt = bsk_prdcodeopt;
		this.bsk_quanty = bsk_quanty;
	}
	public String getBsk_memID() {
		return bsk_memID;
	}
	public void setBsk_memID(String bsk_memID) {
		this.bsk_memID = bsk_memID;
	}
	public int getBsk_prdcode() {
		return bsk_prdcode;
	}
	public void setBsk_prdcode(int bsk_prdcode) {
		this.bsk_prdcode = bsk_prdcode;
	}
	public int getBsk_prdcodeopt() {
		return bsk_prdcodeopt;
	}
	public void setBsk_prdcodeopt(int bsk_prdcodeopt) {
		this.bsk_prdcodeopt = bsk_prdcodeopt;
	}
	public int getBsk_quanty() {
		return bsk_quanty;
	}
	public void setBsk_quanty(int bsk_quanty) {
		this.bsk_quanty = bsk_quanty;
	}
	

}
