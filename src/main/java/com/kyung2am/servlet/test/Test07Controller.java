package com.kyung2am.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/servlet/test/test07")
public class Test07Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		String price = request.getParameter("price");
		
//		전달받은 주소에 서울시 가 포함되어 있지 않으면, 배달 불가 지역입니다 를 출력하세요.
//		전달 받은 결제 카드가 신한카드인 경우 결제 불가 카드 입니다. 를 출력하세요.
		
		out.println("<html><head><title>제목</title></head><body>");
		
		if(address.contains("서울시")) {
			out.println("<h2> 배달 불가 지역입니다. </h2>");
			return;
		}
		if(card.equals("신한카드")) {
			out.println("<h2> 결제 불가 카드 입니다. </h2></body></html>");
			return;
		}
		
		
		out.println("<h2>" + address + "로 배달 준비중</h2>"
				+ "<hr>"
				+ "<p>결제금액:" + price + "원</p></body></html>");
	}

}
