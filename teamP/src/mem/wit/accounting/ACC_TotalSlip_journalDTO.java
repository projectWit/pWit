package mem.wit.accounting;

public class ACC_TotalSlip_journalDTO {
	private int tsj_Code;
	private int tsj_Amounts;
	private int tsj_aCode1;
	private int tsj_aCode2;
	private String tsj_aName1;	
	private String tsj_aName2;
	private double tsj_tRate;
	private String tsj_tName;
	private String tsj_pName;
	private String tsj_cName;
	private String tsj_baName;
	private String tsj_Contents;
	private String tsj_Date;
	private String tsj_iDate;
	
	public ACC_TotalSlip_journalDTO() {
		super();
	}

	public ACC_TotalSlip_journalDTO(int tsj_Code, int tsj_Amounts,
			int tsj_aCode1, int tsj_aCode2, String tsj_aName1,
			String tsj_aName2, double tsj_tRate, String tsj_tName,
			String tsj_pName, String tsj_cName, String tsj_baName,
			String tsj_Contents, String tsj_Date, String tsj_iDate) {
		super();
		this.tsj_Code = tsj_Code;
		this.tsj_Amounts = tsj_Amounts;
		this.tsj_aCode1 = tsj_aCode1;
		this.tsj_aCode2 = tsj_aCode2;
		this.tsj_aName1 = tsj_aName1;
		this.tsj_aName2 = tsj_aName2;
		this.tsj_tRate = tsj_tRate;
		this.tsj_tName = tsj_tName;
		this.tsj_pName = tsj_pName;
		this.tsj_cName = tsj_cName;
		this.tsj_baName = tsj_baName;
		this.tsj_Contents = tsj_Contents;
		this.tsj_Date = tsj_Date;
		this.tsj_iDate = tsj_iDate;
	}

	public int getTsj_Code() {return tsj_Code;}
	public int getTsj_Amounts() {return tsj_Amounts;}
	public int getTsj_aCode1() {return tsj_aCode1;}
	public int getTsj_aCode2() {return tsj_aCode2;}
	public String getTsj_aName1() {return tsj_aName1;}
	public String getTsj_aName2() {return tsj_aName2;}
	public double getTsj_tRate() {return tsj_tRate;}
	public String getTsj_tName() {return tsj_tName;}
	public String getTsj_pName() {return tsj_pName;}
	public String getTsj_cName() {return tsj_cName;}
	public String getTsj_baName() {return tsj_baName;}
	public String getTsj_Contents() {return tsj_Contents;}
	public String getTsj_Date() {return tsj_Date;}
	public String getTsj_iDate() {return tsj_iDate;}

	public void setTsj_Code(int tsj_Code) {this.tsj_Code = tsj_Code;}
	public void setTsj_Amounts(int tsj_Amounts) {this.tsj_Amounts = tsj_Amounts;}
	public void setTsj_aCode1(int tsj_aCode1) {this.tsj_aCode1 = tsj_aCode1;}
	public void setTsj_aCode2(int tsj_aCode2) {this.tsj_aCode2 = tsj_aCode2;}
	public void setTsj_aName1(String tsj_aName1) {this.tsj_aName1 = tsj_aName1;}
	public void setTsj_aName2(String tsj_aName2) {this.tsj_aName2 = tsj_aName2;}
	public void setTsj_tRate(double tsj_tRate) {this.tsj_tRate = tsj_tRate;}
	public void setTsj_tName(String tsj_tName) {this.tsj_tName = tsj_tName;}
	public void setTsj_pName(String tsj_pName) {this.tsj_pName = tsj_pName;}
	public void setTsj_cName(String tsj_cName) {this.tsj_cName = tsj_cName;}
	public void setTsj_baName(String tsj_baName) {this.tsj_baName = tsj_baName;}
	public void setTsj_Contents(String tsj_Contents) {this.tsj_Contents = tsj_Contents;}
	public void setTsj_Date(String tsj_Date) {this.tsj_Date = tsj_Date;}
	public void setTsj_iDate(String tsj_iDate) {this.tsj_iDate = tsj_iDate;}	
	
}
