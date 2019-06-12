<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<style>
table
{
  background: #a9b616;
  border:2px solid #47851c;
}
select
{
  background:#d5834f;
}
.submit
{
  background:#3080da;
}
</style>
  </head>
<body>
  <form action="./output.jsp" method="get">
  <h1>제품구매</h1>
  <hr />
  <table border=4 width=300 height=200>
  <tr>
    <td colspan=2>
제품종류번호 선택
</td>
    </tr>
    <tr>
      <td colspan=2>
        <select name="select">
           <option value="100-최신신상">100-최신신상</option>
           <option value="200-이월상품">200-이월상품</option>
           <option value="300-매장진열상품">300-매장진열상품</option>
        </select>
</td>
      </tr>
      <tr>
        <td>제품선택</td>
<tr>
  <td colspan="3">
    <input type=checkbox name="product" value="구두">구두<br>
    <input type=checkbox name="product" value="옷">옷<br>
    <input type=checkbox name="product" value="가방">가방<br>
    <input type=checkbox name="product" value="액세서리">액세서리<br>
    <input type=checkbox name="product" value="무선이어폰">무선이어폰<br>
</td>
</tr>
<tr>
  <td>
    구입방법
  </td>
      </tr>
      <tr>
        <td>
      <input type="radio" name="pay"/>카드<br />
        <input type="radio" name="pay"/>현금<br />
        <input type="radio" name="pay"/>상품권<br />
</td>
      </tr>
      <tr>
        <td>

      <input class="submit" type="submit" value="그래 결심했어 구입!" />
      <input class="submit" type="reset" value="취소" />
</td>
    </tr>
    </table>
    </form>
  </body>
</html>
