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
<body>
<%
int num=0;
String[] str={"red","orange","blue","yellow","black","gray","green"};
String color=str[(int)(Math.random()*6+1)];
%>
<h2><font color="<%=color%>">
<% //선언식(declaration)  메소드 정의문
ArrayList<Object> al = new ArrayList<>();
for(int i=0;i<10;i++)
{
  al.add((int)(Math.random()*45+1));
  if(al.get(i-1).equals(al.get(i)))
  {
    i--;
  }
}
out.print("Lottary number is : ");
for(int i=0;i<10;i++)
{
 out.print(al.get(i)+",  ");

}
out.println();
%>//스크립트릿 (jsp 스크립트 요소)
</font>
</h2>
</body>
</html>
