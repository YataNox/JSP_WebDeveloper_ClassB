package com.ezen.useservlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Join_Servlet
 */
@WebServlet("/Join_Servlet")
public class Join_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Join_Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String gender = request.getParameter("gender");
		String mail = request.getParameter("chk_mail");
		String content = request.getParameter("content");
		String items[] = request.getParameterValues("item");
		String job = request.getParameter("job");
		String interests[] = request.getParameterValues("interest");
		
		request.setAttribute("id", id);
		request.setAttribute("pwd", pwd);
		if(gender.equals("1")) {
			request.setAttribute("gender", "남자");
		}else {
			request.setAttribute("gender", "여자");
		}
		if(mail.equals("1")) {
			request.setAttribute("chk_mail", "수신");
		}else {
			request.setAttribute("chk_mail", "거부");
		}
		request.setAttribute("content", content);
		
		String [] sitem = new String[items.length];
		for(int i =0; i < sitem.length; i++) {
			switch(items[i]) {
				case "1": sitem[i] = "신발"; break;
				case "2": sitem[i] = "가방"; break;
				case "3": sitem[i] = "벨트"; break;
				case "4": sitem[i] = "모자"; break;
				case "5": sitem[i] = "시계"; break;
				case "6": sitem[i] = "쥬얼리"; break;
			}
		}
		request.setAttribute("item", sitem);
		request.setAttribute("job", job);
		request.setAttribute("interest", interests);
		
		RequestDispatcher dp = request.getRequestDispatcher("02/112_JSPServlet_Ex02.jsp");
		dp.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
