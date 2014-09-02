package mem.wit.study.lecture;

import java.util.List;

public interface LecDayService {
	
	public List<LecDay> selectAll();
	
	public List<LecDay> select(int lsId);
	
	public int insert(LecDay lecDay);
	
	public int update(LecDay lecDay);
	
	public void delete(LecDay lecDay);
}
