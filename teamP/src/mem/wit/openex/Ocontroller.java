package mem.wit.openex;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.wit.MyBatis;
import com.wit.member.Member;

@Controller
@SuppressWarnings("unchecked")
public class Ocontroller {
	ModelAndView mv = new ModelAndView();

	// 아카이브 출력 : 사용자 정보
	@RequestMapping("/WIT_OPENEX_archive_section.op")
	public ModelAndView acvList(HttpSession session, HttpServletRequest request) {
		Member member = (Member) session.getAttribute("member");
		String MID = member.getmId();
		mv.setViewName("WIT_OPENEX_archive_section");
		MyBatis m = new MyBatis("mem/wit/openex/OPENEXsqlMapConfig.xml");
		List<OacvDTO> acvList = (List<OacvDTO>) m
				.select("selecAcv",
						"SELECT ACV.ACV_NO, WIT.MID, WIT.MNICKNAME, ACV.ACV_COMMENT, ACV.ACV_DATE, "
								+ "SEG.SEG_NAME, SVG.SVG_NAME "
								+ "FROM O_ARCHIVE ACV, WITMEMBER WIT, O_SetExamG SEG ,O_SolveG SVG "
								+ "WHERE WIT.MID = ACV.MID "
								+ "AND SEG.SEG_NO = ACV.SEG_NO AND SVG.SVG_NO = ACV.SVG_NO "
								+ "AND WIT.MID='" + MID + "'");
		List<OacvcDTO> acvcList = (List<OacvcDTO>) m
				.select("selecAcvc",
						"SELECT ACV.ACV_NO, ACVC.ACVC_NO, ACVC.MID, WIT.MNICKNAME, "
								+ "ACVC.ACVC_COMMENT, ACVC.ACVC_DATE, ACVC.ACVC_IP "
								+ "FROM O_ArchiveC ACVC, O_ARCHIVE ACV, WITMEMBER WIT "
								+ "WHERE WIT.MID = ACVC.MID AND ACV.ACV_NO = ACVC.ACV_NO "
								+ "AND ACV.MID='" + MID
								+ "' ORDER BY ACVC.ACVC_NO DESC");

		List<OacvSEDTO> selecAcvSE = (List<OacvSEDTO>) m
				.select("selecAcvSE",
						"SELECT SE.EX_NO, WIT.MNICKNAME, SE.EXTIMELIMIT, SE.EX_QUESTIONSCOUNT, "
								+ "SE.EX_TITLE, SE.EX_EXPLAIN, SE.EX_READCOUNT, SE.EX_RECOMMENDCOUNT, "
								+ "SE.EX_DATE, MJS.MJ_NAME, MDS.MD_NAME, SE.EX_MNNAME, DIF.DIF_GRADE "
								+ "FROM WITMEMBER WIT, O_SETEXAM SE, O_ARCHIVE ACV, O_MIDDLES MDS, O_MAJORS MJS, "
								+ "O_DIFFICULTY DIF WHERE SE.MID = ACV.MID AND WIT.MID = SE.MID "
								+ "AND ACV.MID = SE.MID AND MDS.MD_NO = SE.MD_NO "
								+ "AND MJS.MJ_NO = MDS.MJ_NO AND DIF.DIF_NO=SE.DIF_NO "
								+ "AND SE.MID = '" + MID
								+ "' ORDER BY SE.EX_NO DESC");

		List<OacvSOLDTO> selecAcvSOL = (List<OacvSOLDTO>) m
				.select("selecAcvSOL",
						"SELECT REC.REC_NO, REC.EX_NO, REC.REC_TIME, REC.REC_DATE, WIT.MNICKNAME, "
								+ "SE.EXTIMELIMIT, SE.EX_QUESTIONSCOUNT, SE.EX_TITLE, SE.EX_EXPLAIN, "
								+ "SE.EX_READCOUNT, SE.EX_RECOMMENDCOUNT, MJS.MJ_NAME, MDS.MD_NAME, "
								+ "DIF.DIF_GRADE FROM WITMEMBER WIT, O_SETEXAM SE, O_ARCHIVE ACV, "
								+ "O_MIDDLES MDS, O_MAJORS MJS, O_DIFFICULTY DIF, O_RECORD REC "
								+ "WHERE WIT.MID = REC.MID AND MDS.MD_NO = SE.MD_NO AND "
								+ "MJS.MJ_NO = MDS.MJ_NO AND DIF.DIF_NO = SE.DIF_NO AND "
								+ "REC.EX_NO = SE.EX_NO AND REC.MID = ACV.MID "
								+ "AND REC.MID = '" + MID
								+ "' ORDER BY REC.REC_NO DESC");

		mv.addObject("acvList", acvList);
		mv.addObject("acvcList", acvcList);
		mv.addObject("selecAcvSE", selecAcvSE);
		mv.addObject("selecAcvSOL", selecAcvSOL);
		return mv;

	}

