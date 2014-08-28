package mem.wit.accounting;

public class ACC_TaxDTO {
	private int tCode;
	private String tName;
	private double tRate;
	private String tContents;
	
	public ACC_TaxDTO() {
		super();
	}

	public ACC_TaxDTO(int tCode, String tName, String tContents, double tRate) {
		super();
		this.tCode = tCode;
		this.tName = tName;
		this.tContents = tContents;
		this.tRate = tRate;		
	}

	public int gettCode() {	return tCode;}
	public String gettName() {return tName;}
	public String gettContents() {return tContents;}
	public double gettRate() {	return tRate;}
	

	public void settCode(int tCode) {this.tCode = tCode;}
	public void settName(String tName) {this.tName = tName;}
	public void settContents(String tContents) {this.tContents = tContents;}
	public void settRate(double tRate) {this.tRate = tRate;}	
	
}
