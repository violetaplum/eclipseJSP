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

<title>age</title>
  </head>
  <body>
    <pre>
<%
out.print(pageContext.getAttribute("id")+"<br />");
out.print(pageContext.getAttribute("pw")+"<br />");
%>

<%-- 아이디는 ${param.id}이고 암호는 ${param.pw}이구만 --%>
    </pre>

  </body>
</html>
