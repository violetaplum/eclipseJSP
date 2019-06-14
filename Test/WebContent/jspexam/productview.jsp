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

<h2>The Selected Products!</h2>
<hr />
Selected N1s : ${sessionScope.counter.getN1()} <!-- //session중에서 counter세션의 N1의 정보를 출력 -->

Selected N2s : ${sessionScope.counter.getN2()}

Selected N3s : ${sessionScope.counter.getN3()}
<hr />

<a href="product.html">Return To First Page</a>
</pre>
</body>
</html>
