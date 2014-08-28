package mem.wit.Insa;

public class InsaDTO {
	private String eId, eKName, eCName, eEName, eJumin1, eJumin2;
	private String eJoinDate, eTel, eMobile, eDropDate, eDropRsn, ePhoto, ePostNum, eAddr2;
	private String eEmail, ePwd;
	private int eInTypeCd, ePosCd, eDutyCd, eDepCd, ehId;

	public String geteKName() {
		return eKName;
	}
	public void seteKName(String eKName) {
		this.eKName = eKName;
	}
	public String geteCName() {
		return eCName;
	}
	public void seteCName(String eCName) {
		this.eCName = eCName;
	}
	public String geteEName() {
		return eEName;
	}
	public void seteEName(String eEName) {
		this.eEName = eEName;
	}
	public String geteJumin1() {
		return eJumin1;
	}
	public void seteJumin1(String eJumin1) {
		this.eJumin1 = eJumin1;
	}
	public String geteJumin2() {
		return eJumin2;
	}
	public void seteJumin2(String eJumin2) {
		this.eJumin2 = eJumin2;
	}
	public String geteJoinDate() {
		return eJoinDate;
	}
	public void seteJoinDate(String eJoinDate) {
		this.eJoinDate = eJoinDate;
	}
	public String geteTel() {
		return eTel;
	}
	public void seteTel(String eTel) {
		this.eTel = eTel;
	}
	public String geteMobile() {
		return eMobile;
	}
	public void seteMobile(String eMobile) {
		this.eMobile = eMobile;
	}
	public String geteDropDate() {
		return eDropDate;
	}
	public void seteDropDate(String eDropDate) {
		this.eDropDate = eDropDate;
	}
	public String geteDropRsn() {
		return eDropRsn;
	}
	public void seteDropRsn(String eDropRsn) {
		this.eDropRsn = eDropRsn;
	}
	public String getePhoto() {
		return ePhoto;
	}
	public void setePhoto(String ePhoto) {
		this.ePhoto = ePhoto;
	}
	public String getePostNum() {
		return ePostNum;
	}
	public void setePostNum(String ePostNum) {
		this.ePostNum = ePostNum;
	}
	public String geteAddr2() {
		return eAddr2;
	}
	public void seteAddr2(String eAddr2) {
		this.eAddr2 = eAddr2;
	}
	public String geteEmail() {
		return eEmail;
	}
	public void seteEmail(String eEmail) {
		this.eEmail = eEmail;
	}
	public String getePwd() {
		return ePwd;
	}
	public void setePwd(String ePwd) {
		this.ePwd = ePwd;
	}
	public int geteInTypeCd() {
		return eInTypeCd;
	}
	public void seteInTypeCd(int eInTypeCd) {
		this.eInTypeCd = eInTypeCd;
	}
	public int getePosCd() {
		return ePosCd;
	}
	public void setePosCd(int ePosCd) {
		this.ePosCd = ePosCd;
	}
	public int geteDutyCd() {
		return eDutyCd;
	}
	public void seteDutyCd(int eDutyCd) {
		this.eDutyCd = eDutyCd;
	}
	public int geteDepCd() {
		return eDepCd;
	}
	public void seteDepCd(int eDepCd) {
		this.eDepCd = eDepCd;
	}

	public String geteId() {
		return eId;
	}
	public void seteId(String eId) {
		this.eId = eId;
	}
	public int getEhId() {
		return ehId;
	}
	public void setEhId(int ehId) {
		this.ehId = ehId;
	}
	public InsaDTO(String eId, String eKName, String eCName, String eEName,
			String eJumin1, String eJumin2, String eJoinDate, String eTel,
			String eMobile, String eDropDate, String eDropRsn, String ePhoto,
			String ePostNum, String eAddr2, String eEmail, String ePwd,
			int eInTypeCd, int ePosCd, int eDutyCd, int eDepCd, int ehId) {
		super();
		this.eId = eId;
		this.eKName = eKName;
		this.eCName = eCName;
		this.eEName = eEName;
		this.eJumin1 = eJumin1;
		this.eJumin2 = eJumin2;
		this.eJoinDate = eJoinDate;
		this.eTel = eTel;
		this.eMobile = eMobile;
		this.eDropDate = eDropDate;
		this.eDropRsn = eDropRsn;
		this.ePhoto = ePhoto;
		this.ePostNum = ePostNum;
		this.eAddr2 = eAddr2;
		this.eEmail = eEmail;
		this.ePwd = ePwd;
		this.eInTypeCd = eInTypeCd;
		this.ePosCd = ePosCd;
		this.eDutyCd = eDutyCd;
		this.eDepCd = eDepCd;
		this.ehId = ehId;
	}
	public InsaDTO() {
		super();
	}
	
	
}
