<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" errorPage="error.jsp"%>
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
<%
pageContext.setAttribute("name",(String)request.getParameter("name"));
pageContext.setAttribute("pw",(String)request.getParameter("pw"));

%>
<title>age</title>
  </head>
  <body>
    <pre>
<h2>
로그인

<form action="getParameterLogin2.jsp" method="get">
  아이디 : <input type="text" name="id" />
  비밀번호 : <input type="password" name="pw" />
  <input type="submit" value="submit" />
</form>
</h2>
    </pre>

  </body>
</html>
