package mem.wit.study.codes;

import java.util.List;

public interface SubjectService {
	
	public List<Subject> selectAll();
	
	public Subject select(int sbjCode);
	
	public List<Subject> selectByCatCode(int sbjCatCode);
	
	public int insert(Subject subject);
	
	public int update(Subject subject);
	
	public void delete(Subject subject);
}
