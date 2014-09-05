package mem.wit.study.lecture;

import java.util.List;

public class LecSchedule {
	int lsId;
	int alId;
	String lsCost;
	int lsMax;
	int lrCode;
	String lrName;
	String lsDescription;
	String lsFromDate;
	String lsToDate;
	int lsCode;
	String lsName;
	Lecture lecture;
	List<LecDay> lecDay;
	
	public int getLsId() {
		return lsId;
	}
	public void setLsId(int lsId) {
		this.lsId = lsId;
	}
	public int getAlId() {
		return alId;
	}
	public void setAlId(int alId) {
		this.alId = alId;
	}
	public String getLsCost() {
		return lsCost;
	}
	public void setLsCost(String lsCost) {
		this.lsCost = lsCost;
	}
	public int getLsMax() {
		return lsMax;
	}
	public void setLsMax(int lsMax) {
		this.lsMax = lsMax;
	}
	public int getLrCode() {
		return lrCode;
	}
	public void setLrCode(int lrCode) {
		this.lrCode = lrCode;
	}
	public String getLrName() {
		return lrName;
	}
	public void setLrName(String lrName) {
		this.lrName = lrName;
	}
	public String getLsDescription() {
		return lsDescription;
	}
	public void setLsDescription(String lsDescription) {
		this.lsDescription = lsDescription;
	}
	public String getLsFromDate() {
		return lsFromDate;
	}
	public void setLsFromDate(String lsFromDate) {
		this.lsFromDate = lsFromDate;
	}
	public String getLsToDate() {
		return lsToDate;
	}
	public void setLsToDate(String lsToDate) {
		this.lsToDate = lsToDate;
	}
	public int getLsCode() {
		return lsCode;
	}
	public void setLsCode(int lsCode) {
		this.lsCode = lsCode;
	}
	public String getLsName() {
		return lsName;
	}
	public void setLsName(String lsName) {
		this.lsName = lsName;
	}
	public Lecture getLecture() {
		return lecture;
	}
	public void setLecture(Lecture lecture) {
		this.lecture = lecture;
	}
	public List<LecDay> getLecDay() {
		return lecDay;
	}
	public void setLecDay(List<LecDay> lecDay) {
		this.lecDay = lecDay;
	}
	
}
