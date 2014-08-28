package mem.wit.Insa;

public class LanDTO {
	private int lanSeq, lanType, lanReadLvCd, lanWriteLvCd, lanSpkLvCd;
	private String lanQual, lanEtc, eId;
	public int getLanSeq() {
		return lanSeq;
	}
	public void setLanSeq(int lanSeq) {
		this.lanSeq = lanSeq;
	}
	public int getLanType() {
		return lanType;
	}
	public void setLanType(int lanType) {
		this.lanType = lanType;
	}
	public int getLanReadLvCd() {
		return lanReadLvCd;
	}
	public void setLanReadLvCd(int lanReadLvCd) {
		this.lanReadLvCd = lanReadLvCd;
	}
	public int getLanWriteLvCd() {
		return lanWriteLvCd;
	}
	public void setLanWriteLvCd(int lanWriteLvCd) {
		this.lanWriteLvCd = lanWriteLvCd;
	}
	public int getLanSpkLvCd() {
		return lanSpkLvCd;
	}
	public void setLanSpkLvCd(int lanSpkLvCd) {
		this.lanSpkLvCd = lanSpkLvCd;
	}
	public String getLanQual() {
		return lanQual;
	}
	public void setLanQual(String lanQual) {
		this.lanQual = lanQual;
	}
	public String getLanEtc() {
		return lanEtc;
	}
	public void setLanEtc(String lanEtc) {
		this.lanEtc = lanEtc;
	}
	public String geteId() {
		return eId;
	}
	public void seteId(String eId) {
		this.eId = eId;
	}
	public LanDTO(int lanSeq, int lanType, int lanReadLvCd, int lanWriteLvCd,
			int lanSpkLvCd, String lanQual, String lanEtc, String eId) {
		super();
		this.lanSeq = lanSeq;
		this.lanType = lanType;
		this.lanReadLvCd = lanReadLvCd;
		this.lanWriteLvCd = lanWriteLvCd;
		this.lanSpkLvCd = lanSpkLvCd;
		this.lanQual = lanQual;
		this.lanEtc = lanEtc;
		this.eId = eId;
	}
	public LanDTO() {
		super();
	}
	
}
