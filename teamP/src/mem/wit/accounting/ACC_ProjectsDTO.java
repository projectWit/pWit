package mem.wit.accounting;

public class ACC_ProjectsDTO {
	private int pCode;
	private int p_dCode;
	private String pName;
	private String pContents;
	private int pBudget;
	private String eId;
	
	public ACC_ProjectsDTO() {
		super();
	}
	
	public ACC_ProjectsDTO(int pCode, int p_dCode, String pName, String pContents,
			int pBudget, String eId) {
		super();
		this.pCode = pCode;
		this.p_dCode = p_dCode;
		this.pName = pName;
		this.pContents = pContents;
		this.pBudget = pBudget;
		this.eId = eId;
	}
	
	public int getpCode() {return pCode;}
	public int getP_dCode() {	return p_dCode;	}
	public String getpName() {return pName;}
	public String getpContents() {return pContents;}
	public int getpBudget() {return pBudget;}
	public String geteId() {return eId;}
	
	public void setpCode(int pCode) {	this.pCode = pCode;}
	public void setP_dCode(int p_dCode) {this.p_dCode = p_dCode;}
	public void setpName(String pName) {this.pName = pName;}
	public void setpContents(String pContents) {this.pContents = pContents;}
	public void setpBudget(int pBudget) {this.pBudget = pBudget;}
	public void seteId(String eId) {this.eId = eId;}	
		
}
