<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <style>
  body
  {
    background: #c166a1;

  }
  </style>
</head>
<body>
  <pre>
    <c:forEach var="x" items="${sessionScope.fruit}">
      ${x}
</c:forEach>
<%-- x안에 fruit배열 안의 각각 요소를 넣어서 출력한다. --%>

<c:forEach var="v" begin="0" end="10" step="2">
        <c:out value="${v*v}"></c:out>
        <c:out value="${v}"></c:out>
</c:forEach>
</pre>
</body>
</html>
