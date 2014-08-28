package mem.wit.Insa;

public class DocCDTO {
	private int caSeq, caAppr;
	private String eId, caDate, caFromDt, caToDt, caJob, caEtc;
	public int getCaSeq() {
		return caSeq;
	}
	public void setCaSeq(int caSeq) {
		this.caSeq = caSeq;
	}
	public int getCaAppr() {
		return caAppr;
	}
	public void setCaAppr(int caAppr) {
		this.caAppr = caAppr;
	}
	public String geteId() {
		return eId;
	}
	public void seteId(String eId) {
		this.eId = eId;
	}
	public String getCaDate() {
		return caDate;
	}
	public void setCaDate(String caDate) {
		this.caDate = caDate;
	}
	public String getCaFromDt() {
		return caFromDt;
	}
	public void setCaFromDt(String caFromDt) {
		this.caFromDt = caFromDt;
	}
	public String getCaToDt() {
		return caToDt;
	}
	public void setCaToDt(String caToDt) {
		this.caToDt = caToDt;
	}
	public String getCaJob() {
		return caJob;
	}
	public void setCaJob(String caJob) {
		this.caJob = caJob;
	}
	public String getCaEtc() {
		return caEtc;
	}
	public void setCaEtc(String caEtc) {
		this.caEtc = caEtc;
	}
	public DocCDTO(int caSeq, int caAppr, String eId, String caDate,
			String caFromDt, String caToDt, String caJob, String caEtc) {
		super();
		this.caSeq = caSeq;
		this.caAppr = caAppr;
		this.eId = eId;
		this.caDate = caDate;
		this.caFromDt = caFromDt;
		this.caToDt = caToDt;
		this.caJob = caJob;
		this.caEtc = caEtc;
	}
	public DocCDTO() {
		super();
	}
	
}
