package packOPENEX;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.wit.MyBatis;

@Controller
@SuppressWarnings("unchecked")
public class Ocontroller {
	@RequestMapping("/WIT_OPENEX_archive_section.op")
	public ModelAndView acvList() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WIT_OPENEX_archive_section");
		MyBatis m = new MyBatis("packOPENEX/OPENEXsqlMapConfig.xml");
		List<OacvDTO> acvList = (List<OacvDTO>) m
				.select("selecAcv",
						"SELECT ACV.ACV_NO, WIT.MID, WIT.MNICKNAME, ACV.ACV_COMMENT, ACV.ACV_DATE, "
								+ "SEG.SEG_NAME, SVG.SVG_NAME "
								+ "FROM O_ARCHIVE ACV, WITMEMBER WIT, O_SetExamG SEG ,O_SolveG SVG "
								+ "WHERE WIT.MID = ACV.MID "
								+ "AND SEG.SEG_NO = ACV.SEG_NO AND SVG.SVG_NO = ACV.SVG_NO "
								+ "AND WIT.MID='admin_gm'");
		List<OacvcDTO> acvcList = (List<OacvcDTO>) m
				.select("selecAcvc",
						"SELECT ACV.ACV_NO, ACVC.ACVC_NO, ACVC.MID, WIT.MNICKNAME, "
						+ "ACVC.ACVC_COMMENT, ACVC.ACVC_DATE, ACVC.ACVC_IP "
						+ "FROM O_ArchiveC ACVC, O_ARCHIVE ACV, WITMEMBER WIT "
						+ "WHERE WIT.MID = ACVC.MID AND ACV.ACV_NO = ACVC.ACV_NO "
						+ "AND ACV.MID='admin_gm' ORDER BY ACVC.ACVC_NO DESC");
		
		mv.addObject("acvList", acvList);
		mv.addObject("acvcList", acvcList);
		return mv;
	}
}
