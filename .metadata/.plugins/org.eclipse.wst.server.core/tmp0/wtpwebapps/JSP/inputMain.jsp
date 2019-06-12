<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title></title>
</head>
<body>
<h1> 상품구매</h1>
<hr>
<form name="f1"  action="outputMain.jsp" method="get">
 <table border=2 width=700>
 <tr>
   <td colspan=2>제품종류번호 선택</td>
 </tr>
 <tr>
   <td colspan=2>
	    <select name="jong1">
			   <option value="100-최신신상">100-최신신상</option>
			   <option value="200-이월상품">200-이월상품</option>
			   <option value="300-매장진열상품">300-매장진열상품</option>
	    </select>
   </td>
  </tr>
  <!--tr구분선----------------------------- -->
  <tr> <td colspan=2>제품선택</td> </tr>
  <tr>
	<td colspan=2 >
<input type=checkbox name="jepoom" value="구두">구두<br>
<input type=checkbox name="jepoom" value="옷">옷<br>
<input type=checkbox name="jepoom" value="가방">가방<br>
<input type=checkbox name="jepoom" value="액세서리">액세서리<br>
<input type=checkbox name="jepoom" value="무선이어폰">무선이어폰<br>
	</td>
 </tr>
 <!--tr구분선----------------------------- -->
 <tr><td colspan=2>구입방법</td></tr>
 <tr>
   <td colspan=2 >
<input type="radio" name="way1" value="카드">카드<br>
<input type="radio" name="way1" value="현금">현금<br>
<input type="radio" name="way1" value="상품권">상품권<br>
   </td>
</tr>
<!--tr구분선----------------------------- -->
<tr>
   <td colspan=2>
				<input type="submit" value="그래 결심했어!!구입결정!!!">
				<input type="reset" value="취소">
	</td>
 </tr>
</table>
</form>
</body>
</html>
