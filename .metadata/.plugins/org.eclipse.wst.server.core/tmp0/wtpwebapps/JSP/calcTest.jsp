<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
body
{
  background: #c166a1;
  align:center;
}
</style>
<%-- <script>
document.form.num1.focus()
document.form.num2.focus()
하단에 check()를 만든다면 상위 함수로 값을 확인할 수 있겠다.

</script> --%>
<body>
  <h2>계산기</h2>
  <form action="./calcTest2.jsp" method="get">


<table name="table" width="300" height="200" border="2px">
  <tr align="center">
    <td>
      앞수는?
    </td>
    <td>
      <input type="number"name="num1"/>
    </td>
  </tr>
  <tr align="center">
    <td>
      계산
    </td>
    <td>
      <select name="calc">
        <option value="+">
          +
        </option>
        <option value="-">
          -
        </option>
        <option value="*">
          *
        </option>
        <option value="/">
          /
        </option>
      </select>
    </td>
  </tr>
  <tr align="center">
    <td>
      뒤수는?
    </td>
    <td>
      <input type="number" name="num2"/>
    </td>
  </tr>
  <tr align="center">
    <td colspan=2>
    <input type="submit" name="submit" value="결과!!" />
    </td>

  </tr>
  <tr>
    <td>
      결과는?
    </td>
    <td>
      <a name="result" value="result"><%=session.getAttribute("result")%></a>
    </td>
  </tr>

</table>
</form>
</body>
</html>
