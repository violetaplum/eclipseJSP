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
<form action="jstl_get_setProperty.jsp" method="post">

<!-- jstl_get_setProperty.jsp , jstl_useBean2.jsp와 연결가능 -->

  <h2>
정보입력

이름 : <input type="text" name="name"/>

나이 : <input type="text" name="age"/>

<input type="submit" value="Gogo!" />  <input type="reset" value="Calcel" />

  </h2>
  </form>
</pre>
</body>
</html>
