<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<style>
body
{
  background: #a9b616;

}

</style>
  </head>
<body>
  <form action="./outputAge.jsp" method="get">
  <h1>
  이름 : <input type="text" name="name" /><br />
  생년 : <input type="number" name="year" /><br />
<input type="submit" value="submit">
    </form>
  </body>
</html>
<!-- min="1900" max="2099" step="1"  -->
