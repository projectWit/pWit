package mem.wit.study.lecture;

public class LecDay {
	int dId;
	int lsId;		// 강의스케줄아이디
	int dCode;	// 강의요일코드
	String dName;
	int[] ltCodeArray = new int[7];
	int ltCode;	// 강의시간코드
	String ltFromTime;
	String ltToTime;
	
	public int getdId() {
		return dId;
	}
	public void setdId(int dId) {
		this.dId = dId;
	}
	public int getLsId() {
		return lsId;
	}
	public void setLsId(int lsId) {
		this.lsId = lsId;
	}
	public int getdCode() {
		return dCode;
	}
	public void setdCode(int dCode) {
		this.dCode = dCode;
	}
	public String getdName() {
		return dName;
	}
	public void setdName(String dName) {
		this.dName = dName;
	}
	public int[] getLtCodeArray() {
		return ltCodeArray;
	}
	public void setLtCodeArray(int[] ltCodeArray) {
		this.ltCodeArray = ltCodeArray;
	}
	public int getLtCode() {
		return ltCode;
	}
	public void setLtCode(int ltCode) {
		this.ltCode = ltCode;
	}
	public String getLtFromTime() {
		return ltFromTime;
	}
	public void setLtFromTime(String ltFromTime) {
		this.ltFromTime = ltFromTime;
	}
	public String getLtToTime() {
		return ltToTime;
	}
	public void setLtToTime(String ltToTime) {
		this.ltToTime = ltToTime;
	}
	
}
