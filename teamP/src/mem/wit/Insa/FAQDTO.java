package mem.wit.Insa;

public class FAQDTO {
	private int fSeq, fCnt;

	private String fTitle, fContent, fDate, fIp, eId;

	public String geteId() {
		return eId;
	}

	public void seteId(String eId) {
		this.eId = eId;
	}

	public int getfSeq() {
		return fSeq;
	}

	public void setfSeq(int fSeq) {
		this.fSeq = fSeq;
	}

	public int getfCnt() {
		return fCnt;
	}

	public void setfCnt(int fCnt) {
		this.fCnt = fCnt;
	}

	public String getfTitle() {
		return fTitle;
	}

	public void setfTitle(String fTitle) {
		this.fTitle = fTitle;
	}

	public String getfContent() {
		return fContent;
	}

	public void setfContent(String fContent) {
		this.fContent = fContent;
	}

	public String getfDate() {
		return fDate;
	}

	public void setfDate(String fDate) {
		this.fDate = fDate;
	}

	public String getfIp() {
		return fIp;
	}

	public void setfIp(String fIp) {
		this.fIp = fIp;
	}

	public FAQDTO() {
		super();
	}


	public FAQDTO(int fSeq, int fCnt, String fTitle, String fContent,
			String fDate, String fIp, String eId) {
		super();
		this.fSeq = fSeq;
		this.fCnt = fCnt;
		this.fTitle = fTitle;
		this.fContent = fContent;
		this.fDate = fDate;
		this.fIp = fIp;	
		this.eId = eId;
	}

}
