<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <style>
  body
  {
    background: #c166a1;
    align:center;
  }
  </style>
</head>
<body>
	<form action="jsp_db2.jsp" method="post"> <!-- jsp_db2.jsp로 입력된 값 전달 -->
		아이디 : <input type="text" name="id"><br> <!-- id라는 변수에 값을 담아서 전달 -->
		비밀번호 : <input type="password" name="pw"><br> <!-- passwd라는 변수에 값을 담아서 전달 -->
		이메일 : <input type="text" name="email"><br>
		<input type="submit" value="확인">
	</form>
</body>
</html>
