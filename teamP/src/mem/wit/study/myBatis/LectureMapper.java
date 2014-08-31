package mem.wit.study.myBatis;

import java.util.List;

import mem.wit.study.lecture.Lecture;

public interface LectureMapper {
	
	public List<Lecture> selectAll();
	
	public List<Lecture> select(Lecture lecture);
	
	public int insert(Lecture lecture);
	
	public int update(Lecture lecture);
	
	public void delete(Lecture lecture);
}
