<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.util.ArrayList"%>
<%-- <%@page import="telinfoDAO.TelInfoDAO"%>
<%@page import="telinfoVO.TelInfoVO"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>

<%-- <%
response.setCharacterEncoding("utf-8");
TelInfoDAO tidao = new TelInfoDAO();
ArrayList<TelInfoVO> tiArray = tidao.getAllInfo();

%> --%>
<!DOCTYPE html>
<html>
<head>
  <style>
  body
  {
    background: #c166a1;
    align:center;
  }
  </style>

</head>
<body>

<form action="./dao2.jsp" method="get">
<h2>
설문조사<br>

아래의 항목을 채워주세요<br>
</h2>
<h3>
이름 : <input type="text" name="name" /><br>
전화번호 : <input type="text" name="tel" /><br>
이메일주소 : <input type="text" name="email" /><br>
생일 : <input type="date" name="birth" /><br>
</h3>

<h2>어떤 경로로 알게되었습니까?</h2><h3>
<input type="radio" name="radio1" value="신문기사"/>신문기사 <input type="radio" name="radio1" value="광고"/>광고  <input type="radio" name="radio1" value="기타" />기타
</h3>
<h2>좋아하는 스포츠는 무엇입니까?</h2><h3>
<input type="radio" name="radio2" value="테니스" />테니스  <input type="radio" name="radio2" value="골프" />골프  <input type="radio" name="radio2" value="농구" />농구<br>
<input type="radio" name="radio2" value="야구" />야구  <input type="radio" name="radio2" value="볼링" />볼링  <input type="radio" name="radio2" value="축구" />축구<br>
<br>
연락방법  <select name="select" id="select" value="select">
          <option value="phone">
            phone
          </option>
          <option value="email">
            email
          </option>
          <option value="sms">
            sms
          </option>
</select><br>
<br>
<input type="checkbox" name="check" />개인정보 활용에 동의합니다<br>
<input type="submit" value="보내기" /><br>


</form>

</h3>


</body>
</html>
