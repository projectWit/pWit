package mem.wit.pShopping06;

public class WSNationDTO {
	private int		nat_code;
	private String 	nat_name;
	
	
	public WSNationDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public WSNationDTO(int nat_code, String nat_name) {
		super();
		this.nat_code = nat_code;
		this.nat_name = nat_name;
	}
	public int getNat_code() {
		return nat_code;
	}
	public void setNat_code(int nat_code) {
		this.nat_code = nat_code;
	}
	public String getNat_name() {
		return nat_name;
	}
	public void setNat_name(String nat_name) {
		this.nat_name = nat_name;
	}
	
	

}
