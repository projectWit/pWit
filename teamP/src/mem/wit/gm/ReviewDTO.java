package mem.wit.gm;

public class ReviewDTO {
	private String rComment;
	private String rIp;
	private String rDate;
	private int rLike;
	private int rHate;
	private String rImoticon;
	private String mNickName;
	public String getrComment() {
		return rComment;
	}
	public void setrComment(String rComment) {
		this.rComment = rComment;
	}
	public String getrIp() {
		return rIp;
	}
	public void setrIp(String rIp) {
		this.rIp = rIp;
	}
	public String getrDate() {
		return rDate;
	}
	public void setrDate(String rDate) {
		this.rDate = rDate;
	}
	public int getrLike() {
		return rLike;
	}
	public void setrLike(int rLike) {
		this.rLike = rLike;
	}
	public int getrHate() {
		return rHate;
	}
	public void setrHate(int rHate) {
		this.rHate = rHate;
	}
	public String getrImoticon() {
		return rImoticon;
	}
	public void setrImoticon(String rImoticon) {
		this.rImoticon = rImoticon;
	}
	public String getmNickName() {
		return mNickName;
	}
	public void setmNickName(String mNickName) {
		this.mNickName = mNickName;
	}

	
}
