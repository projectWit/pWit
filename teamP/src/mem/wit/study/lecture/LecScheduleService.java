package mem.wit.study.lecture;

import java.util.List;

import com.wit.Paging;

public interface LecScheduleService {
	
	public List<LecSchedule> selectAll();
	
	public List<LecSchedule> select(LecScheduleParam lecScheduleParam);
	
	public int insert(LecSchedule lecSchedule);
	
	public int update(LecSchedule lecSchedule);
	
	public void delete(LecSchedule lecSchedule);
	
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
