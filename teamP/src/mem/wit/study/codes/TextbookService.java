package mem.wit.study.codes;

import java.util.List;

public interface TextbookService {
	
	public List<Textbook> selectAll();
	
	public Textbook select(String tbCode);
	
	public int insert(Textbook textbook);
	
	public int update(Textbook textbook);
	
	public void delete(Textbook textbook);
}
