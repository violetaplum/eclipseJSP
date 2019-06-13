package controller.jum.my;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Hakjum
 */
@WebServlet("/Hakjum")  //annotation!! 예전에는 복잡하고 어려웠음
public class Hakjum extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Hakjum() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request,response); //html에서 Post방식으로 보냈기 때문에 이를 명시해줘야함 //Get방식으로 오면 post로 보내라는 의미
		
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		request.setCharacterEncoding("utf-8");
		//response.setCharacterEncoding("text/html;charset=utf-8");
		
		response.setContentType("text/html;charset=utf-8");
		String name= request.getParameter("name");
		String jum1 = request.getParameter("jum");
		int jum = Integer.parseInt(jum1);
		
		String kaja = null;
		
		if(jum>=90)
		{
			kaja="A.jsp"; //jsp로 보내서 view역할을 준다
		}
		else if(jum>=80)
		{
			kaja="B.jsp"; //각각의 해당 jsp로 학점에 대한 결과(인자)를 가져가야 한다
		}
		else if(jum>=70)
		{
			kaja="C.jsp";
		}
		else if(jum>=60)
		{
			kaja="D.jsp";
		}
		else
		{
			kaja="F.jsp";
		}
		////////////////////////////////////////////////////////////////////////////////////////////////////////
		
		request.getRequestDispatcher("./jspview/"+kaja).forward(request, response); //값을 jsp로 가져가주는 문장!!!!
		//이경우에는 kaja String을 가져가게 함
		
		
		
	}

}
