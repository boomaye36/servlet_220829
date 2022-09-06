package com.test.lesson04;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz01")

public class Quiz01 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		response.setCharacterEncoding("utf-8");
		
		// 1. db 연결(객체 생성, 커넥트 메소드 호출)
		MysqlService ms = MysqlService.getInstance();// 싱글턴 객체 생성
		ms.connect(); //db 연결
		//2. 쿼리 수행
		
		
		String insertQuery = "insert into `real_estate` (realtorId, address, area, type, price, rentPrice) values (3, '헤라펠리스 101동 5305호', 350,	'매매', 1500000,	NULL)";
			try {
				ms.select(insertQuery)	;
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		
		String selectQuery = ("select * from `real_estate`\r\n"
				+ "order by `id` desc\r\n"
				+ "limit 10;"
				);

		//3. 결과 출력
		
		try {
			PrintWriter out = response.getWriter();
			ResultSet resultSet = ms.select(selectQuery);
			
			while(resultSet.next()) { // 결과 행이 있는 동안 수행
				String address = resultSet.getString("address");
				int area = resultSet.getInt("area");
				String type = resultSet.getString("type");
				out.println("매물 주소: " + address + " 면적: " + area + " 타입: " + type );

				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		//4. db 연결 해제
		ms.disconnect(); // 연결 해제
	}
}
