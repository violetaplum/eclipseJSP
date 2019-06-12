<%@page import="java.util.*"%>
<%@page language="java" contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<head>

<style>
body
{
  background: #40ccdf;
}
</style></head>

  <body>
  <h1>login!</h1>
  <form action="./check.jsp" method="get">
아이디 <input type="text" name="id1" /><br />
암호 <input type="password" name="pw1" /><br />
<input type="submit" value="가자서버로"/>
<input type="reset" value="취소" />
  </form>
  </body>
</html>
