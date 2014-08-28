package mem.wit.study.lecture;

import java.util.List;

public interface LectureService {
	
	public List<Lecture> selectAll();
	
	public Lecture select(String alId);
	
	public int insert(Lecture lecture);
	
	public int update(Lecture lecture);
	
	public void delete(Lecture lecture);
}
