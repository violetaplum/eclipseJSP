<%@ page import="java.util.*"%>
<%@ page language"java" contentType="text/html;charset=utf-8"%>
<html>
<title>장바구니</title>

  <head>

  </head>
  <body>
<%
 // 저장scope.저장메소드("속성명","속성값");
  pageContext.setAttribute("page1","pagelove");
  request.setAttribute("req1","reqlove");
  session.setAttribute("ses1","seslove");
  application.setAttribute("app1","applove");

%>
<a href="./scope2.jsp">scope2.jsp 한번 가볼까~~~</a>
  </body>
</html>
