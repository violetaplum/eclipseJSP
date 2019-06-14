package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.vo.ProductVO;

/**
 * Servlet implementation class ProductServlet
 */
@WebServlet("/Product")
public class ProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductServlet() {
        super();

    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// <input type="text" ....name="irum"..>
		// request.getParameter("irum");   ---> pid로 간다
		// Product?pid=..

		response.getWriter().append("Served at: ").append(request.getContextPath());
		String pid = request.getParameter("pid");
		HttpSession session = request.getSession(); //HttpSession session : session을 만들어주는 class //session이 없으니 만들어줘야함
		//request.getSession(true) : 세션이 있으면 현재 세션 리턴, 없으면 세션 새로 생성
		//request.getSession(false) : 세션이 있으면 현재 세션 리턴, 없으면 null리턴 //false는 시작하기도전에 에러발생..
			//.getSession(false)일 경우 아래 문장 처리전에
				//if(session!=null) 라는 if문 고려해야함

//servlet은 session객체를 만들어줘야해서 약간 번거롭긴 함..

		ProductVO counter = (ProductVO)session.getAttribute("counter");  //session에서 counter 세션을 뽑아내서 형변환 후 저장
		//counter session이 없으면 그냥 null이 들어간다

		if(counter==null) //처음에는 null //null이면 ProductVO 객체를 이용해 counter라는 이름의 session속성을 만들어준다
		{
			counter = new ProductVO(); //아직 session이 안된 객체
			switch(pid)
			{
				case "p001":
					counter.setN1(1);break; //VO setter사용 //초기치는 0이 들어가있음
				case "p002":
					counter.setN2(1);break; //ProductVO.setN1(int n1) : 밑에서 누적해주는 setter이므로 1을 넣어줘서 갯수가 증가하게 해준다
				case "p003":
					counter.setN3(1);break;
			}
			session.setAttribute("counter",counter); //객체가 'counter' 라는 이름의session 으로 지정된다! //ArrayList처럼 객체넣는다
		}
		else
		{
			switch(pid)
			{
				case "p001":
					counter.setN1(1);break;
				case "p002":
					counter.setN2(1);break;
				case "p003":
					counter.setN3(1);break;
			}

		}
		//RequestDispatcher rd1 = request.getRequestDispatcher("jspexam/productview.jsp").forward(request,response);
		RequestDispatcher rd1 = request.getRequestDispatcher("jspexam/productview.jsp");
		//RequestDispatcher.getRequestDispatcher(".jsp file"); : 요청을 다 가져간다
		rd1.forward(request,response);//이것이 인자전달 가능하게해줌 //요청을 다 가져간다

	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
