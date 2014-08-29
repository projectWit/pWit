package mem.wit.study.codes;

import java.util.List;

public interface SubjectService {
	
	public List<Subject> selectAll();
	
	public Subject select(int sbjCode);
	
	public int insert(Subject subject);
	
	public int update(Subject subject);
	
	public void delete(Subject subject);
}
