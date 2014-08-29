package mem.wit.accounting;

import java.util.ArrayList;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class ACC_CompanyMain {

	public static void main(String[] args) {
		ApplicationContext context = new GenericXmlApplicationContext("mem/wit/accounting/Accounting.xml");
		ACC_CompanyDAO dao = context.getBean("acc_CompanyDAO", ACC_CompanyDAO.class);
		ACC_CompanyDTO dto = new ACC_CompanyDTO(2, "글로벌", 148852, "광진구 중곡동", "010-3817-0000", "휴대폰", "휴대폰관련");
		dao.add(dto);
		
		/*ArrayList<ACC_AccountsDTO> arr= (ArrayList<ACC_AccountsDTO>) dao.getAll();
		for(int i=0; i<arr.size(); i++){
			System.out.println(arr.get(i).getaName());
		}
		ACC_AccountsDTO dto = dao.get(2);
		System.out.println(dto.getaName());*/
	}

}
