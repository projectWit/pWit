package mem.wit.Insa;

public class DocTDTO {
	private int tSeq, tAppr;
	private String eId, eCoId1, eCoId2, eCoId3, tDate, tFromDt, tToDt, tVisit, tEtc;
	public int gettSeq() {
		return tSeq;
	}
	public void settSeq(int tSeq) {
		this.tSeq = tSeq;
	}
	public int gettAppr() {
		return tAppr;
	}
	public void settAppr(int tAppr) {
		this.tAppr = tAppr;
	}
	public String geteId() {
		return eId;
	}
	public void seteId(String eId) {
		this.eId = eId;
	}
	public String geteCoId1() {
		return eCoId1;
	}
	public void seteCoId1(String eCoId1) {
		this.eCoId1 = eCoId1;
	}
	public String geteCoId2() {
		return eCoId2;
	}
	public void seteCoId2(String eCoId2) {
		this.eCoId2 = eCoId2;
	}
	public String geteCoId3() {
		return eCoId3;
	}
	public void seteCoId3(String eCoId3) {
		this.eCoId3 = eCoId3;
	}
	public String gettDate() {
		return tDate;
	}
	public void settDate(String tDate) {
		this.tDate = tDate;
	}
	public String gettFromDt() {
		return tFromDt;
	}
	public void settFromDt(String tFromDt) {
		this.tFromDt = tFromDt;
	}
	public String gettToDt() {
		return tToDt;
	}
	public void settToDt(String tToDt) {
		this.tToDt = tToDt;
	}
	public String gettVisit() {
		return tVisit;
	}
	public void settVisit(String tVisit) {
		this.tVisit = tVisit;
	}
	public String gettEtc() {
		return tEtc;
	}
	public void settEtc(String tEtc) {
		this.tEtc = tEtc;
	}
	public DocTDTO(int tSeq, int tAppr, String eId, String eCoId1,
			String eCoId2, String eCoId3, String tDate, String tFromDt,
			String tToDt, String tVisit, String tEtc) {
		super();
		this.tSeq = tSeq;
		this.tAppr = tAppr;
		this.eId = eId;
		this.eCoId1 = eCoId1;
		this.eCoId2 = eCoId2;
		this.eCoId3 = eCoId3;
		this.tDate = tDate;
		this.tFromDt = tFromDt;
		this.tToDt = tToDt;
		this.tVisit = tVisit;
		this.tEtc = tEtc;
	}
	public DocTDTO() {
		super();
	}	
}
