package mem.wit.study.myBatis;

import java.util.List;

import mem.wit.study.codes.LecCate;
import mem.wit.study.codes.LecRoom;

public interface LecRoomMapper {
	
	public List<LecRoom> selectAll();
	
	public LecRoom select(int lrCode);
	
	public int insert(LecRoom lecRoom);
	
	public int update(LecRoom lecRoom);
	
	public void delete(LecRoom lecRoom);
}
