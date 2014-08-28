package mem.wit.accounting;

public class ACC_StateDTO {
	private int sCode;
	private String sName;
	private String sContents;
	
	public ACC_StateDTO() {
		super();
	}

	public ACC_StateDTO(int sCode, String sName, String sContents) {
		super();
		this.sCode = sCode;
		this.sName = sName;
		this.sContents = sContents;
	}

	public int getsCode() {	return sCode;	}
	public String getsName() {return sName;}
	public String getsContents() {return sContents;}

	public void setsCode(int sCode) {this.sCode = sCode;}
	public void setsName(String sName) {this.sName = sName;}
	public void setsContents(String sContents) {this.sContents = sContents;}	
}
