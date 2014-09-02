package mem.wit.study.lecture;

import java.util.List;

import mem.wit.study.myBatis.LecScheduleMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wit.Paging;

@Service
public class LecScheduleServiceImpl implements LecScheduleService {
	
	@Autowired
	private LecScheduleMapper lecScheduleMapper;
	
//	@Autowired
	private Paging paging;
	
	public List<LecSchedule> selectAll() {
		return lecScheduleMapper.selectAll();
	}
	
	public List<LecSchedule> select(LecScheduleParam lecScheduleParam) {
		return lecScheduleMapper.select(lecScheduleParam);
	}
	
	public int insert(LecSchedule lecSchedule) {
		return lecScheduleMapper.insert(lecSchedule);
	}
	
	public int update(LecSchedule lecSchedule) {
		return lecScheduleMapper.update(lecSchedule);
	}
	
	public void delete(LecSchedule lecSchedule) {
		lecScheduleMapper.delete(lecSchedule);
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
