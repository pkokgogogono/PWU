<%@ page contentType="text/html; charset=EUC-KR"%>
<html>
<head>
<title>�α���</title>
<link href="style.css" rel="stylesheet" type="text/css">

   <script language="javascript">
       function begin(){
    	   document.myform.id.focus();
       }
       function checkIt(){
    	   if(!document.myform.id.value){
    		   alert("���̵� �Է����� �����̽��ϴ�.");
    		   document.myform.id.focus();
    		   return false;
    	   }
    	   if(!document.myform.passwd.value){
    		   alert("��й�ȣ�� �Է����� �����̽��ϴ�.");
    		   document.myform.passwd.focus();
    		   return false;
    	   }
       }
   </script>
</head>
<body onload="begin()">
<form name="myform" action="loginPro.do" method="post" onSubmit="return checkIt()">
<table cellspacing=1 cellpadding=1 width=260 border=1 align=center>
  <tr height="30">
    <td colspan="2" align="middle" "><strong>ȸ���α���</strong></td>
  </tr>
  <tr height="30">
    <td width="110"  align=center>���̵�</td>
    <td width="150" align=center>
      <input type="text" name="id" size="15" maxlength="12"></td>
  </tr>
  <tr height="30">
    <td width="110"  align=center>��й�ȣ</td>
    <td width="150"  align=center>
      <input type="password" name="passwd" size ="15" maxlength="12"></td>
  </tr> 
  <tr height="30">
    <td colspan="2" align="middle" >
      <input type=submit value="�α���">
      <input type=reset value="�ٽ��Է�">
      <input type="button" value="ȸ������" onclick="javascript:window.location='inputForm.do'"></td>
   </tr>
</table>
</form>
</body>
</html>