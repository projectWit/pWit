package mem.wit.accounting;

public class ACC_AccountsDTO {
private int aCode;
private String aName;
private String aContents;
private String eId;

public ACC_AccountsDTO() {
	super();
}

public ACC_AccountsDTO(String aName, String aContents,
		String eId) {
	super();	
	this.aName = aName;
	this.aContents = aContents;
	this.eId = eId;
}

public int getaCode() {return aCode;}
public String getaName() {return aName;}
public String getaContents() {return aContents;}
public String geteId() {	return eId;}

public void setaCode(int aCode) {this.aCode = aCode;}
public void setaName(String aName) {this.aName = aName;}
public void setaContents(String aContents) {this.aContents = aContents;}
public void seteId(String eId) {this.eId = eId;}
}
