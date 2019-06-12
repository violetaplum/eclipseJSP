<%@page import="java.util.*"%>
<%@page language="java" contentType="text/html;charset=utf-8" pageEncoding="UTF-8"  errorPage="./shopErrorPage.jsp"%>
<!DOCTYPE html>
<html>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<head>

<style>
body
{
  background: #cedf40;
}
</style></head>
  <body>
    <%
    if(session.getAttribute("signedUser")==null)
    {
      %>
      <script>

        alert("로그인 해주세요..")
      </script>
      <%
      response.sendRedirect("./login.jsp");
    }
    %>
    <pre>
  <h1>login Success!</h1>
당신의 아이디는 <%=(String)session.getAttribute("signedUser")%> 이군요!

  <h2>뭘 살까???</h2>
  가방쇼핑은 <a href="./bag.jsp">여기</a>를 누르세요
  구두쇼핑은 <a href="./shoe.jsp">여기</a>를 누르세요

</pre>
  </body>
</html>
