<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />

  <body>
    <h2>나는 로그인 받는 서버</h2>
    <%
    String id1 = request.getParameter("id1");
    //변수("박미래")     //name
    //http:url?id1=  &  pw1=      으로 넘어온다
    //자료를 꺼내 가져와서 String id1 에 받는다 
    String pw1 = request.getParameter("pw1"); //객체.method();
    //request : 내장객체. client로부터 server로 자료를 요청하는 객체
    %>
    <p>
    아이디는 <%=id1%>이고 암호는 <%=pw1%>이구만
  </p>

  </body>
</html>
