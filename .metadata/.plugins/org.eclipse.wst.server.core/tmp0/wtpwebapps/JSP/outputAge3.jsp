<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.util.*" %>
<%!
public int getAge(int i){
	   Date today = new Date( );
	   int year = today.getYear();
	   int age = year+1900 - i;
 return age;
 }
 /*
 public int getAge(int i){
	   GregorianCalendar today = new GregorianCalendar ( );
	   int year = today.get ( today.YEAR );
	   int age = year - i;
    return age;
   }*/
%>
<%

    request.setCharacterEncoding("utf-8");
    response.setCharacterEncoding("utf-8");
    String name = request.getParameter("name");
    int birth_year = Integer.parseInt(request.getParameter("birth_year"));
    int age = getAge(birth_year);
%>
<html>
<head>
<title>나이 계산</title>
<meta http-equiv='content-type' content='text/html; charset=utf-8'>
<script language='javascript'>
    function go_page(){
        document.myform.submit();
    }
</script>

</head>

<body>

    <form name='myform' method='post' action='./inputAge3.jsp'>
    	<table width='250' cellpadding='1' cellspacing='1' border='1'>
    		<tr>
        		<td width='100'>
        		    이름
    		    </td>

        		<td width='150'> <%=name%>
        		</td>
    		</tr>
    		<tr>
        		<td> 나이 </td>
        		<td><%=age%> </td>
    		</tr>
<!--    		<tr>
        		<td>지금까지 살아온 날</td>
        		<td><%=age%> </td>
    		</tr>
    		<tr>
        		<td>DB 등급</td>
        		<td><%=age%> </td>
    		</tr>
    		<tr>-->
        		<td colspan='2' align='center'>
        		    <input type='button' value='입력화면'

        		         onclick='javascript:go_page()'>
    		    </td>
    		</tr>
    	</table>
    </form>
</body>
</html>
