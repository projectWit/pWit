package mem.wit.study.codes;

import java.util.List;

public interface SuppLecService {
	
	public List<SuppLec> selectAll();
	
	public SuppLec select(int slCode);
	
	public int insert(SuppLec suppLec);
	
	public int update(SuppLec suppLec);
	
	public void delete(SuppLec suppLec);
}
