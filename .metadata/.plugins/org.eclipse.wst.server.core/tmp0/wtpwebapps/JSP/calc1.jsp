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
}
</style>
<script type="text/javascript">
    function add(str) {
        //alert(str); 경고창 띄울 때
        //document.getElementById("display").value += str; //문서전체(document)에서 ID를 이용해 element하나 가져온다.(getElementById)
        var display = document.getElementById('display');

        if( str == "+" || str == "-" || str =="*" || str == "/" ) { // 자바스크립트에서 문자열 비교도 == 를 쓴다. (equal 쓰지않음)
            document.getElementById("f").value = display.value;
            display.value = "0";
            return;
        }
        else if ( str == "=" ) {
            document.getElementById("s").value = display.value;
            display.value = "0";

            document.getElementById("calcForm").submit(); // documney가 calc3.jsp로 보낸다.
            /*
            var f = document.getElementById("f").value;
            var s = document.getElementById("s").value;
            var result = parseInt(f) + parseInt(s);
            //alert(result);
            display.value = result;

            return;  // 반환한다.
            */
        }

        if ( display.value == 0 ) {
            display.value = "";
        }

        display.value += str;
    } //자바스크립트에서는 return 타입이 없다.

</script>
</head>
<body>
    <input type="text" id="display" value="0" style="width:300px; height:50px;" />

    <form id = "calcForm" method = "post" action="./calc2.jsp">
        <input type="text" id="f" name="f" /> <!-- calc3.jsp가 받을 수 있도록 f 와 s로 생성 -->
        <!-- <input type="hidden" id="f" name="f"> 사용자에게 안보이게 만드는 것 -->
        <input type="text" id="s" name="s" />
    </form>

    <table border="1" width="300" height="300" >
        <tr align = "center">
            <td  colspan= "2"><input type="button" id="division" value="/" style="width:100%; height:70px;" onclick="add('/')" /></td>
            <td><input type="button" id="multiplication" value="*" style="width:100%; height:70px;" onclick="add('*')" /></td>
            <td><input type="button" id="subtraction" value="-" style="width:100%; height:70px;" onclick="add('-')" /></td>
        </tr>
        <tr align = "center">
            <td><input type="button" id="7" value="7" style="width:100%; height:70px;" onclick="add('7')" /></td>
            <td><input type="button" id="8" value="8" style="width:100%; height:70px;" onclick="add('8')" /></td>
            <td><input type="button" id="9" value="9" style="width:100%; height:70px;" onclick="add('9')" /></td>
            <td rowspan="2"><input type="button" id="addition" value="+" style="width:100%; height:140px;" onclick="add('+')"  /></td>
        </tr>
        <tr align = "center">
            <td><input type="button" id="4" value="4" style="width:100%; height:70px;" onclick="add('4')" /></td>
            <td><input type="button" id="5" value="5" style="width:100%; height:70px;"onclick="add('5')" /></td>
            <td><input type="button" id="6" value="6" style="width:100%; height:70px;"onclick="add('6')" /></td>
        </tr>
        <tr align = "center">
            <td><input type="button" id="1" value="1" style="width:100%; height:70px;" onclick="add('1')" /></td>
            <td><input type="button" id="2" value="2" style="width:100%; height:70px;" onclick="add('2')" /></td>
            <td><input type="button" id="3" value="3" style="width:100%; height:70px;" onclick="add('3')" /></td>
            <td rowspan="2"><input type="button" id="result" value="=" style="width:100%; height:140px;" onclick="add('=')" /></td>
        </tr>
        <tr align = "center">
            <td colspan="2"><input type="button" id="0" value="0" style="width:100%; height:70px;" onclick="add('0')" /></td>
            <td><input type="button" id="dot" value="." style="width:100%; height:70px;" onclick="add('.')" /></td>
        </tr>
    </table>

</body>
</html>