	// 출제 출력 : 대, 중분류
	@RequestMapping("/WIT_OPENEX_setExam_section1.op")
	public ModelAndView mSubjecNametList() {
		mv.setViewName("WIT_OPENEX_setExam_section1");
		MyBatis m = new MyBatis("mem/wit/openex/OPENEXsqlMapConfig.xml");
		List<OsetExam_mjnameDTO> mjSubNameList = (List<OsetExam_mjnameDTO>) m
				.select("selectMjSubName", "SELECT MJ_NO, MJ_NAME "
						+ "FROM O_MAJORS ORDER BY MJ_NO");
		mv.addObject("mjSubNameList", mjSubNameList);

		List<OsetExam_mdnameDTO> mdSubNameList = (List<OsetExam_mdnameDTO>) m
				.select("selectMdSubName",
						"SELECT MD.MJ_NO, MD.MD_NO, MD.MD_NAME "
								+ "FROM O_MAJORS MJ, O_MIDDLES MD "
								+ "WHERE MJ.MJ_NO = MD.MJ_NO ORDER BY MD.MD_NO");
		mv.addObject("mdSubNameList", mdSubNameList);

		return mv;
	}

	// 입력 : 출제 시험, 문항
	@RequestMapping("/WIT_OPENEX_setExam_section4.op")
	public ModelAndView insertSE(HttpServletRequest request, HttpSession session) {
		mv.setViewName("WIT_OPENEX_list_section1");
		Member member = (Member) session.getAttribute("member");
		String sessionId = member.getmId();
		OsetExamDTO dto = new OsetExamDTO();
		MyBatis m = new MyBatis("mem/wit/openex/OPENEXsqlMapConfig.xml");
		dto.setMID(sessionId);
		dto.setEXTIMELIMIT(Integer.parseInt(request.getParameter("EXTIMELIMIT")));
		dto.setDIF_NO(Integer.parseInt(request.getParameter("DIF_NO")));
		dto.setEX_QUESTIONSCOUNT(Integer.parseInt(request
				.getParameter("EX_QUESTIONSCOUNT")));
		dto.setEX_TITLE(request.getParameter("EX_TITLE"));
		dto.setEX_EXPLAIN(request.getParameter("EX_EXPLAIN"));
		dto.setEX_RECOMMENDLECTURE(request.getParameter("EX_RECOMMENDLECTURE"));
		dto.setEX_REFERENCE(request.getParameter("EX_REFERENCE"));
		dto.setMD_NO(Integer.parseInt(request.getParameter("MD_NO")));
		dto.setEX_MNNAME(request.getParameter("EX_MNNAME"));
		m.insert("insertSE", dto);

		for (int i = 1; i <= dto.getEX_QUESTIONSCOUNT(); i++) {
			OsetExamQueDTO Qdto = new OsetExamQueDTO();
			Qdto.setQUE_USERSUBJECT("사용자 주제를 입력하세요");
			Qdto.setQUE_CONTENT("본문을 입력하세요");
			Qdto.setQUE_SCORE(0);
			Qdto.setQUE_EXAMPLE1("보기를 입력하세요");
			Qdto.setQUE_EXAMPLE2("보기를 입력하세요");
			Qdto.setQUE_EXAMPLE3("보기를 입력하세요");
			Qdto.setQUE_EXAMPLE4("보기를 입력하세요");
			Qdto.setQUE_EXAMPLE5("보기를 입력하세요");
			Qdto.setQUE_RIGHTANSWER(1);
			Qdto.setQUE_QNO(i);
			m.insert("insertQUE", Qdto);
		}

		return new ModelAndView(
				"redirect:http:/teamP/cooperation/_OPENEX/WIT_OPENEX_setExam2.jsp");
	}

