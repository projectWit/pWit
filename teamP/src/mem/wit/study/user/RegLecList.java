package mem.wit.study.user;

import mem.wit.study.lecture.LecSchedule;

public class RegLecList {
	int regId;
	int sId;
	int lsId;
	int rsCode;
	String rsName;
	Student student;
	LecSchedule lecSchedule;
	
	public int getRegId() {
		return regId;
	}
	public void setRegId(int regId) {
		this.regId = regId;
	}
	public int getsId() {
		return sId;
	}
	public void setsId(int sId) {
		this.sId = sId;
	}
	public int getLsId() {
		return lsId;
	}
	public void setLsId(int lsId) {
		this.lsId = lsId;
	}
	public int getRsCode() {
		return rsCode;
	}
	public void setRsCode(int rsCode) {
		this.rsCode = rsCode;
	}
	public String getRsName() {
		return rsName;
	}
	public void setRsName(String rsName) {
		this.rsName = rsName;
	}
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	public LecSchedule getLecSchedule() {
		return lecSchedule;
	}
	public void setLecSchedule(LecSchedule lecSchedule) {
		this.lecSchedule = lecSchedule;
	}
	
}
