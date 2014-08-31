package mem.wit.study.lecture;

import java.util.List;

public interface LectureService {
	
	public List<Lecture> selectAll();
	
	public List<Lecture> select(Lecture lecture);
	
	public int insert(Lecture lecture);
	
	public int update(Lecture lecture);
	
	public void delete(Lecture lecture);
}
