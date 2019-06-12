<%@page import="java.util.*"%>
<%@page language="java" contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<head>
<%-- <script>
  setTimeout(function()
{
  alert("10초후 로그인 페이지로 다시 넘어갑니다. 다시 입력해주세요!^^")
},1);
  setTimeout(function(){
    alert("이전 페이지로 다시 넘어갑니다.")
    window.location.href = "./signUp.jsp"
  },10000);
</script> --%>
<style>
body
{
  background: #8140df;
}
</style></head>
<%
String id = (String)pageContext.getAttribute("id");
String pw = (String)pageContext.getAttribute("pw");
String email = (String)pageContext.getAttribute("email");
String sex = (String)pageContext.getAttribute("sex");
String tel = (String)pageContext.getAttribute("tel");
String date = (String)pageContext.getAttribute("date");
String address = (String)pageContext.getAttribute("address");
%>
  <body>
    <pre>
<h2>
  입력하신 정보를 다시 확인하세요
  아이디 : <%=id%>
  비밀번호 : <%=pw.length%>
  성별 : <%=sex%>

</h2>
</pre>

  </body>
</html>