	// 수정 : 시험 문항
	@RequestMapping("/WIT_OPENEX_setExam_section6.op")
	public ModelAndView updateQUE(HttpServletRequest request) {
		mv.setViewName("WIT_OPENEX_setExam2");
		MyBatis m = new MyBatis("mem/wit/openex/OPENEXsqlMapConfig.xml");

		OsetExamQueDTO Qdto = new OsetExamQueDTO();
		Qdto.setEX_NO(Integer.parseInt(request.getParameter("EX_NO")));
		Qdto.setQUE_USERSUBJECT(request.getParameter("QUE_USERSUBJECT"));
		Qdto.setQUE_CONTENT(request.getParameter("QUE_CONTENT"));
		Qdto.setQUE_SCORE(Integer.parseInt(request.getParameter("QUE_SCORE")));
		Qdto.setQUE_EXAMPLE1(request.getParameter("QUE_EXAMPLE1"));
		Qdto.setQUE_EXAMPLE2(request.getParameter("QUE_EXAMPLE2"));
		Qdto.setQUE_EXAMPLE3(request.getParameter("QUE_EXAMPLE3"));
		Qdto.setQUE_EXAMPLE4(request.getParameter("QUE_EXAMPLE4"));
		Qdto.setQUE_EXAMPLE5(request.getParameter("QUE_EXAMPLE5"));
		Qdto.setQUE_RIGHTANSWER(Integer.parseInt(request
				.getParameter("QUE_RIGHTANSWER")));
		Qdto.setQUE_QNO(Integer.parseInt(request.getParameter("QUE_QNO")));
		m.insert("updateQUE", Qdto);

		return mv;
	}

	// 입력 : 시험 최종 완료
	@RequestMapping("/WIT_OPENEX_setExam_section7.op")
	public ModelAndView SEsubmit(HttpSession session, HttpServletRequest request) {
		MyBatis m = new MyBatis("mem/wit/openex/OPENEXsqlMapConfig.xml");
		Member member = (Member) session.getAttribute("member");
		String sessionId = member.getmId();
		String MID = sessionId;
		int EX_NO = Integer.parseInt(request.getParameter("EX_NO"));
		m.insert("updateSElast", "UPDATE O_SETEXAM SET EX_CONFIRM = 1 "
				+ "WHERE EX_NO = '" + EX_NO + "' AND MID = '" + MID + "'");

		return new ModelAndView(
				"redirect:http:/teamP/cooperation/_OPENEX/WIT_OPENEX_list.jsp");
	}

