package mem.wit.gm;

public class QBoardDTO {
	private int qId;
	private String qMId;
	private String mName;
	private String qTitle;
	private String qCont;
	private String qDate;
	private String qIp;
	private int stateId;
	private String stateName;

	public int getqId() {
		return qId;
	}
	public void setqId(int qId) {
		this.qId = qId;
	}
	public String getqMId() {
		return qMId;
	}
	public void setqMId(String qMId) {
		this.qMId = qMId;
	}
	public int getStateId() {
		return stateId;
	}
	public void setStateId(int stateId) {
		this.stateId = stateId;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	public String getqTitle() {
		return qTitle;
	}
	public void setqTitle(String qTitle) {
		this.qTitle = qTitle;
	}
	public String getqCont() {
		return qCont;
	}
	public void setqCont(String qCont) {
		this.qCont = qCont;
	}
	public String getqDate() {
		return qDate;
	}
	public void setqDate(String qDate) {
		this.qDate = qDate;
	}
	public String getqIp() {
		return qIp;
	}
	public void setqIp(String qIp) {
		this.qIp = qIp;
	}
	public String getStateName() {
		return stateName;
	}
	public void setStateName(String stateName) {
		this.stateName = stateName;
	}
	
	
	
}
