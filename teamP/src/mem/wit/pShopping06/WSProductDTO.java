package mem.wit.pShopping06;

public class WSProductDTO {
	private int 	prd_code;		// 상품 코드
	private String 	prd_name;		// 상품 이름
	private String 	prd_modelNo;	// 제품 번호
	private String 	prd_sellerID;	// 판매자 ID
	private String 	prd_mainImg;	// 메인 이미지 소스
	private String 	prd_detailImg;	// 상세 이미지 소스
	private int 	prd_mainCate;	// 상품 대분류
	private int 	prd_subCate;	// 상품 소분류	
	private String 	prd_maker;		// 제조사 코드	
	private int 	prd_nation;		// 제조국 코드	
	private int 	prd_price;		// 판매 가격
	private int 	prd_hasOpt;	// 옵션 코드(옵션이 없으면 0)	
	private int 	prd_buyMin;		// 최소 구매 수량
	private int 	prd_buyMax;		// 최대 구매 수량
	private int 	prd_remain;		// 재고 수량
	private String 	prd_launchDay;	// 판매 개시일시	
	private int 	prd_stop;			// 판매 중단 여부
	
	
	public WSProductDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public WSProductDTO(int prd_code, String prd_name, String prd_modelNo,
			String prd_sellerID, String prd_mainImg, String prd_detailImg,
			int prd_mainCate, int prd_subCate, String prd_maker, int prd_nation,
			int prd_price, int prd_hasOpt, int prd_buyMin, int prd_buyMax,
			int prd_remain, String prd_launchDay, int prd_stop,
			int prd_reviewCode, int prd_qnaCode, int prd_buyCode) {
		super();
		this.prd_code = prd_code;
		this.prd_name = prd_name;
		this.prd_modelNo = prd_modelNo;
		this.prd_sellerID = prd_sellerID;
		this.prd_mainImg = prd_mainImg;
		this.prd_detailImg = prd_detailImg;
		this.prd_mainCate = prd_mainCate;
		this.prd_subCate = prd_subCate;
		this.prd_maker = prd_maker;
		this.prd_nation = prd_nation;
		this.prd_price = prd_price;
		this.prd_hasOpt = prd_hasOpt;
		this.prd_buyMin = prd_buyMin;
		this.prd_buyMax = prd_buyMax;
		this.prd_remain = prd_remain;
		this.prd_launchDay = prd_launchDay;
		this.prd_stop = prd_stop;
	}




	//------ Getters and Setters ----------
		
	
	public int getPrd_code() {
		return prd_code;
	}
	public void setPrd_code(int prd_code) {
		this.prd_code = prd_code;
	}
	public String getPrd_name() {
		return prd_name;
	}
	public void setPrd_name(String prd_name) {
		this.prd_name = prd_name;
	}
	public String getPrd_modelNo() {
		return prd_modelNo;
	}
	public void setPrd_modelNo(String prd_modelNo) {
		this.prd_modelNo = prd_modelNo;
	}
	public String getPrd_sellerID() {
		return prd_sellerID;
	}
	public void setPrd_sellerID(String prd_sellerID) {
		this.prd_sellerID = prd_sellerID;
	}
	public String getPrd_mainImg() {
		return prd_mainImg;
	}
	public void setPrd_mainImg(String prd_mainImg) {
		this.prd_mainImg = prd_mainImg;
	}
	public String getPrd_detailImg() {
		return prd_detailImg;
	}
	public void setPrd_detailImg(String prd_detailImg) {
		this.prd_detailImg = prd_detailImg;
	}
	public int getPrd_mainCate() {
		return prd_mainCate;
	}
	public void setPrd_mainCate(int prd_mainCate) {
		this.prd_mainCate = prd_mainCate;
	}
	public int getPrd_subCate() {
		return prd_subCate;
	}
	public void setPrd_subCate(int prd_subCate) {
		this.prd_subCate = prd_subCate;
	}
	public String getPrd_maker() {
		return prd_maker;
	}
	public void setPrd_maker(String prd_maker) {
		this.prd_maker = prd_maker;
	}
	public int getPrd_nation() {
		return prd_nation;
	}
	public void setPrd_nation(int prd_nation) {
		this.prd_nation = prd_nation;
	}
	public int getPrd_price() {
		return prd_price;
	}
	public void setPrd_price(int prd_price) {
		this.prd_price = prd_price;
	}
	public int getPrd_hasOpt() {
		return prd_hasOpt;
	}
	public void setPrd_hasOpt(int prd_hasOpt) {
		this.prd_hasOpt = prd_hasOpt;
	}
	public int getPrd_buyMin() {
		return prd_buyMin;
	}
	public void setPrd_buyMin(int prd_buyMin) {
		this.prd_buyMin = prd_buyMin;
	}
	public int getPrd_buyMax() {
		return prd_buyMax;
	}
	public void setPrd_buyMax(int prd_buyMax) {
		this.prd_buyMax = prd_buyMax;
	}
	public int getPrd_remain() {
		return prd_remain;
	}
	public void setPrd_remain(int prd_remain) {
		this.prd_remain = prd_remain;
	}
	public String getPrd_launchDay() {
		return prd_launchDay;
	}
	public void setPrd_launchDay(String prd_launchDay) {
		this.prd_launchDay = prd_launchDay;
	}
	public int getPrd_stop() {
		return prd_stop;
	}
	public void setPrd_stop(int prd_stop) {
		this.prd_stop = prd_stop;
	}

}
