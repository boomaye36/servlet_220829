package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz08")
public class GetMethodQuiz08 extends HttpServlet{
	
	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "marobiana");
	        put("password", "qwerty1234");
	        put("name", "신보람");
	    }
	};
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		PrintWriter out = response.getWriter();
		out.print("<html><head><title></title></head><body>");
		if (id.equals(userMap.get("id"))==false) {
			out.print("id가 일치하지 않습니다.<br>");
			
		}
		if (pw.equals(userMap.get("password"))==false) {
			out.print("비밀번호가 일치하지 않습니다.");
		}else {
			out.print(userMap.get("name") + "님 환영합니다!");
		}
		out.print("</body></html>");
	}
}