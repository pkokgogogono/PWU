<%@ page contentType="text/html; charset=EUC-KR"%>
<html>
<head>
<title>로그인</title>
<link href="style.css" rel="stylesheet" type="text/css">

   <script language="javascript">
       function begin(){
    	   document.myform.id.focus();
       }
       function checkIt(){
    	   if(!document.myform.id.value){
    		   alert("아이디를 입력하지 않으셨습니다.");
    		   document.myform.id.focus();
    		   return false;
    	   }
    	   if(!document.myform.passwd.value){
    		   alert("비밀번호를 입력하지 않으셨습니다.");
    		   document.myform.passwd.focus();
    		   return false;
    	   }
       }
       
       function findId(){
       	
       	url="FindId.do";
       	
       	window.open(url,"post","toolbar=no ,width=500 ,height=300,directories=no,status=yes,scrollbars=yes,menubar=no");
       }
       
       function findPasswd(){
       	
       	url="FindPasswd.do";
       	
       	window.open(url,"post","toolbar=no ,width=500 ,height=300,directories=no,status=yes,scrollbars=yes,menubar=no");
       }
   </script>
</head>
<body onload="begin()">
<form name="myform" action="loginPro.do" method="post" onSubmit="return checkIt()">
<table cellspacing=1 cellpadding=1 width=260 border=1 align=center>
  <tr height="30">
    <td colspan="2" align="middle" "><strong>회원로그인</strong></td>
  </tr>
  <tr height="30">
    <td width="110"  align=center>아이디</td>
    <td width="150" align=center>
      <input type="text" name="id" size="15" maxlength="12"></td>
  </tr>
  <tr height="30">
    <td width="110"  align=center>비밀번호</td>
    <td width="150"  align=center>
      <input type="password" name="passwd" size ="15" maxlength="12"></td>
  </tr> 
  <tr height="30">
    <td colspan="2" align="middle" >
      <input type=submit value="로그인">
      <input type=reset value="다시입력">
      <input type="button" value="회원가입" onclick="javascript:window.location='terms.do'"></td>
   </tr>
   <tr height="30">
    <td colspan="2" align="middle" >
    <input type="button" value="아이디찾기" onclick="findId()">
    <input type="button" value="비밀번호찾기" onclick="findPasswd()">
   </tr>
   <tr height="30">
    <td colspan="2" align="middle" >
    <input type="button" value="메인으로" onclick="history.go(-1)">
   </tr>
</table>
</form>
</body>
</html>