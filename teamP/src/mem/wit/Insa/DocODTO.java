package mem.wit.Insa;

public class DocODTO {
	private int oSeq, oAppr;
	private String eId, oDate, oJoinDt, oDropDt, oDropRsn, oMobile, oEtc;
		
	public DocODTO(int oSeq, int oAppr, String eId, String oDate,
			String oJoinDt, String oDropDt, String oDropRsn, String oMobile,
			String oEtc) {
		super();
		this.oSeq = oSeq;
		this.oAppr = oAppr;
		this.eId = eId;
		this.oDate = oDate;
		this.oJoinDt = oJoinDt;
		this.oDropDt = oDropDt;
		this.oDropRsn = oDropRsn;
		this.oMobile = oMobile;
		this.oEtc = oEtc;
	}

	public int getoSeq() {
		return oSeq;
	}

	public void setoSeq(int oSeq) {
		this.oSeq = oSeq;
	}

	public int getoAppr() {
		return oAppr;
	}

	public void setoAppr(int oAppr) {
		this.oAppr = oAppr;
	}

	public String geteId() {
		return eId;
	}

	public void seteId(String eId) {
		this.eId = eId;
	}

	public String getoDate() {
		return oDate;
	}

	public void setoDate(String oDate) {
		this.oDate = oDate;
	}

	public String getoJoinDt() {
		return oJoinDt;
	}

	public void setoJoinDt(String oJoinDt) {
		this.oJoinDt = oJoinDt;
	}

	public String getoDropDt() {
		return oDropDt;
	}

	public void setoDropDt(String oDropDt) {
		this.oDropDt = oDropDt;
	}

	public String getoDropRsn() {
		return oDropRsn;
	}

	public void setoDropRsn(String oDropRsn) {
		this.oDropRsn = oDropRsn;
	}

	public String getoMobile() {
		return oMobile;
	}

	public void setoMobile(String oMobile) {
		this.oMobile = oMobile;
	}
	public String getoEtc() {
		return oEtc;
	}

	public void setoEtc(String oEtc) {
		this.oEtc = oEtc;
	}

	public DocODTO() {
		super();
	}	
}
