<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
  <head>

<style>
body
{
  background: #c166a1;
}
</style>

<title>Include-param</title>
  </head>
  <body>
    <form action="./actionTag_forward2.jsp" method="get">
<pre>
<h2>
이름 : <input type="text" name="name" />

전화번호 : <input type="text" name="tel" />

<input type="submit" value="submit" />  <input type="reset" value="cancel" />

<%-- action tag : jsp forward --%>
</h2>
</pre>
</form>
  </body>
</html>
