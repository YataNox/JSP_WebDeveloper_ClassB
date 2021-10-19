package com.ezen.useservlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Forward_useServlet
 */
@WebServlet("/Forward_useServlet")
public class Forward_useServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Forward_useServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 보통 form에서 get 방식으로 서블릿에 이동되었을 때 실행될 명령이 적힙니다.
		// 전달 값들의 한글 인코딩 설정
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		// 전달된 파라미터 병수에 저장
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		if(id.equals("hong") && pwd.equals("1234")) {
			request.setAttribute("name", "홍길동");
			// 설정된 페이지로 포워딩 합니다.
			RequestDispatcher dispatcher = request.getRequestDispatcher("02/102_Forward_UseServlet_ok.jsp");
			dispatcher.forward(request, response);
		}else {
			response.sendRedirect("02/101_Forward_UseServlet.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 보통 form에서 post 방식으로 서블릿에 이동되었을 때 실행될 명령이 적힙니다.
		doGet(request, response);
	}

}
