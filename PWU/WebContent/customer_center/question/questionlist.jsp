<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<table width="100%" cellpadding="0" cellspacing="0" border="0">
  <tr height="5"><td width="5"></td></tr>
 <tr style="background:url('img/table_mid.gif') repeat-x; text-align:center;">
   <td width="5"><img src="img/table_left.gif" width="5" height="30" /></td>
   <td width="73">��ȣ</td>
   <td width="379">����</td>
   <td width="73">�ۼ���</td>
   <td width="164">�ۼ���</td>
   <td width="58">��ȸ��</td>
   <td width="7"><img src="img/table_right.gif" width="5" height="30" /></td>
  </tr>
<tr height="25" align="center">
</tr>
  <tr height="1" bgcolor="#D2D2D2"><td colspan="6"></td></tr>

 <tr height="1" bgcolor="#82B5DF"><td colspan="6" width="752"></td></tr>
 </table>
 
<table width="100%" cellpadding="0" cellspacing="0" border="0">
  <tr><td colspan="4" height="5"></td></tr>
  <tr align="center">
   <td><input type=button value="�۾���"></td>
  </tr>
</table>
<form>
 <tr>  

        <td colspan="7"> <br/>

            <form name="serach" method ="post">

            <select name="keyField">

                <option value="0"> ----����----</option>

                <option value="id">���̵�</option>

                <option value="name">�̸�</option>

                <option value="addr">�ּ�</option>  

            </select>

            <input type="text" name="keyWord" />

            <input type="button" value="�˻�" onclick="searchCheck(form)" />

            </form>

        </td>      

    </tr>
                                </form>
</body>
</html>