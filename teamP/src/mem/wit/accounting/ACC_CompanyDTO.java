package mem.wit.accounting;

public class ACC_CompanyDTO {
	private int cCode;
	private String cName;
	private int cZipcode;
	private String cAddr;
	private String cPhone;
	private String cType;
	private String cContents;
	
	public ACC_CompanyDTO() {
		super();
	}

	public ACC_CompanyDTO(int cCode, String cName, int cZipcode, String cAddr,
			String cPhone, String cType, String cContents) {
		super();
		this.cCode = cCode;
		this.cName = cName;
		this.cZipcode = cZipcode;
		this.cAddr = cAddr;
		this.cPhone = cPhone;
		this.cType = cType;
		this.cContents = cContents;
	}

	public int getcCode() {return cCode;}
	public String getcName() {return cName;}
	public int getcZipcode() {return cZipcode;}
	public String getcAddr() {return cAddr;}
	public String getcPhone() {return cPhone;}
	public String getcType() {	return cType;}
	public String getcContents() {return cContents;}

	public void setcCode(int cCode) {this.cCode = cCode;}
	public void setcName(String cName) {this.cName = cName;}
	public void setcZipcode(int cZipcode) {this.cZipcode = cZipcode;}
	public void setcAddr(String cAddr) {this.cAddr = cAddr;}
	public void setcPhone(String cPhone) {this.cPhone = cPhone;}
	public void setcType(String cType) {this.cType = cType;}
	public void setcContents(String cContents) {this.cContents = cContents;}	
}
