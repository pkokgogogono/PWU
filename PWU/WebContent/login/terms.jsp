<%@ page contentType="text/html; charset=EUC-KR"%>
<html>
<head>
<title>�α���</title>
<link href="style.css" rel="stylesheet" type="text/css">

   <script>
   var first = document.getElementsByName("first");
   var second = document.getElementsByName("second");
  
       function checkIt(){
    	
    	   if(!document.getElementById("first").checked){
    		   alert("ù ��° ����� �������� �����̽��ϴ�.");
    		   return false;
    	   }
    	   if(!document.getElementById("second").checked){
    		   alert("�� ��° ����� �������� �����̽��ϴ�.");
    		   return false;
    	   }
       }
   </script>
</head>
<body onload="begin()">
<form name="terms" action="inputForm.do" method="post" onSubmit="return checkIt()">
<table cellspacing=1 cellpadding=1 width=240px border=1 align=center>
  <tr height="30">
    <td colspan="2" align="middle" "><strong>��� ����</strong></td>
  </tr>
  <tr height="30">
      <td width="220px"  align=center>ȯ�� �Ұ�</td>
      <td width="20px"><input type="checkbox"  id="first"  ></td>
  </tr>
  <tr height="30">
    <td width="220px"  align=center>��ȯ �Ұ�</td>
      <td width="20px"><input type="checkbox" id="second"  ></td>
  </tr> 
   <tr height="30">
    <td colspan="2" align="middle" >
    <input type=submit value="ȸ������">
   </tr>
     <tr height="30">
    <td colspan="2" align="middle" >
    <input type="button" value="��������" onclick="history.go(-1)">
   </tr>
</table>
</form>
</body>
</html>