	// 출력 : 출제한 시험
	@RequestMapping("/WIT_OPENEX_setExam_section2.op")
	public ModelAndView selectSEList(HttpSession session,
			HttpServletRequest request) {
		mv.setViewName("WIT_OPENEX_setExam_section2");
		Member member = (Member) session.getAttribute("member");
		String sessionId = member.getmId();
		MyBatis m = new MyBatis("mem/wit/openex/OPENEXsqlMapConfig.xml");
		List<OsetExamListDTO> selectSEList = (List<OsetExamListDTO>) m
				.select("selectSEList",
						"SELECT SE.EX_NO ,MID, EXTIMELIMIT, DF.DIF_GRADE, "
								+ "EX_QUESTIONSCOUNT, EX_TITLE, EX_EXPLAIN, EX_READCOUNT, "
								+ "EX_RECOMMENDCOUNT, EX_RECOMMENDLECTURE, EX_REFERENCE, "
								+ "EX_DATE, EX_CONFIRM, MJ.MJ_NAME ,MD.MD_NAME, EX_MNNAME, "
								+ "QUE.QUE_QNO, QUE.QUE_CONTENT, QUE.QUE_RIGHTANSWER, QUE.QUE_SCORE, "
								+ "QUE.QUE_USERSUBJECT, QUE.QUE_EXAMPLE1, QUE.QUE_EXAMPLE2, "
								+ "QUE.QUE_EXAMPLE3, QUE.QUE_EXAMPLE4, QUE.QUE_EXAMPLE5, QUE.QUE_QUENO "
								+ "FROM O_SETEXAM SE, O_MIDDLES MD, O_MAJORS MJ, O_DIFFICULTY DF, "
								+ "O_QUESTIONS QUE WHERE SE.EX_NO = (SELECT MAX(EX_NO) FROM O_SETEXAM) "
								+ "AND EX_CONFIRM=0 AND MD.MJ_NO = MJ.MJ_NO AND SE.MD_NO = MD.MD_NO "
								+ "AND QUE.EX_NO = SE.EX_NO AND SE.DIF_NO = DF.DIF_NO "
								+ "AND MID='" + sessionId
								+ "' ORDER BY QUE.QUE_QNO");
		mv.addObject("selectSEList", selectSEList);

		return mv;
	}

	// 출력 : 풀이 : 출제한 시험
	@RequestMapping("/WIT_OPENEX_solve_section.op")
	public ModelAndView selectSOLList(HttpServletRequest request) {
		mv.setViewName("WIT_OPENEX_solve_section");
		MyBatis m = new MyBatis("mem/wit/openex/OPENEXsqlMapConfig.xml");
		int exno = Integer.parseInt(request.getParameter("EX_NO"));
		System.out.println(exno);
		List<OsetExamListDTO> selectSEList = (List<OsetExamListDTO>) m
				.select("selectSEList",
						"SELECT SE.EX_NO ,MID, EXTIMELIMIT, DF.DIF_GRADE, EX_QUESTIONSCOUNT, "
								+ "EX_TITLE, EX_EXPLAIN, EX_READCOUNT, EX_RECOMMENDCOUNT, EX_RECOMMENDLECTURE, "
								+ "EX_REFERENCE, EX_DATE, EX_CONFIRM, MJ.MJ_NAME ,MD.MD_NAME, EX_MNNAME, "
								+ "QUE.QUE_QNO, QUE.QUE_CONTENT, QUE.QUE_RIGHTANSWER, QUE.QUE_SCORE, "
								+ "QUE.QUE_USERSUBJECT, QUE.QUE_EXAMPLE1, QUE.QUE_EXAMPLE2, QUE.QUE_EXAMPLE3, "
								+ "QUE.QUE_EXAMPLE4, QUE.QUE_EXAMPLE5, QUE.QUE_QUENO "
								+ "FROM O_SETEXAM SE, O_MIDDLES MD, "
								+ "O_MAJORS MJ, O_DIFFICULTY DF, O_QUESTIONS QUE "
								+ "WHERE MD.MJ_NO = MJ.MJ_NO AND SE.MD_NO = MD.MD_NO "
								+ "AND QUE.EX_NO = SE.EX_NO AND SE.DIF_NO = DF.DIF_NO "
								+ "AND SE.EX_NO = " + exno
								+ " ORDER BY QUE.QUE_QNO");
		mv.addObject("selectSEList", selectSEList);

		return mv;
	}

