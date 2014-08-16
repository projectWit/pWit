package pAjaxAPI;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BrowserTest
 */
public class BrowserTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BrowserTest() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		excute(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		excute(request, response);
	}
	
	protected void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		request.setCharacterEncoding("euc-kr");
		String agent = request.getHeader("User-Agent");
		String br_type = ""; //브라우저 타입 결과 return
		if (agent.indexOf("MSIE") != -1){
			br_type = "ie";
		} else if (agent.indexOf("Firefox") != -1){
			br_type = "firefox";
		} else if  (agent.indexOf("Chrome") != -1){
			br_type = "chrome";
		} else {
			br_type = "그 외 기타 브라우저";
		}
		if (br_type.equals("ie")) {
			request.setCharacterEncoding("euc-kr");
		}
		String query= request.getParameter("query");
		System.out.println(query);
//		query = "문학동";
		response.sendRedirect("/ajaxEx01/ajaxAPI/apiPost.jsp?br_type="+br_type+"&query="+URLEncoder.encode(query,"EUC-KR"));
	} // end execute

}
