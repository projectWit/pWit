package mem.wit.Insa;

public class SchDTO {
	private int sSeq, sSchCd, sLocCd, sGradCd, sDnCd;
	private String eId, sSchName, sJoinDate, sGradDate, sMajor, sEtc;
	public int getsSeq() {
		return sSeq;
	}
	public void setsSeq(int sSeq) {
		this.sSeq = sSeq;
	}
	public int getsSchCd() {
		return sSchCd;
	}
	public void setsSchCd(int sSchCd) {
		this.sSchCd = sSchCd;
	}
	public int getsLocCd() {
		return sLocCd;
	}
	public void setsLocCd(int sLocCd) {
		this.sLocCd = sLocCd;
	}
	public int getsGradCd() {
		return sGradCd;
	}
	public void setsGradCd(int sGradCd) {
		this.sGradCd = sGradCd;
	}
	public int getsDnCd() {
		return sDnCd;
	}
	public void setsDnCd(int sDnCd) {
		this.sDnCd = sDnCd;
	}
	public String geteId() {
		return eId;
	}
	public void seteId(String eId) {
		this.eId = eId;
	}
	public String getsSchName() {
		return sSchName;
	}
	public void setsSchName(String sSchName) {
		this.sSchName = sSchName;
	}
	public String getsJoinDate() {
		return sJoinDate;
	}
	public void setsJoinDate(String sJoinDate) {
		this.sJoinDate = sJoinDate;
	}
	public String getsGradDate() {
		return sGradDate;
	}
	public void setsGradDate(String sGradDate) {
		this.sGradDate = sGradDate;
	}
	public String getsMajor() {
		return sMajor;
	}
	public void setsMajor(String sMajor) {
		this.sMajor = sMajor;
	}
	public String getsEtc() {
		return sEtc;
	}
	public void setsEtc(String sEtc) {
		this.sEtc = sEtc;
	}
	public SchDTO(int sSeq, int sSchCd, int sLocCd, int sGradCd, int sDnCd,
			String eId, String sSchName, String sJoinDate, String sGradDate,
			String sMajor, String sEtc) {
		super();
		this.sSeq = sSeq;
		this.sSchCd = sSchCd;
		this.sLocCd = sLocCd;
		this.sGradCd = sGradCd;
		this.sDnCd = sDnCd;
		this.eId = eId;
		this.sSchName = sSchName;
		this.sJoinDate = sJoinDate;
		this.sGradDate = sGradDate;
		this.sMajor = sMajor;
		this.sEtc = sEtc;
	}
	public SchDTO() {
		super();
	}

	
	
}
