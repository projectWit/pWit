package mem.wit.accounting;

import java.util.ArrayList;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class ACC_DepreciationMain {

	public static void main(String[] args) {
		ApplicationContext context = new GenericXmlApplicationContext("mem/wit/accounting/Accounting.xml");
		ACC_DepreciationDAO dao = context.getBean("acc_DepreciationDAO", ACC_DepreciationDAO.class);
		/*ACC_DpreciationDTO dto = new ACC_DpreciationDTO(3, "생산량비례법", "생산량, 사용량에 비례하여 계산");
		dao.add(dto);*/
		
		ArrayList<ACC_DpreciationDTO> arr= (ArrayList<ACC_DpreciationDTO>) dao.getAll();
		for(int i=0; i<arr.size(); i++){
			System.out.println(arr.get(i).geteName());
		}
		ACC_DpreciationDTO dto = dao.get(3);
		System.out.println(dto.geteName());
	}

}
