package mem.wit.study.lecture;

public class LecScheduleParam {
	int lsId;
	int alId;
	int lsCost;
	int lsMax;
	int lrCode;
	String lsDescription;
	String lsFromDate;
	String lsToDate;
	int lsCode;		// 강의 상태

	int slCode;
	int lcCode;
	int sbjCode;
	int egCode;
	int tbCode;

	int[] ltCodeArray = new int[7];

	public int getLsId() {
		return lsId;
	}

	public void setLsId(int lsId) {
		this.lsId = lsId;
	}

	public int getAlId() {
		return alId;
	}

	public void setAlId(int alId) {
		this.alId = alId;
	}

	public int getLsCost() {
		return lsCost;
	}

	public void setLsCost(int lsCost) {
		this.lsCost = lsCost;
	}

	public int getLsMax() {
		return lsMax;
	}

	public void setLsMax(int lsMax) {
		this.lsMax = lsMax;
	}

	public int getLrCode() {
		return lrCode;
	}

	public void setLrCode(int lrCode) {
		this.lrCode = lrCode;
	}

	public String getLsDescription() {
		return lsDescription;
	}

	public void setLsDescription(String lsDescription) {
		this.lsDescription = lsDescription;
	}

	public String getLsFromDate() {
		return lsFromDate;
	}

	public void setLsFromDate(String lsFromDate) {
		this.lsFromDate = lsFromDate;
	}

	public String getLsToDate() {
		return lsToDate;
	}

	public void setLsToDate(String lsToDate) {
		this.lsToDate = lsToDate;
	}

	public int getLsCode() {
		return lsCode;
	}

	public void setLsCode(int lsCode) {
		this.lsCode = lsCode;
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

	public int[] getLtCodeArray() {
		return ltCodeArray;
	}

	public void setLtCodeArray(int[] ltCodeArray) {
		this.ltCodeArray = ltCodeArray;
	}
	
}
