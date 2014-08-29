package mem.wit.pShopping06;

public class WSQnaDTO {
	private int 	qna_prdCode;
	private String	qna_userID;
	private int		qna_QorA;
	private String	qna_content;
	private int		qna_secret;
	private int		qna_delete;	
	private String 	qna_regDate;
	
	public WSQnaDTO() {
	}



	public WSQnaDTO(int qna_prdCode, String qna_userID, int qna_QorA,
			String qna_content, int qna_secret, int qna_delete,
			String qna_regDate) {
		super();
		this.qna_prdCode = qna_prdCode;
		this.qna_userID = qna_userID;
		this.qna_QorA = qna_QorA;
		this.qna_content = qna_content;
		this.qna_secret = qna_secret;
		this.qna_delete = qna_delete;
		this.qna_regDate = qna_regDate;
	}



	public int getQna_prdCode() {
		return qna_prdCode;
	}

	public void setQna_prdCode(int qna_prdCode) {
		this.qna_prdCode = qna_prdCode;
	}

	public String getQna_userID() {
		return qna_userID;
	}

	public void setQna_userID(String qna_userID) {
		this.qna_userID = qna_userID;
	}

	public int getQna_QorA() {
		return qna_QorA;
	}

	public void setQna_QorA(int qna_QorA) {
		this.qna_QorA = qna_QorA;
	}

	public String getQna_content() {
		return qna_content;
	}

	public void setQna_content(String qna_content) {
		this.qna_content = qna_content;
	}

	public int getQna_secret() {
		return qna_secret;
	}

	public void setQna_secret(int qna_secret) {
		this.qna_secret = qna_secret;
	}

	public int getQna_delete() {
		return qna_delete;
	}

	public void setQna_delete(int qna_delete) {
		this.qna_delete = qna_delete;
	}



	public String getQna_regDate() {
		return qna_regDate;
	}



	public void setQna_regDate(String qna_regDate) {
		this.qna_regDate = qna_regDate;
	}

	

	
}
