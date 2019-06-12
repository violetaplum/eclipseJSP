<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>

</style>
<title>구입내역출력</title>
</head>
<%
String selected =request.getParameter("select");

String[] bae = request.getParameterValues("product");
String  way=request.getParameter("pay");
 %>
<body>
<h2>구입내역</h2>

<table border="2" width="700">
                    <tr>
	    <td>제품종류번호및제목</td>
	    <td> <%
	     if(selected!=null){
	        out.println(selected);
	        }%></td>
	    </tr>
	   <tr>
			<td>제품선택</td>
			<td>
			<%
			if(bae != null){

			   for(int j=0;j < bae.length; j++)
			            out.println(bae[j]+"<br>");
			}
			%>
			</td>
		</tr>
	  <tr>
	    <td>구입방법 </td>
	    <td>
	     <%
	    if(way !=null){
	    	 out.println(way);
	    }
	      %></td>
	    </tr>
   <tr>
      <td colspan=3>다시구입하려면
        <a href="input.jsp" >여기</a> 를 누르세요
      </td>
   </tr>
</table>
</body>
</html>
