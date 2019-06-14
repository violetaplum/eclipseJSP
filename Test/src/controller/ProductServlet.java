package controller;

import java.io.IOException;
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
		//request.getSession(false) : 세션이 있으면 현재 세션 리턴, 없으면 null리턴

		ProductVO counter = (ProductVO)session.getAttribute("counter");  //session에서 counter 속성값을 뽑아내서 형변환 후 저장
		//ProductVO에서 만들어둔 누적함수 사용
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
