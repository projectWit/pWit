package mem.wit.pShopping06;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.SQLException;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.sun.corba.se.spi.ior.MakeImmutable;


public class Test {

	public static void main(String[] args) throws ClassNotFoundException, SQLException, IOException {
/*		ApplicationContext context = new GenericXmlApplicationContext("applicationContext.xml");

		
		WITMemberDAO dao = context.getBean("wirMemberDAO", WITMemberDAO.class);
		dao.add(new WITMemberDTO("shop_004","1234","이순라","이순라",462,"103동 1002호","02-525-4566","010-5843-7583","sunra2@nate.com","1993-07-22"));
		dao.add(new WITMemberDTO("shop_005","1234","놀기만","놀기만",462,"105동 704호","02-4323-3444","010-4783-5784","nol999@wit.com","2000-01-01"));
		dao.add(new WITMemberDTO("shop_006","1234","류별나","류별나",462,"106동 1023호","02-777-7777","010-7584-7602","star123@wit.com","2001-12-25"));
		dao.add(new WITMemberDTO("shop_007","1234","채시라","채시라",462,"107동 432호","02-433-4367","010-6959-6598","sirache@naver.com","1999-04-11"));l
		dao.add(new WITMemberDTO("shop_008","1234","이성계","이성계",463,"234호","02-4738-4545","010-6004-6005","leesk@nate.com","1982-11-05"));

		shop_009,p1234,무궁화,무궁화,463,357-3,02-438-4234,010-4378-6060,mugung@wit.com,1999-06-26
		shop_010,p1234,임꺽정,임꺽정,463,343-31,02-4382-3423,010-5945-8605,leemkj@apple.com,1995-03-24
		shop_011,p1234,개똥이,개똥이,463,342호,02-344-4532,010-4834-6890,doong2@wit.com,1955-01-23
		shop_012,p1234,공부만,공부만,464,112동 23호,02-432-4658,010-5804-9605,studyonly@wit.com,2000-08-14
		shop_013,p1234,채송화,채송화,464,129동 433호,02-135-5888,010-4893-5405,songflower@wit.com,2003-12-07,1,2013-07-06,1,1,1,213
		shop_014,p1234,이미라,이미라,464,201동 353호,02-564-4456,010-4893-5045,miralee@apple.com,1994-12-08,1,2014-02-15,1,1,1,214
		shop_015,p1234,공부해,공부해,464,202동 717호,02-532-6677,010-4890-5804,kong777@wit.com,1997-11-25,1,2014-03-22,1,2,1,215
		shop_016,p1234,유명한,유명한,465,301동 210호,02-455-5345,010-4304-5804,star777@wit.com,1997-11-21,1,2014-04-17,1,2,1,216
		shop_017,p1234,무궁화,무궁화,465,205동 344호,02-245-1234,010-4060-6800,mugung2@wit.com,1987-04-27,1,2012-07-27,1,2,1,217
		shop_018,p1234,최진실,최진실,465,100동 100호,02-554-6778,010-4833-5604,jinsil@wit.com,1987-04-22,1,2014-03-19,1,1,1,218
		shop_019,p1234,김유신,김유신,465,105동 704호,02-555-6645,010-4803-5603,general2@wit.com,1973-02-12,1,2014-06-25,1,2,1,219
		shop_020,p1234,강감찬,강감찬,465,230동 200호,02-455-5665,010-1044-9547,jeneral3@apple.com,1970-11-23,1,2014-07-20,1,1,1,220
*/
		
/*		ZipcodesDAO dao = context.getBean("zipcodesDAO", ZipcodesDAO.class);
		ZipcodesDTO zip = dao.get(33);
		System.out.println(zip.getDong());
		List<ZipcodesDTO> zips = dao.searchDong("동춘");
		for(int i=0; i<zips.size(); i++) {
			System.out.println(zips.get(i).getZipcode() + ":" +zips.get(i).getDong());
		}*/
		
		
/*		WSSellerDAO dao = context.getBean("wsSellerDAO", WSSellerDAO.class);
		WSSellerDTO sel = new WSSellerDTO("apple7", "1234", "스티브 박스", 345777, "미국 미주리주 734","1234567890123", "002023456969", null, "apple@apple.com", null, 1 );
		dao.add(sel);
		WSSellerDTO sel2 = dao.get("apple7");
		System.out.println(sel2.getSel_name());*/
		
		/*WSQnaDAO qna_dao = context.getBean("wsQnaDAO",WSQnaDAO.class);
		WSQnaDTO qna = new WSQnaDTO(2321,"apple",1,"여기는 제주도인데 배송 되나요?", 0, 0, null);
		qna_dao.add(qna);
		WSQnaDTO qna2 = qna_dao.get(2329);
		System.out.println(qna2.getQna_content());*/
		
		/*WSReviewDAO dao = context.getBean("wsReviewDAO", WSReviewDAO.class);
		WSReviewDTO rev = new WSReviewDTO(12312,"apple","참 좋습니다.",5,0,"date");
		dao.add(rev);*/
		
		//Test test = new Test();
		//test.makeNationCode("/국가코드.txt");		// 국가코드 테이블 만드는 명령문임..
		//test.makePayRefCode("/지불방법.txt");		// 지불방법 테이블 만듬.
		//test.makeDelvRefCode("/배송비결제방법.txt");
		//test.makeMainCateCode("/상품대분류코드.txt");
		//test.makeSubCateCode("/상품중분류코드.txt");
		
	}
	
	public int addSeller(WSSellerDTO seller) {
		ApplicationContext context = new GenericXmlApplicationContext("applicationContext.xml");
		WSSellerDAO dao = context.getBean("wsSellerDAO", WSSellerDAO.class);
		return dao.add(seller);
	}

