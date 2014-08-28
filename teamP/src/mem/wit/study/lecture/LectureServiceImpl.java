package mem.wit.study.lecture;

import java.util.List;

import mem.wit.study.myBatis.LectureMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LectureServiceImpl implements LectureService {
	
	@Autowired
	private LectureMapper lectureMapper;
	
	public List<Lecture> selectAll() {
		return lectureMapper.selectAll();
	}
	
	public Lecture select(String alId) {
		return lectureMapper.select(alId);
	}
	
	public int insert(Lecture lecture) {
		return lectureMapper.insert(lecture);
	}
	
	public int update(Lecture lecture) {
		return lectureMapper.update(lecture);
	}
	
	public void delete(Lecture lecture) {
		lectureMapper.delete(lecture);
	}
	
}
