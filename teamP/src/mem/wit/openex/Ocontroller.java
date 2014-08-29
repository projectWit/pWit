package mem.wit.openex;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.wit.MyBatis;
import com.wit.member.Member;

@Controller
@SuppressWarnings("unchecked")
public class Ocontroller {
	@RequestMapping("/WIT_OPENEX_archive_section.op")
	public ModelAndView acvList(HttpSession session) {
		Member member = (Member) session.getAttribute("member");
		String sessionId = member.getmId();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WIT_OPENEX_archive_section");
		MyBatis m = new MyBatis("mem/wit/openex/OPENEXsqlMapConfig.xml");
		List<OacvDTO> acvList = (List<OacvDTO>) m
				.select("selecAcv",
						"SELECT ACV.ACV_NO, WIT.MID, WIT.MNICKNAME, ACV.ACV_COMMENT, ACV.ACV_DATE, "
								+ "SEG.SEG_NAME, SVG.SVG_NAME "
								+ "FROM O_ARCHIVE ACV, WITMEMBER WIT, O_SetExamG SEG ,O_SolveG SVG "
								+ "WHERE WIT.MID = ACV.MID "
								+ "AND SEG.SEG_NO = ACV.SEG_NO AND SVG.SVG_NO = ACV.SVG_NO "
								+ "AND WIT.MID='" + sessionId + "'");
		List<OacvcDTO> acvcList = (List<OacvcDTO>) m
				.select("selecAcvc",
						"SELECT ACV.ACV_NO, ACVC.ACVC_NO, ACVC.MID, WIT.MNICKNAME, "
								+ "ACVC.ACVC_COMMENT, ACVC.ACVC_DATE, ACVC.ACVC_IP "
								+ "FROM O_ArchiveC ACVC, O_ARCHIVE ACV, WITMEMBER WIT "
								+ "WHERE WIT.MID = ACVC.MID AND ACV.ACV_NO = ACVC.ACV_NO "
								+ "AND ACV.MID='" + sessionId
								+ "' ORDER BY ACVC.ACVC_NO DESC");

		mv.addObject("acvList", acvList);
		mv.addObject("acvcList", acvcList);
		return mv;

	}

	@RequestMapping("/WIT_OPENEX_setExam_section1.op")
	public ModelAndView mSubjecNametList() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WIT_OPENEX_setExam_section1");
		MyBatis m = new MyBatis("mem/wit/openex/OPENEXsqlMapConfig.xml");
		List<OsetExam_mjnameDTO> mjSubNameList = (List<OsetExam_mjnameDTO>) m
				.select("selectMjSubName", "SELECT MJ_NO, MJ_NAME "
						+ "FROM O_MAJORS ORDER BY MJ_NO");
		mv.addObject("mjSubNameList", mjSubNameList);

		List<OsetExam_mdnameDTO> mdSubNameList = (List<OsetExam_mdnameDTO>) m
				.select("selectMdSubName","SELECT MD.MJ_NO, MD.MD_NO, MD.MD_NAME "
						+ "FROM O_MAJORS MJ, O_MIDDLES MD "
						+ "WHERE MJ.MJ_NO = MD.MJ_NO ORDER BY MD.MD_NO");
		mv.addObject("mdSubNameList", mdSubNameList);
		
