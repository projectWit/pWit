package mem.wit.pShopping06;

public class WSDelvRefDTO {
	private int		dlv_code;
	private String 	dlv_type;
	
	

	public WSDelvRefDTO() {
		super();
		// TODO Auto-generated constructor stub
	}


	public WSDelvRefDTO(int dlv_code, String dlv_type) {
		super();
		this.dlv_code = dlv_code;
		this.dlv_type = dlv_type;
	}

	public int getDlv_code() {
		return dlv_code;
	}

	public void setDlv_code(int dlv_code) {
		this.dlv_code = dlv_code;
	}


	public String getDlv_type() {
		return dlv_type;
	}


	public void setDlv_type(String dlv_type) {
		this.dlv_type = dlv_type;
	}



	
	

}
