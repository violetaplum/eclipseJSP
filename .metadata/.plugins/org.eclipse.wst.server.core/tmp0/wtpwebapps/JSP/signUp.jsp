<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.util.*" %>
<html>
  <head>
<style>
body
{
  background: #b526c6;
}
</style>
</head>
<%
pageContext.setAttribute("id",request.getParameter("id"));
pageContext.setAttribute("pw",request.getParameter("pw"));
pageContext.setAttribute("email",request.getParameter("email"));
pageContext.setAttribute("sex",request.getParameter("sex"));

pageContext.setAttribute("tel",request.getParameter("tel"));
pageContext.setAttribute("date",request.getParameter("date"));
pageContext.setAttribute("address",request.getParameter("address"));


%>
  <body>
    <form action="./signUpCheck.jsp" enctype="multipart/form-data">

    <pre>
      <h1>회원가입</h1>
      <h2>
      아이디 : <input type="text" name="id" size="8"/>

      비밀번호 : <input type="text" name="pw" size="8"/>

      이메일 : <input type="email" pattern="a@a.com" name="email" />

      성별 : <select name="sex">

        <option value="woman">
          여자
        </option>
        <option value="man">
          남자
        </option>
      </select>

      전화번호 : <input type="tel" pattern="(010)-\d{3,4}-\d{4}" name="tel" />

      생년월일 : <input type="date" name="date" />

      주소 : <input type="text" pattern="a시a구a동a아파트" name="address" />

      <input type="submit" value="submit"/>
      </h2>
    </pre>

  </form>
  </body>
</html>