		return mv;
	}

	@RequestMapping("/WIT_OPENEX_list_section1.op")
	public ModelAndView subjecNametList() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WIT_OPENEX_list_section1");
		MyBatis m = new MyBatis("mem/wit/openex/OPENEXsqlMapConfig.xml");

		List<OSubjecNametListDTO> subNameList = (List<OSubjecNametListDTO>) m
				.select("selectSubName",
						"SELECT MJ.MJ_NO, MJ.MJ_NAME, MD.MD_NO, MD.MD_NAME "
								+ "FROM O_MAJORS MJ, O_MIDDLES MD WHERE MJ.MJ_NO = MD.MJ_NO "
								+ "ORDER BY MD.MJ_NO");
		mv.addObject("subNameList", subNameList);

		List<OSubjecNametListDTO> subNameList1 = (List<OSubjecNametListDTO>) m
				.select("selectSubName",
						"SELECT MJ.MJ_NO, MJ.MJ_NAME, MD.MD_NO, MD.MD_NAME "
								+ "FROM O_MAJORS MJ, O_MIDDLES MD WHERE MJ.MJ_NO = MD.MJ_NO "
								+ "AND MJ.MJ_NO=1" + " ORDER BY MD.MJ_NO");
		mv.addObject("subNameList1", subNameList1);

		List<OSubjecNametListDTO> subNameList2 = (List<OSubjecNametListDTO>) m
				.select("selectSubName",
						"SELECT MJ.MJ_NO, MJ.MJ_NAME, MD.MD_NO, MD.MD_NAME "
								+ "FROM O_MAJORS MJ, O_MIDDLES MD WHERE MJ.MJ_NO = MD.MJ_NO "
								+ "AND MJ.MJ_NO=2" + " ORDER BY MD.MJ_NO");
		mv.addObject("subNameList2", subNameList2);

		List<OSubjecNametListDTO> subNameList3 = (List<OSubjecNametListDTO>) m
				.select("selectSubName",
						"SELECT MJ.MJ_NO, MJ.MJ_NAME, MD.MD_NO, MD.MD_NAME "
								+ "FROM O_MAJORS MJ, O_MIDDLES MD WHERE MJ.MJ_NO = MD.MJ_NO "
								+ "AND MJ.MJ_NO=3" + " ORDER BY MD.MJ_NO");
		mv.addObject("subNameList3", subNameList3);

		List<OSubjecNametListDTO> subNameList4 = (List<OSubjecNametListDTO>) m
				.select("selectSubName",
						"SELECT MJ.MJ_NO, MJ.MJ_NAME, MD.MD_NO, MD.MD_NAME "
								+ "FROM O_MAJORS MJ, O_MIDDLES MD WHERE MJ.MJ_NO = MD.MJ_NO "
								+ "AND MJ.MJ_NO=4" + " ORDER BY MD.MJ_NO");
		mv.addObject("subNameList4", subNameList4);

		List<OSubjecNametListDTO> subNameList5 = (List<OSubjecNametListDTO>) m
				.select("selectSubName",
						"SELECT MJ.MJ_NO, MJ.MJ_NAME, MD.MD_NO, MD.MD_NAME "
								+ "FROM O_MAJORS MJ, O_MIDDLES MD WHERE MJ.MJ_NO = MD.MJ_NO "
								+ "AND MJ.MJ_NO=5" + " ORDER BY MD.MJ_NO");
		mv.addObject("subNameList5", subNameList5);

		List<OSubjecNametListDTO> subNameList6 = (List<OSubjecNametListDTO>) m
				.select("selectSubName",
						"SELECT MJ.MJ_NO, MJ.MJ_NAME, MD.MD_NO, MD.MD_NAME "
								+ "FROM O_MAJORS MJ, O_MIDDLES MD WHERE MJ.MJ_NO = MD.MJ_NO "
								+ "AND MJ.MJ_NO=6" + " ORDER BY MD.MJ_NO");
		mv.addObject("subNameList6", subNameList6);

		List<OSubjecNametListDTO> subNameList7 = (List<OSubjecNametListDTO>) m
				.select("selectSubName",
						"SELECT MJ.MJ_NO, MJ.MJ_NAME, MD.MD_NO, MD.MD_NAME "
								+ "FROM O_MAJORS MJ, O_MIDDLES MD WHERE MJ.MJ_NO = MD.MJ_NO "
								+ "AND MJ.MJ_NO=7" + " ORDER BY MD.MJ_NO");
		mv.addObject("subNameList7", subNameList7);

		List<OSubjecNametListDTO> subNameList8 = (List<OSubjecNametListDTO>) m
				.select("selectSubName",
						"SELECT MJ.MJ_NO, MJ.MJ_NAME, MD.MD_NO, MD.MD_NAME "
								+ "FROM O_MAJORS MJ, O_MIDDLES MD WHERE MJ.MJ_NO = MD.MJ_NO "
								+ "AND MJ.MJ_NO=8" + " ORDER BY MD.MJ_NO");
		mv.addObject("subNameList8", subNameList8);

		List<OSubjecNametListDTO> subNameList9 = (List<OSubjecNametListDTO>) m
				.select("selectSubName",
						"SELECT MJ.MJ_NO, MJ.MJ_NAME, MD.MD_NO, MD.MD_NAME "
								+ "FROM O_MAJORS MJ, O_MIDDLES MD WHERE MJ.MJ_NO = MD.MJ_NO "
								+ "AND MJ.MJ_NO=9" + " ORDER BY MD.MJ_NO");
		mv.addObject("subNameList9", subNameList9);

		List<OSubjecNametListDTO> subNameList10 = (List<OSubjecNametListDTO>) m
				.select("selectSubName",
						"SELECT MJ.MJ_NO, MJ.MJ_NAME, MD.MD_NO, MD.MD_NAME "
								+ "FROM O_MAJORS MJ, O_MIDDLES MD WHERE MJ.MJ_NO = MD.MJ_NO "
								+ "AND MJ.MJ_NO=10" + " ORDER BY MD.MJ_NO");
		mv.addObject("subNameList10", subNameList10);

		return mv;
	}
	
	/*@RequestMapping("/WIT_OPENEX_setExam_section1.op")
	public ModelAndView insertSE(OsetExamDTO osetExamDTO,HttpSession session) {
		Member member = (Member) session.getAttribute("member");
		String sessionId = member.getmId();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WIT_OPENEX_setExam_section1");
		MyBatis m = new MyBatis("mem/wit/openex/OPENEXsqlMapConfig.xml");
		
		
		List<OsetExam_mjnameDTO> mjSubNameList = (List<OsetExam_mjnameDTO>) m
				.insert("insertSE", "SELECT MJ_NO, MJ_NAME "
						+ "FROM O_MAJORS ORDER BY MJ_NO");
		mv.addObject("mjSubNameList", mjSubNameList);
		return mv;
	}*/
}
