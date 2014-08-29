package mem.wit.pShopping06;

public class WSMemberSubDTO {
	private String	mem_id;			// 회원 ID
	private int		mem_level;		// 회원 등급	
	private int		mem_point;		// 회원 보유 포인트
	
	
	public WSMemberSubDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public WSMemberSubDTO(String mem_id, int mem_level, int mem_point) {
		super();
		this.mem_id = mem_id;
		this.mem_level = mem_level;
		this.mem_point = mem_point;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public int getMem_level() {
		return mem_level;
	}
	public void setMem_level(int mem_level) {
		this.mem_level = mem_level;
	}
	public int getMem_point() {
		return mem_point;
	}
	public void setMem_point(int mem_point) {
		this.mem_point = mem_point;
	}

}
