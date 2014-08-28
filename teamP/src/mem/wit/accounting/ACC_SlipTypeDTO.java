package mem.wit.accounting;

public class ACC_SlipTypeDTO {
	private int stCode;
	private String stName;
	private String stContents;
	
	public ACC_SlipTypeDTO() {
		super();
	}

	public ACC_SlipTypeDTO(int stCode, String stName, String stContents) {
		super();
		this.stCode = stCode;
		this.stName = stName;
		this.stContents = stContents;
	}

	public int getStCode() {return stCode;}
	public String getStName() {return stName;}
	public String getStContents() {return stContents;}
	
	public void setStCode(int stCode) {this.stCode = stCode;}
	public void setStName(String stName) {this.stName = stName;}
	public void setStContents(String stContents) {this.stContents = stContents;}	
	
}
