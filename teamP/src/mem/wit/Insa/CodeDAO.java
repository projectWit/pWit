package mem.wit.Insa;

import java.util.List;

import com.wit.MyBatis;

public class CodeDAO {
	static MyBatis myBatis;
	
	public List<HeadDTO> CallHead() {
		String query="select headcd, headname from boardhead";
		List<HeadDTO> alist=(List<HeadDTO>) myBatis.select("searchbHdCd", query);
		return alist;
	}
}
