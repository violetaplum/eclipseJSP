<%@page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
    <%--여기서 <%는 지시어 접두어(directive prefix) page: 페이지에 대한 지시어라는 뜻 --%>
    <%--이거슨 jsp주석  --%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>Insert title here</title>
</head>
<body>
<%
int soo=34;
if(soo%2==0)
{
  %>
  보아하니<%=soo%>는 짝수군요<br>
  <%-- 표현식(expression) '=값' --%>
  <%}else{%>
보아하니 <%=soo%> 는 홀수군요<br>
<%}%>
</body>
</html>
