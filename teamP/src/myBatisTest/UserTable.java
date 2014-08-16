package myBatisTest;

public class UserTable {
	int mCode;
	String mName;
	String mJob;
	
	public UserTable() {}
	public UserTable(int mCode, String mName, String mJob) {
		super();
		this.mCode = mCode;
		this.mName = mName;
		this.mJob = mJob;
	}
	public int getmCode() {
		return mCode;
	}
	public void setmCode(int mCode) {
		this.mCode = mCode;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	public String getmJob() {
		return mJob;
	}
	public void setmJob(String mJob) {
		this.mJob = mJob;
	}
	
}
