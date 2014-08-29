package mem.wit.pShopping06;

public class WSSubCateDTO {
	private int		sct_code;
	private String 	sct_name;
	private int 	sct_mctCode;
	
	
	public WSSubCateDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public WSSubCateDTO(int sct_code, String sct_name, int sct_mctCode) {
		super();
		this.sct_code = sct_code;
		this.sct_name = sct_name;
		this.sct_mctCode = sct_mctCode;
	}
	public int getSct_code() {
		return sct_code;
	}
	public void setSct_code(int sct_code) {
		this.sct_code = sct_code;
	}
	public String getSct_name() {
		return sct_name;
	}
	public void setSct_name(String sct_name) {
		this.sct_name = sct_name;
	}
	public int getSct_mctCode() {
		return sct_mctCode;
	}
	public void setSct_mctCode(int sct_mctCode) {
		this.sct_mctCode = sct_mctCode;
	}
	

}
