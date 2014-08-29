package mem.wit.pShopping06;

public class WSReviewDTO {
	private int		rev_prdcode;		// 상품 고유 코드
	private String 	rev_memid;			// 작성자 id
	private String	rev_content;		// 리뷰 내용
	private int		rev_mark;			// 평점
	private int		rev_delete;			// 삭제여부
	private String	rev_regDate;		// 작성일
	
	public WSReviewDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public WSReviewDTO(int rev_prdcode, String rev_memid, String rev_content,
			int rev_mark, int rev_delete, String rev_regDate) {
		super();
		this.rev_prdcode = rev_prdcode;
		this.rev_memid = rev_memid;
		this.rev_content = rev_content;
		this.rev_mark = rev_mark;
		this.rev_delete = rev_delete;
		this.rev_regDate = rev_regDate;
	}

	public int getRev_prdcode() {
		return rev_prdcode;
	}
	public void setRev_prdcode(int rev_prdcode) {
		this.rev_prdcode = rev_prdcode;
	}
	public String getRev_memid() {
		return rev_memid;
	}
	public void setRev_memid(String rev_memid) {
		this.rev_memid = rev_memid;
	}
	public String getRev_content() {
		return rev_content;
	}
	public void setRev_content(String rev_content) {
		this.rev_content = rev_content;
	}
	public int getRev_mark() {
		return rev_mark;
	}
	public void setRev_mark(int rev_mark) {
		this.rev_mark = rev_mark;
	}
	public int getRev_delete() {
		return rev_delete;
	}
	public void setRev_delete(int rev_delete) {
		this.rev_delete = rev_delete;
	}
	public String getRev_regDate() {
		return rev_regDate;
	}
	public void setRev_regDate(String rev_regDate) {
		this.rev_regDate = rev_regDate;
	}
	
}
