<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style>
body
{
  background: #c166a1;
}
</style>
</head>
<body>
  <pre>

<h2>선택된 상품 정보는 다음과 같습니다</h2>
<hr />
선택된 N1의 수 : ${sessionScope.counter.N1} //session중에서 counter세션의 N1의 정보를 출력

선택된 N2의 수 : ${sessionScope.counter.N2}

선택된 N3의 수 : ${sessionScope.counter.N3}
<hr />

<a href="product.html">상품 선택화면</a>
</pre>
</body>
</html>
