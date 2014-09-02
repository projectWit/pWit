package mem.wit.study.codes;

import java.util.List;

import mem.wit.study.myBatis.LecRoomMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LecRoomServiceImpl implements LecRoomService {
	
	@Autowired
	private LecRoomMapper lecRoomMapper;
	
	public List<LecRoom> selectAll() {
		return lecRoomMapper.selectAll();
	}
	
	public LecRoom select(int lrCode) {
		return lecRoomMapper.select(lrCode);
	}
	
	public int insert(LecRoom lecRoom) {
		return lecRoomMapper.insert(lecRoom);
	}
	
	public int update(LecRoom lecRoom) {
		return lecRoomMapper.update(lecRoom);
	}
	
	public void delete(LecRoom lecRoom) {
		lecRoomMapper.delete(lecRoom);
	}
	
}
