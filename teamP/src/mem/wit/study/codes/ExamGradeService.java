package mem.wit.study.codes;

import java.util.List;

public interface ExamGradeService {
	
	public List<ExamGrade> selectAll();
	
	public ExamGrade select(int sgCode);
	
	public int insert(ExamGrade examGrade);
	
	public int update(ExamGrade examGrade);
	
	public void delete(ExamGrade examGrade);
}
