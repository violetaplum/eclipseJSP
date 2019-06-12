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
<%                               //name에대한 값
String jong =request.getParameter("jong1");///콤보박스-하나만
//jong<-200-이월상품
String[] jepoomBae = request.getParameterValues("jepoom");
            //체크박스-여러개 , 배열로 잡아야
             //"구두","옷"..........
String  way=request.getParameter("way1");//라디오버튼-하나만
   //way1이라는이름의 value  --> 카드, 현금...

 %>
<body>
<h2>구입내역</h2>

<table border="2" width="700">
                    <tr>
	    <td>제품종류번호및제목</td>
	    <td> <%
	     if(jong !=null){
	        out.println(jong);
	        }%></td>
	    </tr>
	   <tr>
			<td>제품선택</td>
			<td>
			<%
			if(jepoomBae != null){
//배열의 대표명이 null이 아니면
			   for(int j=0;j < jepoomBae.length; j++)
			            out.println(jepoomBae[j]+"<br>");
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
        <a href="inputMain.jsp" >여기</a> 를 누르세요
      </td>
   </tr>
</table>
</body>
</html>
