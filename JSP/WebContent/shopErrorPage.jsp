<%@page import="java.util.*"%>
<%@page language="java" contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<head>
<script>
  setTimeout(function()
{
  alert("10초후 로그인 페이지로 다시 넘어갑니다. 다시 입력해주세요!^^")
},1);
  setTimeout(function(){
    alert("로그인 페이지로 다시 넘어갑니다.")
    window.location.href = "./login.jsp"
  },10000);



</script>
<style>
body
{
  background: #8140df;
}
</style></head>
  <body>
    <pre>
  <h1>Error..</h1>
<h2>아이디 혹은 비밀번호가 잘못 됐습니다</h2>
</pre>

  </body>
</html>
