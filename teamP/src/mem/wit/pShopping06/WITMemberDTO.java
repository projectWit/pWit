package mem.wit.pShopping06;

public class WITMemberDTO {
	private String 	mid;
	private String 	mpwd;
	private String	mname;
	private	String 	mnickname;
	private int		mpost;
	private String	maddr;
	private String	mtel;
	private String	mmoblie;
	private String	memail;
	private String	mbirth;
	private int		bthcode;
	private String 	mjoindate;
	private int		gencode;
	private int		mrycode;
	private int		jcode;
	private String	eid;
	
	
	
	public WITMemberDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public WITMemberDTO(String mid, String mpwd, String mname,
			String mnickname, int mpost, String maddr, String mtel,
			String mmoblie, String memail, String mbirth, int bthcode,
			String mjoindate, int gencode, int mrycode, int jcode, String eid) {
		super();
		this.mid = mid;
		this.mpwd = mpwd;
		this.mname = mname;
		this.mnickname = mnickname;
		this.mpost = mpost;
		this.maddr = maddr;
		this.mtel = mtel;
		this.mmoblie = mmoblie;
		this.memail = memail;
		this.mbirth = mbirth;
		this.bthcode = bthcode;
		this.mjoindate = mjoindate;
		this.gencode = gencode;
		this.mrycode = mrycode;
		this.jcode = jcode;
		this.eid = eid;
	}
	public WITMemberDTO(String mid, String mpwd, String mname,
			String mnickname, int mpost, String maddr, String mtel,
			String mmoblie, String memail, String mbirth) {
		super();
		this.mid = mid;
		this.mpwd = mpwd;
		this.mname = mname;
		this.mnickname = mnickname;
		this.mpost = mpost;
		this.maddr = maddr;
		this.mtel = mtel;
		this.mmoblie = mmoblie;
		this.memail = memail;
		this.mbirth = mbirth;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getMpwd() {
		return mpwd;
	}
	public void setMpwd(String mpwd) {
		this.mpwd = mpwd;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMnickname() {
		return mnickname;
	}
	public void setMnickname(String mnickname) {
		this.mnickname = mnickname;
	}
	public int getMpost() {
		return mpost;
	}
	public void setMpost(int mpost) {
		this.mpost = mpost;
	}
	public String getMaddr() {
		return maddr;
	}
	public void setMaddr(String maddr) {
		this.maddr = maddr;
	}
	public String getMtel() {
		return mtel;
	}
	public void setMtel(String mtel) {
		this.mtel = mtel;
	}
	public String getMmoblie() {
		return mmoblie;
	}
	public void setMmoblie(String mmoblie) {
		this.mmoblie = mmoblie;
	}
	public String getMemail() {
		return memail;
	}
	public void setMemail(String memail) {
		this.memail = memail;
	}
	public String getMbirth() {
		return mbirth;
	}
	public void setMbirth(String mbirth) {
		this.mbirth = mbirth;
	}
	public int getBthcode() {
		return bthcode;
	}
	public void setBthcode(int bthcode) {
		this.bthcode = bthcode;
	}
	public String getMjoindate() {
		return mjoindate;
	}
	public void setMjoindate(String mjoindate) {
		this.mjoindate = mjoindate;
	}
	public int getGencode() {
		return gencode;
	}
	public void setGencode(int gencode) {
		this.gencode = gencode;
	}
	public int getMrycode() {
		return mrycode;
	}
	public void setMrycode(int mrycode) {
		this.mrycode = mrycode;
	}
	public int getJcode() {
		return jcode;
	}
	public void setJcode(int jcode) {
		this.jcode = jcode;
	}
	public String getEid() {
		return eid;
	}
	public void setEid(String eid) {
		this.eid = eid;
	}
	
	
	
}
