package mem.wit.Insa;

public class EvalDTO {
	private int evSeq, evAchieve, evFaith, evEffort, evTeam, evSpeed, evTotal;
	private String evDate, evComment, evId, evId2;
	public int getEvSeq() {
		return evSeq;
	}
	public void setEvSeq(int evSeq) {
		this.evSeq = evSeq;
	}
	public int getEvAchieve() {
		return evAchieve;
	}
	public void setEvAchieve(int evAchieve) {
		this.evAchieve = evAchieve;
	}
	public int getEvFaith() {
		return evFaith;
	}
	public void setEvFaith(int evFaith) {
		this.evFaith = evFaith;
	}
	public int getEvEffort() {
		return evEffort;
	}
	public void setEvEffort(int evEffort) {
		this.evEffort = evEffort;
	}
	public int getEvTeam() {
		return evTeam;
	}
	public void setEvTeam(int evTeam) {
		this.evTeam = evTeam;
	}
	public int getEvSpeed() {
		return evSpeed;
	}
	public void setEvSpeed(int evSpeed) {
		this.evSpeed = evSpeed;
	}
	public int getEvTotal() {
		return evTotal;
	}
	public void setEvTotal(int evTotal) {
		this.evTotal = evTotal;
	}
	public String getEvDate() {
		return evDate;
	}
	public void setEvDate(String evDate) {
		this.evDate = evDate;
	}
	public String getEvComment() {
		return evComment;
	}
	public void setEvComment(String evComment) {
		this.evComment = evComment;
	}
	public String getEvId() {
		return evId;
	}
	public void setEvId(String evId) {
		this.evId = evId;
	}
	public String getEvId2() {
		return evId2;
	}
	public void setEvId2(String evId2) {
		this.evId2 = evId2;
	}
	public EvalDTO(int evSeq, int evAchieve, int evFaith, int evEffort,
			int evTeam, int evSpeed, int evTotal, String evDate,
			String evComment, String evId, String evId2) {
		super();
		this.evSeq = evSeq;
		this.evAchieve = evAchieve;
		this.evFaith = evFaith;
		this.evEffort = evEffort;
		this.evTeam = evTeam;
		this.evSpeed = evSpeed;
		this.evTotal = evTotal;
		this.evDate = evDate;
		this.evComment = evComment;
		this.evId = evId;
		this.evId2 = evId2;
	}
	public EvalDTO() {
		super();
	}	
	
}
