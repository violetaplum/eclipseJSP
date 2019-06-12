<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
  <head>
<title>redirect</title>
  </head>
  <body>
    <pre>
      원래는 이 화면이 출력되는 것인데
      변신을 해서 다른 화면이 출력된다
      <%-- 방향이 바뀌기 때문에 이 jsp파일은 출력되지 않는다.. --%>
    </pre>
    <%
    response.sendRedirect("./ddoKaja1.jsp");
    %>
  </body>
</html>
