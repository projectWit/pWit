package mem.wit.accounting;

public class ACC_CustomersDTO {
	private int cCode;
	private String cName;
	private String cPhone;
	private int cZipcode;
	private String cAddr;
	private String cType;

	public ACC_CustomersDTO() {
		super();
	}	

	public ACC_CustomersDTO(int cCode, String cName, String cPhone,
			int cZipcode, String cAddr, String cType) {
		super();
		this.cCode = cCode;
		this.cName = cName;
		this.cPhone = cPhone;
		this.cZipcode = cZipcode;
		this.cAddr = cAddr;
		this.cType = cType;
	}

	public int getcCode() {	return cCode;	}
	public String getcName() {return cName;}
	public String getcPhone() {return cPhone;}
	public int getcZipcode() {return cZipcode;}
	public String getcAddr() {return cAddr;}
	public String getcType() {	return cType;}

	public void setcCode(int cCode) {	this.cCode = cCode;}
	public void setcName(String cName) {this.cName = cName;}
	public void setcPhone(String cPhone) {this.cPhone = cPhone;}
	public void setcZipcode(int cZipcode) {this.cZipcode = cZipcode;}
	public void setcAddr(String cAddr) {this.cAddr = cAddr;}
	public void setcType(String cType) {this.cType = cType;}	

}