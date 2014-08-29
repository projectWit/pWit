package mem.wit.accounting;

import java.util.ArrayList;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class ACC_FixedAssetsMain {

	public static void main(String[] args) {
		ApplicationContext context = new GenericXmlApplicationContext("mem/wit/accounting/Accounting.xml");
		ACC_FixedAssetsDAO dao = context.getBean("acc_FixedAssetsDAO", ACC_FixedAssetsDAO.class);
		/*ACC_FixedAssetsDTO dto = new ACC_FixedAssetsDTO(1, "책상", "", 500000, 10, 1, "책상 10개 매입", 1, "10001", 36);
		dao.add(dto);*/
		
		/*ArrayList<ACC_FixedAssetsDTO> arr= (ArrayList<ACC_FixedAssetsDTO>) dao.getAll();
		for(int i=0; i<arr.size(); i++){
			System.out.println(arr.get(i).getfName());
		}
		ACC_FixedAssetsDTO dto = dao.get(1);
		System.out.println(dto.getfName());*/
	}

}
