package mem.wit.study.user;

import java.util.List;

public interface RegLecListService {
	
	public List<RegLecList> selectAll();
	
	public List<RegLecList> select(RegLecList regLecList);
	
	public int insert(RegLecList regLecList);
	
	public int update(RegLecList regLecList);
	
	public void delete(RegLecList regLecList);
}
