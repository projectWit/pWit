package mem.wit.Insa;

public class FamDTO {
	private int fSeq, fHtCd, rtCd, fJumin1, fJumin2;
	private String eId, fName, fRelation, fFinGrad, fJob, fCompany, fhtName, frtName;
	public String getFhtName() {
		return fhtName;
	}
	public void setFhtName(String fhtName) {
		this.fhtName = fhtName;
	}
	public String getFrtName() {
		return frtName;
	}
	public void setFrtName(String frtName) {
		this.frtName = frtName;
	}
	public int getfSeq() {
		return fSeq;
	}
	public void setfSeq(int fSeq) {
		this.fSeq = fSeq;
	}
	public int getfHtCd() {
		return fHtCd;
	}
	public void setfHtCd(int fHtCd) {
		this.fHtCd = fHtCd;
	}
	public int getRtCd() {
		return rtCd;
	}
	public void setRtCd(int rtCd) {
		this.rtCd = rtCd;
	}
	public int getfJumin1() {
		return fJumin1;
	}
	public void setfJumin1(int fJumin1) {
		this.fJumin1 = fJumin1;
	}
	public int getfJumin2() {
		return fJumin2;
	}
	public void setfJumin2(int fJumin2) {
		this.fJumin2 = fJumin2;
	}
	public String geteId() {
		return eId;
	}
	public void seteId(String eId) {
		this.eId = eId;
	}
	public String getfName() {
		return fName;
	}
	public void setfName(String fName) {
		this.fName = fName;
	}
	public String getfRelation() {
		return fRelation;
	}
	public void setfRelation(String fRelation) {
		this.fRelation = fRelation;
	}
	public String getfFinGrad() {
		return fFinGrad;
	}
	public void setfFinGrad(String fFinGrad) {
		this.fFinGrad = fFinGrad;
	}
	public String getfJob() {
		return fJob;
	}
	public void setfJob(String fJob) {
		this.fJob = fJob;
	}
	public String getfCompany() {
		return fCompany;
	}
	public void setfCompany(String fCompany) {
		this.fCompany = fCompany;
	}
	public FamDTO(int fSeq, int fHtCd, int rtCd, int fJumin1, int fJumin2,
			String eId, String fName, String fRelation, String fFinGrad,
			String fJob, String fCompany) {
		super();
		this.fSeq = fSeq;
		this.fHtCd = fHtCd;
		this.rtCd = rtCd;
		this.fJumin1 = fJumin1;
		this.fJumin2 = fJumin2;
		this.eId = eId;
		this.fName = fName;
		this.fRelation = fRelation;
		this.fFinGrad = fFinGrad;
		this.fJob = fJob;
		this.fCompany = fCompany;
	}
	public FamDTO() {
		super();
	}
	
}
