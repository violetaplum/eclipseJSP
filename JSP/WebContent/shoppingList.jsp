<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
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
    <form action="shoppingList2.jsp" method="get">
    <pre>
      물품 선택
      <select name="product">
        <option name="가방" value="가방" >
          가방
        </option>
        <option name="구두" value="구두">
          구두
        </option>
        <option name="넥타이" value="넥타이">
          넥타이
        </option>
      </select>
      갯수 :
      <input type="number" max=10 min=0 name="number" value="name"/>

      <input type="submit" name="submit" />
        </pre>
        <%
		
        %>
</form>
  </body>
</html>
