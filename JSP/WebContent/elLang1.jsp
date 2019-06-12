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
<%
double value=37.8;
String value2 = null;
%>
${"형이 말하는데"}<br />
${"el"} 은 간단해서 좋지만 공부는 해야해<br />
<%-- ${""} : 화면 출력해주는 el언어 표현법 --%>
${100} ${100>2} ${200.3} ${100%3}<br />
${false} ${empty value2} ${null} 무엇이 표현이 가능한가?<br />
<%-- null이면 아무것도 출력 안함 --%>
<%-- 역시 el은 flexible 해~~~ --%>
<%-- 값이 없는 null및 형변환 --%>
  </body>
</html>
