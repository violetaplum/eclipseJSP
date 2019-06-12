<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" isErrorPage="true" %>
<%
response.setStatus(200);
//404 500 ....
//정상 200
// 이 페이지는 오류없당 그러니 결과물 잘 출력하자
%>
<html>
  <head>
<title>redirect</title>
<style>
*
{
  background: #e31075;
}
</style>
  </head>
  <body>
    <pre>
<h1>현재 그 페이지는 존재하지 않습니다..</h1><br />

<h3>
에러내용은 <%=exception.getMessage()%>
<%-- exception 내장객체 :  --%>
</h3>
<%-- 예) 나이를 빈칸으로 처리한경우 -> 에러내용은 for input String...... 이런식임 --%>
    </pre>
  </body>
</html>
