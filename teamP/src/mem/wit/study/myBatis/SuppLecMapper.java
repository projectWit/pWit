package mem.wit.study.myBatis;

import java.util.List;

import mem.wit.study.codes.SuppLec;

public interface SuppLecMapper {
	
	public List<SuppLec> selectAll();
	
	public SuppLec select(int slCode);
	
	public int insert(SuppLec suppLec);
	
	public int update(SuppLec suppLec);
	
	public void delete(SuppLec suppLec);
}
