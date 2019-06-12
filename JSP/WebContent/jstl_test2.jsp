<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <style>
  body
  {
    background: #c166a1;

  }
  </style>
  <%
  // String[] info = {(String)request.getParameter("name"),(String)request.getParameter("tel")};
  String[] info2 = (String[])request.getParameterValues("info");
  session.setAttribute("info",info2);
  %>
</head>
<body>
<fmt:requestEncoding value="utf-8"/>
  <pre>
  <h2>
<c:forEach var="x" items="${param.info}">
${x}
</c:forEach>
  </h2>


</pre>
</body>
</html>
