package mem.wit.Insa;

public class ClkDTO {
	private int cSeq, cCd;
	private String eId, cDate, cTime, cEtc;
	public int getcSeq() {
		return cSeq;
	}
	public void setcSeq(int cSeq) {
		this.cSeq = cSeq;
	}
	public int getcCd() {
		return cCd;
	}
	public void setcCd(int cCd) {
		this.cCd = cCd;
	}
	public String geteId() {
		return eId;
	}
	public void seteId(String eId) {
		this.eId = eId;
	}
	public String getcDate() {
		return cDate;
	}
	public void setcDate(String cDate) {
		this.cDate = cDate;
	}
	public String getcTime() {
		return cTime;
	}
	public void setcTime(String cTime) {
		this.cTime = cTime;
	}
	public String getcEtc() {
		return cEtc;
	}
	public void setcEtc(String cEtc) {
		this.cEtc = cEtc;
	}
	public ClkDTO(int cSeq, int cCd, String eId, String cDate, String cTime,
			String cEtc) {
		super();
		this.cSeq = cSeq;
		this.cCd = cCd;
		this.eId = eId;
		this.cDate = cDate;
		this.cTime = cTime;
		this.cEtc = cEtc;
	}
	
	public ClkDTO(String eId, String cDate, String cTime) {
		super();
		this.eId = eId;
		this.cDate = cDate;
		this.cTime = cTime;
	}
	public ClkDTO() {
		super();
	}
	
}
