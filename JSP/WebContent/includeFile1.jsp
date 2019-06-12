<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
  <head>
<title>redirect</title>
<style>
*
{
  margin:0;
  padding:0;
}
h1,h2
{
  background: #771483;
}
body
{
  background: #77f6e3;
}
</style>
  </head>
  <body>
    <pre>
      <h1>
      Include 지시어로 파일 포함 하기
      </h1>
      <h2>
      우리 회사는 작지만 확실한 행복을 보장하는 이벤트를 드립니다.
      방문을 환영합니다.
      </h2>
      <hr />
    </pre>
    <%@ include file="./file.jsp"%>
    <%--
    <%@ inclued file="files.jsp.."%> : 파일을 나중에 포함시킬 때 좋음
    같은 페이지더라도 나눠서 개발이 가능해진다. 
  --%>
  </body>
</html>
