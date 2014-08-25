package common;

import gss.MyBatis;

import java.util.ArrayList;

public class MemberDAO {

	MemberDTO dto;
	static MyBatis myBatis;
	
	public MemberDAO() {
		dto = new MemberDTO();
		myBatis = new MyBatis("sqlMapConfig.xml");
	}
	
	public int checkLogIn(String pId, String pPwd) {
		// result 0 : id 불일치
		// result 1 : id 일치, pwd 불일치
		// result 2 : id, pwd 모두 일치
		int result = 0;
		
		String query = "SELECT mId, mPwd FROM WitMember WHERE mId='"+pId+"'";
		ArrayList<MemberDTO> alist = (ArrayList<MemberDTO>)myBatis.select("memberSelect_basic", query);
		
		
		if (alist.size() == 0) {	
							// id와 일치하는 레코드가 없음. id 불일치
		} else {
			dto = alist.get(0);
			System.out.println("mId : "+dto.getmId()+", mPwd : "+dto.getmPwd());
			if (dto.getmPwd().equals(pPwd)) { 
				result = 2;	// id와 일치하고 pwd도 일치
			} else {	
				result = 1;	// id일치, pwd불일치
			}
		}
		return result;
	}
	
}
