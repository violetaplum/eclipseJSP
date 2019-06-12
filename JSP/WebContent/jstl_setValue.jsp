<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- jstl 사용하기위한 taglib.. --%>
<%-- url 이 아닌 uri임에 주의한다 --%>
<%-- 머릿글자에 c를 넣는다는 의미 --%>
<%-- 만일 taglib 사용없이 c:out을 사용하면 무시하고 다음명령어를 수행 --%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <style>
  body
  {
    background: #c166a1;
    align:center;
  }
  </style>
</head>
<body>
  <pre>

<c:out value="hello jstl"><br />
</c:out>
<%
out.print("hello jstl!");
%>
<%
String aa = "chokichi";
%>
<c:set var="bb" value="chokichi"></c:set>
<c:set var="jum">100</c:set>

<%--
jsp, jstl의
변수를 잡아 값을 집어넣는 문법!
--%>
${bb}
${aa}
${jum}
</pre>
</body>
</html>