	// 입력 : 풀이 : 출제 된 문항에 사용자 답
	@RequestMapping("/WIT_OPENEX_solve_section2.op")
	public ModelAndView insertUsa(HttpServletRequest request,
			HttpSession session) {
		mv.setViewName("WIT_OPENEX_solve_section");
		Member member = (Member) session.getAttribute("member");
		MyBatis m = new MyBatis("mem/wit/openex/OPENEXsqlMapConfig.xml");
		String MID = member.getmId();
		int EX_QUESTIONSCOUNT = Integer.parseInt(request
				.getParameter("EX_QUESTIONSCOUNT"));
		int QUE_QUENO[] = new int[EX_QUESTIONSCOUNT];
		int USA_ANSWER[] = new int[EX_QUESTIONSCOUNT];
		int exno = Integer.parseInt(request.getParameter("EX_NO"));
		int rectime = Integer.parseInt(request.getParameter("REC_TIME"));
		for (int i = 0; i < EX_QUESTIONSCOUNT; i++) {
			QUE_QUENO[i] = Integer.parseInt(request.getParameter("QUE_QUENO"
					+ (i + 1)));
			USA_ANSWER[i] = Integer.parseInt(request.getParameter("USA_ANSWER"
					+ (i + 1)));
			m.insert("insertUSA",
					"INSERT INTO O_UserAns(USA_NO,QUE_QUENO,MID,USA_ANSWER)"
							+ " VALUES(SEQ_usA_No.NEXTVAL," + QUE_QUENO[i]
							+ ",'" + MID + "'," + USA_ANSWER[i] + ")");
		}
		m.insert("insertUSA",
				"INSERT INTO O_Record(REC_NO,MID,EX_NO,REC_TIME,REC_DATE) "
						+ "VALUES (SEQ_rec_No.NEXTVAL,'" + MID + "'," + exno
						+ ",'" + rectime + "',SYSDATE)");
		List<OrecnoDTO> selMaxRecno = (List<OrecnoDTO>) m.select("selMaxRecno",
				"SELECT MAX(REC_NO) as REC_NO FROM O_RECORD");
		return new ModelAndView(
				"redirect:http:/teamP/cooperation/_OPENEX/WIT_OPENEX_record.jsp?EX_NO="
						+ exno + "&REC_NO=" + selMaxRecno.get(0).REC_NO);
	}

	// 출력 : 점수
	@RequestMapping("/WIT_OPENEX_record_section.op")
	public ModelAndView record(HttpSession session, HttpServletRequest request) {
		Member member = (Member) session.getAttribute("member");
		String MID = member.getmId();
		mv.setViewName("WIT_OPENEX_record_section");
		MyBatis m = new MyBatis("mem/wit/openex/OPENEXsqlMapConfig.xml");
		int exno = Integer.parseInt(request.getParameter("EX_NO"));
		int recno = Integer.parseInt(request.getParameter("REC_NO"));
		List<OacvRECDTO> selecAcvREC = (List<OacvRECDTO>) m
				.select("selecAcvREC",
						"SELECT REC_NO, QUE.QUE_QNO, USA.USA_ANSWER, QUE.QUE_RIGHTANSWER, "
								+ "QUE.QUE_SCORE, SE.EX_QUESTIONSCOUNT FROM O_USERANS USA, "
								+ "O_QUESTIONS QUE, O_SETEXAM SE, O_RECORD REC , WITMEMBER WIT "
								+ "WHERE USA.QUE_QUENO = QUE.QUE_QUENO AND QUE.EX_NO = SE.EX_NO "
								+ "AND WIT.MID = USA.MID AND REC.EX_NO = SE.EX_NO AND USA.MID = '"
								+ MID + "' " + "AND QUE.EX_NO = " + exno
								+ " AND REC_NO = " + recno
								+ "ORDER BY QUE.QUE_QNO");

		mv.addObject("selecAcvREC", selecAcvREC);
		
		List<OsetExamListDTO> selectSEList = (List<OsetExamListDTO>) m
				.select("selectSEList",
						"SELECT SE.EX_NO ,MID, EXTIMELIMIT, DF.DIF_GRADE, EX_QUESTIONSCOUNT, "
								+ "EX_TITLE, EX_EXPLAIN, EX_READCOUNT, EX_RECOMMENDCOUNT, EX_RECOMMENDLECTURE, "
								+ "EX_REFERENCE, EX_DATE, EX_CONFIRM, MJ.MJ_NAME ,MD.MD_NAME, EX_MNNAME, "
								+ "QUE.QUE_QNO, QUE.QUE_CONTENT, QUE.QUE_RIGHTANSWER, QUE.QUE_SCORE, "
								+ "QUE.QUE_USERSUBJECT, QUE.QUE_EXAMPLE1, QUE.QUE_EXAMPLE2, QUE.QUE_EXAMPLE3, "
								+ "QUE.QUE_EXAMPLE4, QUE.QUE_EXAMPLE5, QUE.QUE_QUENO "
								+ "FROM O_SETEXAM SE, O_MIDDLES MD, "
								+ "O_MAJORS MJ, O_DIFFICULTY DF, O_QUESTIONS QUE "
								+ "WHERE MD.MJ_NO = MJ.MJ_NO AND SE.MD_NO = MD.MD_NO "
								+ "AND QUE.EX_NO = SE.EX_NO AND SE.DIF_NO = DF.DIF_NO "
								+ "AND SE.EX_NO = " + exno
								+ " ORDER BY QUE.QUE_QNO");
		mv.addObject("selectSEList", selectSEList);
		return mv;

	}

