package mem.wit.study.lecture;

import java.util.List;

import com.wit.Paging;

public interface LectureService {
	
	public List<Lecture> selectAll();
	
	public List<Lecture> select(Lecture lecture);
	
	public int insert(Lecture lecture);
	
	public int update(Lecture lecture);
	
	public void delete(Lecture lecture);
	
	public int getListNo();
	
	public int getPrevLink();
	
	public int getFirstPage();
	
	public int getLastPage();
	
	public int getStartRecord();
	
	public int getEndRecord();
	
	public int getNextLink();

	public int[] getPageLinks();
	
	public void setPaging(Paging paging);
}
