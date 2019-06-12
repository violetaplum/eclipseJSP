<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html;charset=utf-8"%>
<html>
<title>장바구니</title>
  <head>
  </head>
  <body>
<%
out.println((String)pageContext.getAttribute("page1"));//null page가 꺼졌으니 null
//return type=Object --> (String)
out.println((String)request.getAttribute("req1"));//null   //요청을 연결시킬 근거가 없으므로 null
out.println((String)session.getAttribute("ses1"));//브라우저가 살아있네~~
out.println((String)application.getAttribute("app1"));//WAS
%>
<a href="./scope3.jsp">scope3.jsp 한번 가볼까~~~</a>
  </body>
</html>
