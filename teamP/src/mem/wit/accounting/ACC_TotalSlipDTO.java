package mem.wit.accounting;

public class ACC_TotalSlipDTO {
	private int tsCode;
	private String tsDate;
	private int ts_stCode;
	private int ts_aCode;
	private int ts_pCode;
	private int ts_cCode;
	private int tsAmounts;
	private int ts_tCode;
	private int tsTax;
	private String tsContents;
	private int ts_baCode;
	private String tsiDate;
	private String eId;
	private int tsc_cCode;
	private int ts_saCode;
	
	private int aCode;
	private String aName;
	private String aContents;
	
	private int pCode;
	private int p_dCode;
	private String pName;
	private String pContents;
	private int pBudget;
	
	private int cCode;
	private String cName;
	private String cPhone;
	private int cZipcode;
	private String cAddr;
	private String cType;
	
	private int tCode;
	private String tName;
	private double tRate;
	private String tContents;
	
	private int baCode;
	private String baName;
	private int baAmounts;
	private String baContents;
	
	
	
	public ACC_TotalSlipDTO() {
		super();
	}

	public ACC_TotalSlipDTO(String tsDate, int ts_stCode,
			int ts_aCode, int ts_pCode, int ts_cCode, int tsAmounts,
			int ts_tCode, int tsTax, String tsContents, int ts_baCode,
			int tsc_cCode, int ts_saCode) {
		super();
		this.tsDate = tsDate;
		this.ts_stCode = ts_stCode;
		this.ts_aCode = ts_aCode;
		this.ts_pCode = ts_pCode;
		this.ts_cCode = ts_cCode;
		this.tsAmounts = tsAmounts;
		this.ts_tCode = ts_tCode;
		this.tsTax = tsTax;
		this.tsContents = tsContents;
		this.ts_baCode = ts_baCode;
		this.ts_saCode = ts_saCode;
	}

	public int getTsCode() {return tsCode;}
	public String getTsDate() {return tsDate;}
	public int getTs_stCode() {return ts_stCode;}
	public int getTs_aCode() {return ts_aCode;}
	public int getTs_pCode() {return ts_pCode;}
	public int getTs_cCode() {return ts_cCode;}
	public int getTsAmounts() {return tsAmounts;}
	public int getTs_tCode() {return ts_tCode;}
	public int getTsTax() {return tsTax;}
	public String getTsContents() {return tsContents;}
	public int getTs_baCode() {return ts_baCode;}
	public String getTsiDate() {return tsiDate;}
	public String geteId() {return eId;}
	public int getTsc_cCode() {return tsc_cCode;}
	public int getTs_saCode() {return ts_saCode;}
	
	public int getaCode() {return aCode;}
	public String getaName() {return aName;}
	public String getaContents() {return aContents;}
	
	public int getpCode() {return pCode;}
	public int getP_dCode() {return p_dCode;}
	public String getpName() {return pName;}
	public String getpContents() {return pContents;}
	public int getpBudget() {return pBudget;}
	
	public int getcCode() {return cCode;}
	public String getcName() {return cName;}
	public String getcPhone() {return cPhone;}
	public int getcZipcode() {return cZipcode;}
	public String getcAddr() {return cAddr;}
	public String getcType() {return cType;}
	
	public int gettCode() {return tCode;}
	public String gettName() {return tName;}
	public double gettRate() {return tRate;}
	public String gettContents() {return tContents;}
	public int getBaCode() {return baCode;}
	public String getBaName() {return baName;}
	public int getBaAmounts() {return baAmounts;}
	public String getBaContents() {	return baContents;}
	
	public void setTsCode(int tsCode) {this.tsCode = tsCode;}
	public void setTsDate(String tsDate) {this.tsDate = tsDate;}
	public void setTs_stCode(int ts_stCode) {this.ts_stCode = ts_stCode;}
	public void setTs_aCode(int ts_aCode) {this.ts_aCode = ts_aCode;}
	public void setTs_pCode(int ts_pCode) {this.ts_pCode = ts_pCode;}
	public void setTs_cCode(int ts_cCode) {this.ts_cCode = ts_cCode;}
	public void setTsAmounts(int tsAmounts) {this.tsAmounts = tsAmounts;}
	public void setTs_tCode(int ts_tCode) {this.ts_tCode = ts_tCode;}
	public void setTsTax(int tsTax) {this.tsTax = tsTax;}
	public void setTsContents(String tsContents) {this.tsContents = tsContents;}
	public void setTs_baCode(int ts_baCode) {this.ts_baCode = ts_baCode;}
	public void setTsiDate(String tsiDate) {this.tsiDate = tsiDate;}
	public void seteId(String eId) {this.eId = eId;}
	public void setTsc_cCode(int tsc_cCode) {this.tsc_cCode = tsc_cCode;}
	public void setTs_saCode(int ts_saCode) {this.ts_saCode = ts_saCode;}
	public void setaCode(int aCode) {this.aCode = aCode;}
	public void setaName(String aName) {this.aName = aName;}
	public void setaContents(String aContents) {this.aContents = aContents;}
	public void setpCode(int pCode) {this.pCode = pCode;}
	public void setP_dCode(int p_dCode) {this.p_dCode = p_dCode;}
	public void setpName(String pName) {this.pName = pName;}
	public void setpContents(String pContents) {this.pContents = pContents;}
	public void setpBudget(int pBudget) {this.pBudget = pBudget;}
	public void setcCode(int cCode) {this.cCode = cCode;}	
	public void setcName(String cName) {this.cName = cName;}
	public void setcPhone(String cPhone) {this.cPhone = cPhone;}
	public void setcZipcode(int cZipcode) {this.cZipcode = cZipcode;}
	public void setcAddr(String cAddr) {this.cAddr = cAddr;}
	public void setcType(String cType) {this.cType = cType;}
	public void settCode(int tCode) {this.tCode = tCode;}
	public void settName(String tName) {this.tName = tName;}
	public void settRate(double tRate) {this.tRate = tRate;}
	public void settContents(String tContents) {this.tContents = tContents;}
	public void setBaCode(int baCode) {this.baCode = baCode;}
	public void setBaName(String baName) {this.baName = baName;}
	public void setBaAmounts(int baAmounts) {this.baAmounts = baAmounts;}
	public void setBaContents(String baContents) {this.baContents = baContents;}	
}
