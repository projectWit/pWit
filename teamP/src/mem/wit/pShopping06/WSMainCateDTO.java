package mem.wit.pShopping06;

public class WSMainCateDTO {
	private int		mct_code;
	private String 	mct_name;
	
	
	
	public WSMainCateDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public WSMainCateDTO(int mct_code, String mct_name) {
		super();
		this.mct_code = mct_code;
		this.mct_name = mct_name;
	}
	public int getMct_code() {
		return mct_code;
	}
	public void setMct_code(int mct_code) {
		this.mct_code = mct_code;
	}
	public String getMct_name() {
		return mct_name;
	}
	public void setMct_name(String mct_name) {
		this.mct_name = mct_name;
	}
	
	
	
	

}
