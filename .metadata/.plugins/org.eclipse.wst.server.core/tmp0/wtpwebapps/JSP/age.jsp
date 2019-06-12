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
int age = Integer.parseInt(request.getParameter("age"));
out.print("그대의 나이는 "+age+" 이군요. ");
%>
    </pre>

  </body>
</html>
