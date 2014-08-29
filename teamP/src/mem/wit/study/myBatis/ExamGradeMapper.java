package mem.wit.study.myBatis;

import java.util.List;

import mem.wit.study.codes.ExamGrade;

public interface ExamGradeMapper {
	
	public List<ExamGrade> selectAll();
	
	public ExamGrade select(int sgCode);
	
	public int insert(ExamGrade examGrade);
	
	public int update(ExamGrade examGrade);
	
	public void delete(ExamGrade examGrade);
}
