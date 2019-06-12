<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
  <head>
    <style>
*
{
  background: #c166a1;
}
    </style>

<title>age</title>
  </head>
  <body>

    <pre>
      <%
      String product = (String)request.getParameter("product");
      String number = (String)request.getParameter("number");


      if(product.equals("구두"))
      {
          session.setAttribute("shoe",Integer.parseInt(session.getAttribute("shoe"))+Integet.parseInt(number));
      }
      if(product.equals("가방"))
      {
        session.setAttribute("bag",Integer.parseInt(session.getAttribute("bag"))+Integet.parseInt(number)););
      }
      if(product.equals("넥타이"))
      {
        session.setAttribute("neck",Integer.parseInt(session.getAttribute("neck"))+Integet.parseInt(number)););
      }

      String str = product+" : "+number+"<br />";
      session.setAttribute("str",(String)session.getAttribute("str")+str);

      %>
현재 장바구니 내역
------------------
<%=(String)session.getAttribute("str")%>

<a href="./shoppingList.jsp">계속 살겁니다.</a>
        </pre>

  </body>
</html>
