<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
body
{
  background: #c166a1;
}
</style>
</head>
<body>

    <%
        String num1 = (String)request.getParameter("num1");
        String num2 = (String)request.getParameter("num2");
        String calc = (String)request.getParameter("calc");
        int result=0;


        int firstNumber = Integer.parseInt(num1);
        int secondNumber = Integer.parseInt(num2);

        if(calc.equals("+"))
        {
          result=Integer.parseInt(num1)+Integer.parseInt(num2);
          session.setAttribute("result",result);
          response.sendRedirect("./calcTest.jsp");
        }
        else if(calc.equals("-"))
        {
          result=Integer.parseInt(num1)-Integer.parseInt(num2);
          session.setAttribute("result",result);
          response.sendRedirect("./calcTest.jsp");
        }
        else if(calc.equals("*"))
        {
          result=Integer.parseInt(num1)*Integer.parseInt(num2);
          session.setAttribute("result",result);
          response.sendRedirect("./calcTest.jsp");
        }
        else if(calc.equals("/"))
        {
          result=Integer.parseInt(num1)/Integer.parseInt(num2);
          session.setAttribute("result",result);
          response.sendRedirect("./calcTest.jsp");
        }
        else if(calc.equals("%"))
        {
          result=Integer.parseInt(num1)%Integer.parseInt(num2);
          session.setAttribute("result",result);
          response.sendRedirect("./calcTest.jsp");
        }


    %>

    <%=num1%> <%=calc%> <%=num2%> 의 결과는 <%=result%> 입니다.

</body>
</html>
