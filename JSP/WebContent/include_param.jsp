<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
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

<title>Include-param</title>
  </head>
  <body>
<pre>
<h2>
include directive : 내용을 그대로 include
include action tag : html, jsp등의 처리결과를 include
param : 여기 태그 넘겨줄래?

</h2>
</pre>
<jsp:include page="200_includesub.jsp">
<jsp:param value="jang" name="name1"/>
<jsp:param value="hee" name="name2"/>
</jsp:include>
  </body>
</html>
