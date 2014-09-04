package mem.wit.study.myBatis;

import java.util.List;

import mem.wit.study.user.RegLecList;

public interface RegLecListMapper {
	
	public List<RegLecList> selectAll();
	
	public List<RegLecList> select(RegLecList regLecList);
	
	public int insert(RegLecList regLecList);
	
	public int update(RegLecList regLecList);
	
	public void delete(RegLecList regLecList);
}
