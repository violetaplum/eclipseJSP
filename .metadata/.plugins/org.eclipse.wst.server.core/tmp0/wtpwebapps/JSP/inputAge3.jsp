
<%@ page contentType="text/html;charset=euc-kr" %>
<html>
<head>
<title>나이 계산</title>
<meta http-equiv='content-type' content='text/html; charset=euc-kr'>
<script language='javascript'>

    function check(){
        var name = document.myform.name.value;
        var byear = document.myform.byear.value;
		var len = byear.length;

        if (name == ''){
            alert('이름을 입력하세요.');
			document.myform.name.focus();
	       return false;
        }


          if (len == 0)
			 {
					      alert("생년을 입력해 주세요!")
					      document.myform.byear.focus()
					      return false;
		    }
			  else if (byear < 0)
					  {
					      alert("음수값은 안됩니다. 다시 입력하세요!")
					      document.myform.byear.focus()
					      return false;
					  }
					  else if (len > 4 || len < 4 )
					  {
					      alert("생년은 4자리로 입력하세요!")
					      document.myform.byear.focus()
					      return false;
					  }
					 else{ return true;}
  }


    function success(){
        if (check()) document.myform.submit();
    }
</script>
</head>

<body>
    <form name='myform' method='post' action='outputAge3.jsp'>
    	<table width='400' cellpadding='1' cellspacing='1' border='1'>
    		<tr>
        		<td width='200'>
        		    이름
    		    </td>
        		<td width='200'>
        		    <input type='text' name='name' value=''>
        		</td>
    		</tr>
    		<tr>
        		<td width = '200'>생년(4자리)</td>
        		<td>
           		<input type='text' name='byear' value=''
            		       maxlength='4'>
        		</td>
    		</tr>
    		<tr>
    		<tr>
        		<td colspan='2' align='center'>
        		    <input type='button' value='가자'
        		           onclick='javascript:success()'>
    		    </td>
    		</tr>
    	</table>
    </form>
</body>
</html>
