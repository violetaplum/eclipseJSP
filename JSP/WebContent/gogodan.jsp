<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script>
var array={'red','orange','blue','yellow','black','gray','green'}
var str=array[(int)(Math.random()*7+1)]
</script>
<title>Insert title here</title>
</head>
<body><h2>
구구단을 찍어봅시다!<br>
<%-- 2단과 3단 공간만들기 --%>
<%
for(int i=2;i<10;i++)
{
  for(int j=2;j<10;j++)
  {
    out.println(i+" x "+j+ "=" +(i*j));
    %><br><%
  }
}
%>
</h2>
</body>
</html>
