package mem.wit.study.codes;

import java.util.List;

import mem.wit.study.myBatis.ExamGradeMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ExamGradeServiceImpl implements ExamGradeService {
	
	@Autowired
	private ExamGradeMapper examGradeMapper;
	
	public List<ExamGrade> selectAll() {
		return examGradeMapper.selectAll();
	}
	
	public ExamGrade select(int egCode) {
		return examGradeMapper.select(egCode);
	}
	
	public int insert(ExamGrade examGrade) {
		return examGradeMapper.insert(examGrade);
	}
	
	public int update(ExamGrade examGrade) {
		return examGradeMapper.update(examGrade);
	}
	
	public void delete(ExamGrade examGrade) {
		examGradeMapper.delete(examGrade);
	}
	
}
