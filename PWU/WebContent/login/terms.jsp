<%@ page contentType="text/html; charset=EUC-KR"%>
<html>
<head>
<title>로그인</title>
<link href="style.css" rel="stylesheet" type="text/css">

   <script>
   var first = document.getElementsByName("first");
   var second = document.getElementsByName("second");
  
       function checkIt(){
    	
    	   if(!document.getElementById("first").checked){
    		   alert("첫 번째 약관에 동의하지 않으셨습니다.");
    		   return false;
    	   }
    	   if(!document.getElementById("second").checked){
    		   alert("두 번째 약관에 동의하지 않으셨습니다.");
    		   return false;
    	   }
       }
   </script>
</head>
<body onload="begin()">
<form name="terms" action="inputForm.do" method="post" onSubmit="return checkIt()">
<table cellspacing=1 cellpadding=1 width=240px border=1 align=center>
  <tr height="30">
    <td colspan="2" align="middle" "><strong>약관 동의</strong></td>
  </tr>
  <tr height="30">
      <td width="220px"  align=center>환불 불가</td>
      <td width="20px"><input type="checkbox"  id="first"  ></td>
  </tr>
  <tr height="30">
    <td width="220px"  align=center>교환 불가</td>
      <td width="20px"><input type="checkbox" id="second"  ></td>
  </tr> 
   <tr height="30">
    <td colspan="2" align="middle" >
    <input type=submit value="회원가입">
   </tr>
     <tr height="30">
    <td colspan="2" align="middle" >
    <input type="button" value="이전으로" onclick="history.go(-1)">
   </tr>
</table>
</form>
</body>
</html>