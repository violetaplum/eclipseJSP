package com.test.my;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Hello1
 */
@WebServlet("/Hello1") //WebServlet : 별도의 환경설정파일 없이 실행하게 해줌
public class Hello1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Hello1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
								//응답을 보내는 객체			//응답을 받는 객체
						//보내는 사람이 POST로 보내도 이 GET에 써주면 된다

						response.setContentType("text/html;charset=utf-8"); //타입을 정해준다 //이것때문에 하단의 out.print()에서 html tag먹힘
		PrintWriter out = response.getWriter(); //out이라는 것을 전송객체로 쓰겠다는 의미
		out.print("<h2>Hello!!!!!!</h2>");   //java에 html을 껴서 넣어준다 //body까지 다 넣어줄수도 있다!!!
		System.out.println("What...?");
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
