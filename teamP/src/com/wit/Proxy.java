package com.wit;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;

public class Proxy {

	public String getApiXml(String pUrl) throws IOException {
		String strRtn = null;
		StringBuffer sbf = new StringBuffer(); // xml 할당 String
		BufferedReader in  = null; 
		try {
			// Url 객체
			URL url = new URL(pUrl);
			// BufferedReader객체 생성 : url의 response 객체를 읽어옮
			in = new BufferedReader(new InputStreamReader(url.openStream()));
			
			String inputLine; // 한줄씩 임시저장
			// 한줄씩 읽어옮
			while((inputLine = in.readLine()) != null)
				sbf.append(inputLine);
		} catch(Exception e){
			strRtn = "<message>null</message>";
//			out.print("<message>null</message>");
		} finally {
			in.close();
			strRtn = sbf.toString();
//			out.print(sbf.toString());
		}
		return strRtn;
	}
}
