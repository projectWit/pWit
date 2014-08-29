package mem.wit.study.lecture;

public class Lecture {
	int alId;
	int slCode;		// SuppLec
	int lcCode;		// LecCate
	String alName;
	int tId;			// Teacher
	int sbjCode;	// Subject
	int egCode;		// ExamGrade
	int tbCode;		// Textbook
	String alDescription;
	
	public int getAlId() {
		return alId;
	}
	public void setAlId(int alId) {
		this.alId = alId;
	}
	public int getSlCode() {
		return slCode;
	}
	public void setSlCode(int slCode) {
		this.slCode = slCode;
	}
	public int getLcCode() {
		return lcCode;
	}
	public void setLcCode(int lcCode) {
		this.lcCode = lcCode;
	}
	public String getAlName() {
		return alName;
	}
	public void setAlName(String alName) {
		this.alName = alName;
	}
	public int gettId() {
		return tId;
	}
	public void settId(int tId) {
		this.tId = tId;
	}
	public int getSbjCode() {
		return sbjCode;
	}
	public void setSbjCode(int sbjCode) {
		this.sbjCode = sbjCode;
	}
	public int getEgCode() {
		return egCode;
	}
	public void setEgCode(int egCode) {
		this.egCode = egCode;
	}
	public int getTbCode() {
		return tbCode;
	}
	public void setTbCode(int tbCode) {
		this.tbCode = tbCode;
	}
	public String getAlDescription() {
		return alDescription;
	}
	public void setAlDescription(String alDescription) {
		this.alDescription = alDescription;
	}
	
}