	public List<WSNationDTO> getAllNations() {
		ApplicationContext context = new GenericXmlApplicationContext("applicationContext.xml");
		WSNationDAO dao = context.getBean("wsNationDAO", WSNationDAO.class);
		return dao.getAll();		
	}
	
	public List<WSMainCateDTO> getAllMainCates() {
		ApplicationContext context = new GenericXmlApplicationContext("applicationContext.xml");
		WSMainCateDAO dao = context.getBean("wsMainCateDAO", WSMainCateDAO.class);
		return dao.getAll();		
	}
	
	public List<WSSubCateDTO> getAllSubCates(int mct) {
		ApplicationContext context = new GenericXmlApplicationContext("applicationContext.xml");
		WSSubCateDAO dao = context.getBean("wsSubCateDAO", WSSubCateDAO.class);
		return dao.getAll(mct);		
	}
	
	public void makeNationCode(String codefile) throws IOException 
	{
		ApplicationContext context = new GenericXmlApplicationContext("applicationContext.xml");
		WSNationDAO dao = context.getBean("wsNationDAO", WSNationDAO.class);
		WSNationDTO nat = new WSNationDTO();		
		BufferedReader b = new BufferedReader(new FileReader(codefile));
		String line;
		int i = 0;
		while ((line = b.readLine()) != null) // 라인의 값이 null 이 될때까지 읽어냄
		{
			
			String nation="";
			for(int j=0; j<line.length(); j++) {
				if(line.charAt(j)>='0' && line.charAt(j)<='9' ) {
					nation = line.substring(0, j-1);
					nat.setNat_name(nation);
					nat.setNat_code(i);
					break;
				}
			}				
			if(i!=0) dao.add(nat);			
			println(i + " line : " + nation);
			i++;
			delay();
		}
		b.close();
		
	}
	
	public void makePayRefCode(String file) throws IOException {
		ApplicationContext context = new GenericXmlApplicationContext("applicationContext.xml");
		WSPayRefDAO dao = context.getBean("wsPayRefDAO", WSPayRefDAO.class);
		WSPayRefDTO pay = new WSPayRefDTO();		
		BufferedReader b = new BufferedReader(new FileReader(file));
		String line="";
		int i = 0;
		while ((line = b.readLine()) != null) // 라인의 값이 null 이 될때까지 읽어냄
		{
			pay.setPay_code(i);
			pay.setPay_type(line);
			if(i!=0) dao.add(pay);			
			println(i + " line : " + line);
			i++;
			delay();
		}
		b.close();		
	}

	
	public void makeDelvRefCode(String file) throws IOException {
		ApplicationContext context = new GenericXmlApplicationContext("applicationContext.xml");
		WSDelvRefDAO dao = context.getBean("wsDelvRefDAO", WSDelvRefDAO.class);
		WSDelvRefDTO dlv = new WSDelvRefDTO();		
		BufferedReader b = new BufferedReader(new FileReader(file));
		String line="";
		int i = 0;
		while ((line = b.readLine()) != null) // 라인의 값이 null 이 될때까지 읽어냄
		{
			dlv.setDlv_code(i);
			dlv.setDlv_type(line);
			if(i!=0) dao.add(dlv);			
			println(i + " line : " + line);
			i++;
			delay();
		}
		b.close();		
	}
	
	public void makeMainCateCode(String file) throws IOException {
		ApplicationContext context = new GenericXmlApplicationContext("applicationContext.xml");
		WSMainCateDAO dao = context.getBean("wsMainCateDAO", WSMainCateDAO.class);
		WSMainCateDTO mct = new WSMainCateDTO();		
		//BufferedReader b = new BufferedReader(new FileReader(file));
		BufferedReader b = new BufferedReader(new InputStreamReader(new FileInputStream(file),"UTF-8"));
		String line="";
		int i = 0;
		while ((line = b.readLine()) != null) // 라인의 값이 null 이 될때까지 읽어냄
		{
			mct.setMct_code(i);
			mct.setMct_name(line);
			if(i!=0) dao.add(mct);
			
			println(i + " line : " + line);
			i++;
			delay();
		}
		b.close();		
	}
	
	public void makeSubCateCode(String file) throws IOException {
		ApplicationContext context = new GenericXmlApplicationContext("applicationContext.xml");
		WSSubCateDAO dao = context.getBean("wsSubCateDAO", WSSubCateDAO.class);
		WSSubCateDTO sct = new WSSubCateDTO();		
		//BufferedReader b = new BufferedReader(new FileReader(file));
		BufferedReader b = new BufferedReader(new InputStreamReader(new FileInputStream(file),"UTF-8"));
		String line="";
		int i=0;
		int mctCode=-1;
		while ((line = b.readLine()) != null) // 라인의 값이 null 이 될때까지 읽어냄
		{
			if(line.length()==1) {
				i=1;
				mctCode++;
				continue;
			}
			sct.setSct_code(i);
			sct.setSct_name(line);
			sct.setSct_mctCode(mctCode);
			dao.add(sct);
			
			println(i + " line : " + line +"main cate : " + mctCode);
			i++;
		}
		b.close();		
	}
	
	public List<ZipcodesDTO>searchZipcode(String dong) {
		ApplicationContext context = new GenericXmlApplicationContext("applicationContext.xml");
		ZipcodesDAO dao = context.getBean("zipcodesDAO", ZipcodesDAO.class);
		return dao.searchDong(dong);		
	}
	
	private void delay() {
		for(int k=0; k<500000000; k++) {
			double n = 7.1/3.14;		
		}
	}

	private void println(String string) {
		// TODO Auto-generated method stub
		System.out.println(string);
	}
	
	
	

}
