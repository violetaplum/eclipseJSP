<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<html>
<head>
<style>
body
{
  background: #246bd5;
  color:yellow;
}
</style>

</head>
  <body>
    getHeader --><%= request.getHeader("user-agent")%><br />
    <!--브라우저 알아내기
    브라우저엔진(크롬-webkit, 파폭-gecho)-->
    getReauestURI --> <%= request.getRequestURI()%><br />
    getServletPath --> <%= request.getServletPath()%><br />
    getServerName --> <%= request.getServerName()%> <br />
    getRemoteAddr --> <%= request.getRemoteAddr()%> <br />
    getRemoteHost --> <%= request.getRemoteHost()%> <br />
    getProtocol --> <%= request.getProtocol()%> <br />
    <%-- http의 버전 --%>
    getMethod --> <%=request.getMethod()%> <br />

  </body>
</html>
