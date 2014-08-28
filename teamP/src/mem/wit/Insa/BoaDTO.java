package mem.wit.Insa;

public class BoaDTO {
	private int bSeq, bHeadCd,bCnt;
	private String eId, bTitle, bContent, bDate, bIp;
	public int getbSeq() {
		return bSeq;
	}
	public void setbSeq(int bSeq) {
		this.bSeq = bSeq;
	}
	public int getbHeadCd() {
		return bHeadCd;
	}
	public void setbHeadCd(int bHeadCd) {
		this.bHeadCd = bHeadCd;
	}
	public int getbCnt() {
		return bCnt;
	}
	public void setbCnt(int bCnt) {
		this.bCnt = bCnt;
	}
	public String geteId() {
		return eId;
	}
	public void seteId(String eId) {
		this.eId = eId;
	}
	public String getbTitle() {
		return bTitle;
	}
	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}
	public String getbContent() {
		return bContent;
	}
	public void setbContent(String bContent) {
		this.bContent = bContent;
	}
	public String getbDate() {
		return bDate;
	}
	public void setbDate(String bDate) {
		this.bDate = bDate;
	}
	public String getbIp() {
		return bIp;
	}
	public void setbIp(String bIp) {
		this.bIp = bIp;
	}
	public BoaDTO(int bSeq, int bHeadCd, int bCnt, String eId, String bTitle,
			String bContent, String bDate, String bIp) {
		super();
		this.bSeq = bSeq;
		this.bHeadCd = bHeadCd;
		this.bCnt = bCnt;
		this.eId = eId;
		this.bTitle = bTitle;
		this.bContent = bContent;
		this.bDate = bDate;
		this.bIp = bIp;
	}
	public BoaDTO() {
		super();
	}
	
}
