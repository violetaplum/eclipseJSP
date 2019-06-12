<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" errorPage="error.jsp"%>
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

<title>age</title>
  </head>
  <body>
    <form action="scoreResult.jsp" method="get">


    <pre>

      이름 : <input type="text" name="name"  />
      국어점수 : <input type="text" name="korean" />
      영어점수 : <input type="text" name="english" />
      <input type="submit" name="submit" />

        </pre>
</form>
  </body>
</html>
