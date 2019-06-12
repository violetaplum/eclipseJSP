<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>include 지시어로 파일 포함 하기</title>
</head>
<body>
<pre>
  <hr />
  우리 회사는 작지만 확실한 행복을 보장하는 이벤트를 드립니다. 방문을 환영합니다.
  <%
  out.println("jsp하고~~ 있는데~~"+"<br />");
  out.println("You are My Love, You are my Life"+"<br />");

  // actionTag_include.jsp에서 <jsp:include page="100_includesub.jsp"/> 태그에 의해 상위의 jsp가 실행된다
  %>
</pre>
</body>
</html>
