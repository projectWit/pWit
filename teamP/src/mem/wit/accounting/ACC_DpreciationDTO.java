package mem.wit.accounting;

public class ACC_DpreciationDTO {
	private int eCode;
	private String eName;
	private String eContents;
	
	public ACC_DpreciationDTO() {
		super();
	}

	public ACC_DpreciationDTO(int eCode, String eName, String eContents) {
		super();
		this.eCode = eCode;
		this.eName = eName;
		this.eContents = eContents;
	}

	public int geteCode() {return eCode;}
	public String geteName() {return eName;}
	public String geteContents() {return eContents;}

	public void seteCode(int eCode) {	this.eCode = eCode;}
	public void seteName(String eName) {this.eName = eName;}
	public void seteContents(String eContents) {this.eContents = eContents;}	
}
