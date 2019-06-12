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

%>
<h2>
<pre>
${null}

${false}

${100+200}

${100*7}

${100>200}

${50==50}

${50 eq 50}
<%-- eq : equal? --%>

${(100>3)?"커":"작아"}

${50 mod 5}
<%-- mod : 나머지 연산자 --%>

${"Oh! happy"}

<%-- null값이나 empty는 출력되지 않는다 --%>
${"여우각시별 vs 미스터선샤인"}

<%out.println("여우각시별 vs 미스터선샤인");%>
<%!String foxsun="여우각시별 vs 미스터선샤인";%>
<%=foxsun%>


</pre>
</h2>
  </body>
</html>
