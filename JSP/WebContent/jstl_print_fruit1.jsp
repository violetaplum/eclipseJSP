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

  <h2>
<%
String[] fruit = {"apple","pear","cherry"};
session.setAttribute("fruit",fruit);
// fruit이라는 속성명을 가진 기억창고에 fruit배열을 넣어라
%>
<a href="./jstl_print_fruit2.jsp">GO go!!</a>
<%-- for-each개념인 for(:)을 사용하여 출력하라 --%>
  </h2>

</pre>
</body>
</html>
