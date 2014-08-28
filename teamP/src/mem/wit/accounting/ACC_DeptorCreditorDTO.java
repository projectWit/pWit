package mem.wit.accounting;

public class ACC_DeptorCreditorDTO {
 private int dcCode;
 private String dcName;
 private String dcContents;
 
public ACC_DeptorCreditorDTO() {
	super();
}

public ACC_DeptorCreditorDTO(int dcCode, String dcContents, String dcName) {
	super();
	this.dcCode = dcCode;
	this.dcContents = dcContents;
	this.dcName = dcName;
}

public int getDcCode() {return dcCode;}
public String getDcContents() {	return dcContents;}
public String getDcName() {return dcName;}

public void setDcCode(int dcCode) {this.dcCode = dcCode;}
public void setDcContents(String dcContents) {this.dcContents = dcContents;}
public void setDcName(String dcName) {this.dcName = dcName;} 
}
