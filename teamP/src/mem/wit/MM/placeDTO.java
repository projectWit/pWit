package mem.wit.MM;

public class placeDTO {
	private int mm_no, mm_hit, mm_rec, mm_dist;
	private String mm_tit, mid, mm_con, mm_date, mm_ip, mm_pic;

	public placeDTO(int mm_no, int mm_hit, int mm_rec, int mm_dist,
			String mm_tit, String mid, String mm_con, String mm_date,
			String mm_ip, String mm_pic) {
		super();
		this.mm_no = mm_no;
		this.mm_hit = mm_hit;
		this.mm_rec = mm_rec;
		this.mm_dist = mm_dist;
		this.mm_tit = mm_tit;
		this.mid = mid;
		this.mm_con = mm_con;
		this.mm_date = mm_date;
		this.mm_ip = mm_ip;
		this.mm_pic = mm_pic;
	}

	public placeDTO() {
		// TODO Auto-generated constructor stub
	}

	public int getMm_no() {
		return mm_no;
	}

	public void setMm_no(int mm_no) {
		this.mm_no = mm_no;
	}

	public int getMm_hit() {
		return mm_hit;
	}

	public void setMm_hit(int mm_hit) {
		this.mm_hit = mm_hit;
	}

	public int getMm_rec() {
		return mm_rec;
	}

	public void setMm_rec(int mm_rec) {
		this.mm_rec = mm_rec;
	}

	public int getMm_dist() {
		return mm_dist;
	}

	public void setMm_dist(int mm_dist) {
		this.mm_dist = mm_dist;
	}

	public String getMm_tit() {
		return mm_tit;
	}

	public void setMm_tit(String mm_tit) {
		this.mm_tit = mm_tit;
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public String getMm_con() {
		return mm_con;
	}

	public void setMm_con(String mm_con) {
		this.mm_con = mm_con;
	}

	public String getMm_date() {
		return mm_date;
	}

	public void setMm_date(String mm_date) {
		this.mm_date = mm_date;
	}

	public String getMm_ip() {
		return mm_ip;
	}

	public void setMm_ip(String mm_ip) {
		this.mm_ip = mm_ip;
	}

	public String getMm_pic() {
		return mm_pic;
	}

	public void setMm_pic(String mm_pic) {
		this.mm_pic = mm_pic;
	}
}
