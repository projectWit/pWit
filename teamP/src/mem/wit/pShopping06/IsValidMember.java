package mem.wit.pShopping06;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.google.gson.Gson;

/**
 * 브라우저로부터 전달받은 파일을 저장.
 * 요청정보 및 파일정보를 JSON형태로 응답.
 */
@WebServlet("/teamP/Shopping6/IsValidMember.do") 
public class IsValidMember extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(
			HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		System.out.println("서블릿 진입 - GetValidMember");

		if (request.getHeader("accept").indexOf("application/json") != -1) {
	        response.setContentType("application/json; charset=UTF-8");
	    } else {
	        // IE workaround
	        response.setContentType("text/plain; charset=UTF-8");
	    }		
		
		PrintWriter out = response.getWriter();
		
		String mem_id = request.getParameter("mem_id");
		String mem_pwd = request.getParameter("mem_pwd");
		
	
		AService tst = new AService();
		int result = tst.isValidMember(mem_id, mem_pwd);
		out.print(result);
		
		/*Gson gson = new Gson();
		String outString = gson.toJson(dto);
		System.out.println(outString);
		out.print(outString);
		*/
		
	}

	
	
}