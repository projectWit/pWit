package mem.wit.study.codes;

import java.util.List;

import mem.wit.study.myBatis.SubjectMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SubjectServiceImpl implements SubjectService {
	
	@Autowired
	private SubjectMapper subjectMapper;
	
	public List<Subject> selectAll() {
		return subjectMapper.selectAll();
	}
	
	public Subject select(String sbjCode) {
		return subjectMapper.select(sbjCode);
	}
	
	public int insert(Subject subject) {
		return subjectMapper.insert(subject);
	}
	
	public int update(Subject subject) {
		return subjectMapper.update(subject);
	}
	
	public void delete(Subject subject) {
		subjectMapper.delete(subject);
	}
	
}
