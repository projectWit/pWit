package mem.wit.accounting;

public class ACC_FixedAssetsDTO {
	private int fCode;
	private String fName;
	private String fDate;
	private int fAmounts;
	private int fQuantity;
	private int f_sCode;
	private String fContents;
	private int f_eCode;
	private String eId;
	private int fMonths;
	
	public ACC_FixedAssetsDTO() {
		super();
	}
	
	public ACC_FixedAssetsDTO(int fCode, String fName, String fDate,
			int fAmounts, int fQuantity, int f_sCode, String fContents,
			int f_eCode, String eId, int fMonths) {
		super();
		this.fCode = fCode;
		this.fName = fName;
		this.fDate = fDate;
		this.fAmounts = fAmounts;
		this.fQuantity = fQuantity;
		this.f_sCode = f_sCode;
		this.fContents = fContents;
		this.f_eCode = f_eCode;
		this.eId = eId;
		this.fMonths = fMonths;
	}
	
	public int getfCode() {	return fCode;}
	public String getfName() {return fName;}
	public String getfDate() {	return fDate;}
	public int getfAmounts() {return fAmounts;}
	public int getfQuantity() {return fQuantity;}
	public int getF_sCode() {return f_sCode;}
	public String getfContents() {return fContents;}
	public int getF_eCode() {return f_eCode;}
	public String geteId() {return eId;}
	public int getfMonths() {return fMonths;}
	
	public void setfCode(int fCode) {this.fCode = fCode;}
	public void setfName(String fName) {this.fName = fName;}
	public void setfDate(String fDate) {this.fDate = fDate;}
	public void setfAmounts(int fAmounts) {this.fAmounts = fAmounts;}
	public void setfQuantity(int fQuantity) {this.fQuantity = fQuantity;}
	public void setF_sCode(int f_sCode) {this.f_sCode = f_sCode;}
	public void setfContents(String fContents) {this.fContents = fContents;}
	public void setF_eCode(int f_eCode) {this.f_eCode = f_eCode;}
	public void seteId(String eId) {this.eId = eId;}
	public void setfMonths(int fMonths) {this.fMonths = fMonths;}	
}
