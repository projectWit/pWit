package mem.wit.study.myBatis;

import java.util.List;

import mem.wit.study.codes.Subject;

public interface SubjectMapper {
	
	public List<Subject> selectAll();
	
	public Subject select(int sbjCode);
	
	public int insert(Subject subject);
	
	public int update(Subject subject);
	
	public void delete(Subject subject);
}
