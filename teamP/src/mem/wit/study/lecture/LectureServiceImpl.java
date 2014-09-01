package mem.wit.study.lecture;

import java.util.List;

import mem.wit.study.myBatis.LectureMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wit.Paging;

@Service
public class LectureServiceImpl implements LectureService {
	
	@Autowired
	private LectureMapper lectureMapper;
	
//	@Autowired
	private Paging paging;
	
	public List<Lecture> selectAll() {
		return lectureMapper.selectAll();
	}
	
	public List<Lecture> select(Lecture lecture) {
		return lectureMapper.select(lecture);
	}
	
	public int insert(Lecture lecture) {
		return lectureMapper.insert(lecture);
	}
	
	public int update(Lecture lecture) {
		return lectureMapper.update(lecture);
	}
	
	public void delete(Lecture lecture) {
		lectureMapper.delete(lecture);
	}
	
	public int getListNo() {
		return paging.getListNo();
	}
	
	public int getPrevLink() {
		return paging.getPrevLink();
	}
	
	public int getFirstPage() {
		return paging.getFirstPage();
	}
	
	public int getLastPage() {
		return paging.getLastPage();
	}
	
	public int getStartRecord() {
		return paging.getStartRecord();
	}
	
	public int getEndRecord() {
		return paging.getEndRecord();
	}
	
	public int getNextLink() {
		return paging.getNextLink();
	}

	public int[] getPageLinks() {
		return paging.getPageLinks();
	}
	
	public void setPaging(Paging paging) {
		this.paging = paging;
	}
	public Paging getPaging() {
		return this.paging;
	}
	
}