	// 출력 : 출제 문항
	@RequestMapping("/WIT_OPENEX_setExam_section3.op")
	public ModelAndView selectQUEList(HttpServletRequest request) {
		mv.setViewName("WIT_OPENEX_setExam_section2_xml");
		MyBatis m = new MyBatis("mem/wit/openex/OPENEXsqlMapConfig.xml");
		int exno = Integer.parseInt(request.getParameter("EX_NO"));
		int queno = Integer.parseInt(request.getParameter("QUE_QNO"));
		System.out.println(exno + "," + queno);
		List<OsetExamQueDTO> selectQUEList = (List<OsetExamQueDTO>) m
				.select("selectQUEList",
						"SELECT QUE.EX_NO, QUE_QUENO, QUE_QNO, QUE_USERSUBJECT, QUE_CONTENT, "
								+ "QUE_SCORE, QUE_EXAMPLE1, QUE_EXAMPLE2, QUE_EXAMPLE3, QUE_EXAMPLE4, "
								+ "QUE_EXAMPLE5, QUE_RIGHTANSWER FROM O_QUESTIONS QUE, O_SETEXAM SE "
								+ "WHERE SE.EX_NO = QUE.EX_NO AND "
								+ "QUE.EX_NO = " + exno + " AND QUE_QNO = "
								+ queno + " ORDER BY QUE_QNO");
		mv.addObject("selectQUEList", selectQUEList);

		return mv;
	}

	// 출력 : 게시판 목록
	@RequestMapping("/WIT_OPENEX_list_section1.op")
	public ModelAndView subjecNametList() {
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

	// 출력 : 게시판 세부
	@RequestMapping("/WIT_OPENEX_list_section2.op")
	public ModelAndView boardList(HttpServletRequest request) {
		mv.setViewName("WIT_OPENEX_list_section2");
		MyBatis m = new MyBatis("mem/wit/openex/OPENEXsqlMapConfig.xml");
		int mdno = Integer.parseInt(request.getParameter("MD_NO"));
		List<OboardListDTO> selectBoardList = (List<OboardListDTO>) m
				.select("selectBoardList",
						"SELECT SE.EX_NO, WIT.MNICKNAME, SE.EXTIMELIMIT, "
								+ "SE.EX_QUESTIONSCOUNT, SE.EX_TITLE, SE.EX_EXPLAIN, SE.EX_CONFIRM, "
								+ "SE.EX_READCOUNT, SE.EX_RECOMMENDCOUNT, SE.EX_DATE, "
								+ "MJS.MJ_NAME, MDS.MD_NAME, SE.EX_MNNAME, DIF.DIF_GRADE "
								+ "FROM WITMEMBER WIT, O_SETEXAM SE, O_MIDDLES MDS, "
								+ "O_MAJORS MJS, O_DIFFICULTY DIF WHERE WIT.MID = SE.MID "
								+ "AND MDS.MD_NO = SE.MD_NO AND MJS.MJ_NO = MDS.MJ_NO "
								+ "AND DIF.DIF_NO = SE.DIF_NO AND SE.MD_NO = "
								+ mdno + " " + "ORDER BY SE.EX_NO DESC");

		mv.addObject("selectBoardList", selectBoardList);
		return mv;
	}
}
