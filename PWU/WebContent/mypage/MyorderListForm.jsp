<%@ page contentType = "text/html; charset=euc-kr" %>
<html>
<head>
<title>����������(�������ֹ��ߴ�����ȸ)</title>
<center><b>�������ֹ��ߴ�����ȸ</b>
</head>
<table border="1" width="700" cellpadding="0" cellspacing="0" align="center">
    <tr height="30" bgcolor="${value_c}">
      <td align="center"  width="50"  >��ȣ</td>
      <td align="center"  width="150" >�ֹ�����</td>
      <td align="center"  width="250" >��ǰ��</td>
      <td align="center"  width="150" >�����ݾ�</td>
      <td align="center"  width="250" >�̸���</td>
     
       
    </tr>
</table>
<center>
<form name="search" method="POST" action="/mvc_Board/MVC/listSearch.do">
<SELECT name="combo">
    <OPTION value="writer">�ۼ���</OPTION>
    <OPTION value="subject">����</OPTION>
    <OPTION value="content">����</OPTION>
</SELECT>
<input type="text" size="40" maxlength="50" name="search">
<input type="submit" size="40" value="�˻�">
</form>
</center>
</html>