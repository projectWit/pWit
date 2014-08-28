package mem.wit.Insa;

import org.apache.catalina.connector.Request;

public class PerDTO {
	private String hName, hRelate, hHome, hBth, eId;
	private String hMryDate, hBhRelate, hArmyNoRsn;
	private int hBthCode, hMryCode, hAbleCode, hBhCode, solCd, clsCd;
	
	public String geteId() {
		return eId;
	}
	public void seteId(String eId) {
		this.eId = eId;
	}
	public String gethName() {
		return hName;
	}
	public void sethName(String hName) {
		this.hName = hName;
	}
	public String gethRelate() {
		return hRelate;
	}
	public void sethRelate(String hRelate) {
		this.hRelate = hRelate;
	}
	public String gethHome() {
		return hHome;
	}
	public void sethHome(String hHome) {
		this.hHome = hHome;
	}
	public String gethBth() {
		return hBth;
	}
	public void sethBth(String hBth) {
		this.hBth = hBth;
	}
	public String gethMryDate() {
		return hMryDate;
	}
	public void sethMryDate(String hMryDate) {
		this.hMryDate = hMryDate;
	}
	public String gethBhRelate() {
		return hBhRelate;
	}
	public void sethBhRelate(String hBhRelate) {
		this.hBhRelate = hBhRelate;
	}
	public String gethArmyNoRsn() {
		return hArmyNoRsn;
	}
	public void sethArmyNoRsn(String hArmyNoRsn) {
		this.hArmyNoRsn = hArmyNoRsn;
	}
	public int gethBthCode() {
		return hBthCode;
	}
	public void sethBthCode(int hBthCode) {
		this.hBthCode = hBthCode;
	}
	public int gethMryCode() {
		return hMryCode;
	}
	public void sethMryCode(int hMryCode) {
		this.hMryCode = hMryCode;
	}
	public int gethAbleCode() {
		return hAbleCode;
	}
	public void sethAbleCode(int hAbleCode) {
		this.hAbleCode = hAbleCode;
	}
	public int gethBhCode() {
		return hBhCode;
	}
	public void sethBhCode(int hBhCode) {
		this.hBhCode = hBhCode;
	}
	public int getSolCd() {
		return solCd;
	}
	public void setSolCd(int solCd) {
		this.solCd = solCd;
	}
	public int getClsCd() {
		return clsCd;
	}
	public void setClsCd(int clsCd) {
		this.clsCd = clsCd;
	}
	public PerDTO(String hName, String hRelate, String hHome, String hBth,
			String eId, String hMryDate, String hBhRelate, String hArmyNoRsn,
			int hBthCode, int hMryCode, int hAbleCode, int hBhCode, int solCd,
			int clsCd) {
		super();
		this.hName = hName;
		this.hRelate = hRelate;
		this.hHome = hHome;
		this.hBth = hBth;
		this.eId = eId;
		this.hMryDate = hMryDate;
		this.hBhRelate = hBhRelate;
		this.hArmyNoRsn = hArmyNoRsn;
		this.hBthCode = hBthCode;
		this.hMryCode = hMryCode;
		this.hAbleCode = hAbleCode;
		this.hBhCode = hBhCode;
		this.solCd = solCd;
		this.clsCd = clsCd;
	}
	public PerDTO() {
		super();
	}
	
	
	
}
