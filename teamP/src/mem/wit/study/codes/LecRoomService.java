package mem.wit.study.codes;

import java.util.List;

public interface LecRoomService {
	
	public List<LecRoom> selectAll();
	
	public LecRoom select(int lrCode);
	
	public int insert(LecRoom lecRoom);
	
	public int update(LecRoom lecRoom);
	
	public void delete(LecRoom lecRoom);
}
