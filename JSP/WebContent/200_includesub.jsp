<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>include 지시어로 파일 포함 하기</title>
</head>
<body>
<pre>
<%
  String name1 = request.getParameter("name1");
  String name2 = request.getParameter("name2");
  out.println(name1+"가 "+name2+"에게 말하기를~~~~"+"<br />");
  out.println("이안에 너있다~~~~~");
%>
  <hr />
  우리 회사는 작지만 확실한 행복을 보장하는 이벤트를 드립니다. 방문을 환영합니다.
  ${param.name1} 가 ${param.name2}에게 말하기를
  ${"이안에 너있다~~"}<br />
 

</pre>
</body>
</html>
