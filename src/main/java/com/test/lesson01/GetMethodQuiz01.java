package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz01")
public class GetMethodQuiz01 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		out.print("<html><head><title></title></head><body><ul>");
		
		int number = Integer.valueOf(request.getParameter("number"));
		for (int i = 1; i < 10; i++) {
			out.println("<li>" + number + " X " + i + " = " + number*i + "</li>");
		}
		out.print("</ul></body></html>");
	}
}
