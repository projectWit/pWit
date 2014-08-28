package mem.wit.Insa;

public class DocPDTO {
	private int pSeq, pAppr;
	private String pDate, pFromDt, pToDt, pJob, pEtc, eId;
	public int getpSeq() {
		return pSeq;
	}
	public void setpSeq(int pSeq) {
		this.pSeq = pSeq;
	}
	public int getpAppr() {
		return pAppr;
	}
	public void setpAppr(int pAppr) {
		this.pAppr = pAppr;
	}
	public String getpDate() {
		return pDate;
	}
	public void setpDate(String pDate) {
		this.pDate = pDate;
	}
	public String getpFromDt() {
		return pFromDt;
	}
	public void setpFromDt(String pFromDt) {
		this.pFromDt = pFromDt;
	}
	public String getpToDt() {
		return pToDt;
	}
	public void setpToDt(String pToDt) {
		this.pToDt = pToDt;
	}
	public String getpJob() {
		return pJob;
	}
	public void setpJob(String pJob) {
		this.pJob = pJob;
	}
	public String getpEtc() {
		return pEtc;
	}
	public void setpEtc(String pEtc) {
		this.pEtc = pEtc;
	}
	public String geteId() {
		return eId;
	}
	public void seteId(String eId) {
		this.eId = eId;
	}
	public DocPDTO(int pSeq, int pAppr, String pDate, String pFromDt,
			String pToDt, String pJob, String pEtc, String eId) {
		super();
		this.pSeq = pSeq;
		this.pAppr = pAppr;
		this.pDate = pDate;
		this.pFromDt = pFromDt;
		this.pToDt = pToDt;
		this.pJob = pJob;
		this.pEtc = pEtc;
		this.eId = eId;
	}
	public DocPDTO() {
		super();
	}	
}
