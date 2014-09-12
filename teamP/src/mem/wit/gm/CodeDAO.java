package mem.wit.gm;

import java.util.List;

import com.wit.MyBatis;

public class CodeDAO {
	C_SportDTO dto;
	static MyBatis myBatis;
	
	public CodeDAO() {
		dto = new C_SportDTO();
		myBatis = new MyBatis("mem/wit/gm/GMSqlMapConfig.xml");
	}
	
	public List<C_SportDTO> CallSport() {
		String query = "SELECT sId, sName FROM C_Sport";
		List<C_SportDTO> alist = (List<C_SportDTO>) myBatis.select("searchSport", query);
		System.out.println(alist.size());
		return alist;
	}
	public List<C_PlaceDTO> CallPlace() {
		String query="select pId, place from C_Place";
		List<C_PlaceDTO> alist=(List<C_PlaceDTO>) myBatis.select("searchPlace", query);
		return alist;
	}
	public List<CdTelAreaDTO> CallTel() {
		String query="select taCode, taNum from CdTelArea";
		List<CdTelAreaDTO> alist=(List<CdTelAreaDTO>) myBatis.select("searchTel", query);
		return alist;
	}
	public List<FacilDTO> CallFacil() {
		String query="select fId, fName from GM_Facil";
		List<FacilDTO> alist=(List<FacilDTO>) myBatis.select("searchFacil", query);
		return alist;
	}
	public List<C_TypeDTO> CallType() {
		String query="select tId, tName from C_Type";
		List<C_TypeDTO> alist=(List<C_TypeDTO>) myBatis.select("searchType", query);
		return alist;
	}
	
	public List<C_PTimeDTO> CallPTime() {
		String query="select pId, pTime from C_PTime";
		List<C_PTimeDTO> alist=(List<C_PTimeDTO>) myBatis.select("searchTime", query);
		return alist;
	}
	public List<MemberDTO> CheckId(String id) {
		String query="select mId, mName, mMobile from Witmember where mId like '"+id+"'";
		List<MemberDTO> alist = (List<MemberDTO>) myBatis.select("searchId", query);
		return alist;
	}
	public List<ClubDTO> CheckClub(String id) {
		String query="select c.cId, cName, sName from GM_Member g, GM_Club c, C_Sport s where s.sId=c.sId and g.mId=c.cPresident and g.mId='"+id+"'";
		List<ClubDTO> alist = (List<ClubDTO>) myBatis.select("searchClub", query);
		return alist;
	}
	public List<TeacherDTO> CheckTeacher(String eId) {
		String query="select e.eId, tNum, eKName from GM_Teacher t, Employee e where t.eId=e.eId and t.eId='"+eId+"'";
		List<TeacherDTO> alist = (List<TeacherDTO>) myBatis.select("searchTea", query);
		return alist;
	}
	public String InsertClub(ClubDTO dto) {
		myBatis.insert("insertClub", dto);
		return "insert";
	}
}
