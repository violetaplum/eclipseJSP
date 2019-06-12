<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
  <head>

<style>
body
{
  background: #c166a1;
}
</style>

<title>Include-param</title>
  </head>
  <body>

<pre>
<h2>

<%
String name=(String)request.getParameter("name");
String tel = (String)request.getParameter("tel");
session.setAttribute("name",name);
session.setAttribute("tel",tel);

if(tel.equals("jang") && name.equals("010-0000-0000"))
{
  %>
<jsp:forward page="./actionTag_forward2_1.jsp"></jsp:forward>
<%
}
else
{
  %>
<jsp:forward page="./actionTag_forward2_2.jsp"></jsp:forward>
<%
}
%>

<%-- action tag : jsp forward --%>
</h2>
</pre>

  </body>
</html>
