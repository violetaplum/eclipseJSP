<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html;charset=utf-8"%>
<html>
<title>장바구니</title>
  <head>
  </head>
  <body>
<%
out.println((String)pageContext.getAttribute("page1"));
out.println((String)request.getAttribute("req1"));
out.println((String)session.getAttribute("ses1"));
out.println((String)application.getAttribute("app1"));
%>
<a href="./scope3.jsp">여기서 브라우저 모두 닫고 scope3.jsp 재수행!!!!<br />
  이어서 WAS내리고 scope2.jsp재수행!!!
</a>
<%-- null null null applove 브라우저모두닫고 재수행시 --%>
<%-- null null null null was 내리고 다시 올렸을떄 --%>
  </body>
</html>
