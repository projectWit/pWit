package common;

public class TestMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		MemberDAO dao = new MemberDAO();
		int result = dao.checkLogIn("test00", "1111");
		System.out.println("result : "+result);
	}

}
