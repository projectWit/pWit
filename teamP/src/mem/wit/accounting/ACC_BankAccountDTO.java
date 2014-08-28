package mem.wit.accounting;

public class ACC_BankAccountDTO {
 private int baCode;
 private String baName;
 private int baAmounts;
 private String baContents;
 
public ACC_BankAccountDTO() {
	super();
}

public ACC_BankAccountDTO(int baCode, String baName, int baAmounts,
		String baContents) {
	super();
	this.baCode = baCode;
	this.baName = baName;
	this.baAmounts = baAmounts;
	this.baContents = baContents;
}

public int getBaCode() {return baCode;}
public String getBaName() {return baName;}
public int getBaAmounts() {return baAmounts;}
public String getBaContents() {	return baContents;}

public void setBaCode(int baCode) {this.baCode = baCode;}
public void setBaName(String baName) {this.baName = baName;}
public void setBaAmounts(int baAmounts) {this.baAmounts = baAmounts;}
public void setBaContents(String baContents) {this.baContents = baContents;} 
}
