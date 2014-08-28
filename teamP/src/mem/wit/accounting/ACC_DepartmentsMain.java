package mem.wit.accounting;

import java.util.ArrayList;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class ACC_DepartmentsMain {

	public static void main(String[] args) {
		ApplicationContext context = new GenericXmlApplicationContext("mem/wit/accounting/Accounting.xml");
		ACC_DepartmentsDAO dao = context.getBean("acc_DepartmentsDAO", ACC_DepartmentsDAO.class);
		ACC_DepartmentsDTO dto = new ACC_DepartmentsDTO(50, "생산부", "생산부");
		dao.add(dto);
		
		/*ArrayList<ACC_DepartmentsDTO> arr= (ArrayList<ACC_DepartmentsDTO>) dao.getAll();
		for(int i=0; i<arr.size(); i++){
			System.out.println(arr.get(i).getdName());
		}
		ACC_DepartmentsDTO dto = dao.get(10);
		System.out.println(dto.getdName());*/
	}

}
