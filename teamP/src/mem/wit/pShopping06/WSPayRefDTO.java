package mem.wit.pShopping06;

public class WSPayRefDTO {
	private int		pay_code;
	private String 	pay_type;
	
	
	public int getPay_code() {
		return pay_code;
	}


	public WSPayRefDTO(int pay_code, String pay_type) {
		super();
		this.pay_code = pay_code;
		this.pay_type = pay_type;
	}


	public void setPay_code(int pay_code) {
		this.pay_code = pay_code;
	}


	public String getPay_type() {
		return pay_type;
	}


	public void setPay_type(String pay_type) {
		this.pay_type = pay_type;
	}


	public WSPayRefDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	

}
