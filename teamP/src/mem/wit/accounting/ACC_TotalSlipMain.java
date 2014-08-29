package mem.wit.accounting;

import java.util.ArrayList;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class ACC_TotalSlipMain {

	public static void main(String[] args) {
		ApplicationContext context = new GenericXmlApplicationContext(
				"mem/wit/accounting/Accounting.xml");
		ACC_TotalSlipDAO dao = context.getBean("acc_TotalSlipDAO",
				ACC_TotalSlipDAO.class);
		/*ACC_TotalSlipDTO dto = new ACC_TotalSlipDTO(2, "2014/08/27", 1,
				1, 1, 1, 550000, 1, 55000, "다산-외상매출금입금.", 1, "", "10001", 1, 5);
		dao.add(dto);*/

	
		 ArrayList<ACC_TotalSlipDTO> arr= (ArrayList<ACC_TotalSlipDTO>) dao.getAll(); 
		 for(int i=0; i<arr.size(); i++){
		 System.out.println(arr.get(i).getTsContents()); } 
		 ACC_TotalSlipDTO dto = dao.get(2); System.out.println(dto.getTsContents());
	}
}
