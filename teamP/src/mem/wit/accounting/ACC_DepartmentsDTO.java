package mem.wit.accounting;

public class ACC_DepartmentsDTO {
 private int dCode;
 private String dName;
 private String dContents;
 
public ACC_DepartmentsDTO() {
	super();
}

public ACC_DepartmentsDTO(int dCode, String dName, String dContents) {
	super();
	this.dCode = dCode;
	this.dName = dName;
	this.dContents = dContents;
}

public int getdCode() {return dCode;}
public String getdName() {return dName;}
public String getdContents() {return dContents;}

public void setdCode(int dCode) {	this.dCode = dCode;}
public void setdName(String dName) {this.dName = dName;}
public void setdContents(String dContents) {this.dContents = dContents;}
 
}
