package mem.wit.pShopping06;

public class ZipcodesDTO {
	private String 	zipcode;
	private String	sido;
	private String	gugun;
	private String	dong;
	private String	ri;
	private String	bunji;
	private int		seq;
	
	
	public ZipcodesDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public ZipcodesDTO(String zipcode, String sido, String gugun, String dong,
			String ri, String bunji, int seq) {
		super();
		this.zipcode = zipcode;
		this.sido = sido;
		this.gugun = gugun;
		this.dong = dong;
		this.ri = ri;
		this.bunji = bunji;
		this.seq = seq;
	}

	public String getZipcode() {
		return zipcode;
	}
	public String getSido() {
		return sido;
	}
	public String getGugun() {
		return gugun;
	}
	public String getDong() {
		return dong;
	}
	public String getRi() {
		return ri;
	}
	public String getBunji() {
		return bunji;
	}
	public int getSeq() {
		return seq;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public void setSido(String sido) {
		this.sido = sido;
	}
	public void setGugun(String gugun) {
		this.gugun = gugun;
	}
	public void setDong(String dong) {
		this.dong = dong;
	}
	public void setRi(String ri) {
		this.ri = ri;
	}
	public void setBunji(String bunji) {
		this.bunji = bunji;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	
	
	
	
	

}
