<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- ��� ������ ��� �κ� -->
 <table width="960" height=80 border="1" align=center>
   <tr>
     <td align=center width=200>
      <a href="/shop_main/main_body.htm">����� �ʰ��� Ȩ������</a>
     </td>
     <td align=center>
      {GROUP_navi}
     </td>
   </tr>
 </table>
  
 <!-- BODY ���� ������ ��� �κ� -->
 <table width="960" border="1" align=center>
 <tr>
 <td width=200 valign=top>
  <table width="200" border="1">
    <tr>
   <td>
    <br>
    <br>
     {GROUP_login_box}<br>
    <br> <br>

  <b>5.����������</b><br>
   <br>
   {GROUP_left5}<br>
   <br>
   </td>
    </tr>
  </table>
 </td>
 <Td  valign=top>
   {BODY_CONTENT}
 </td>
 </tr>
 </table>

 <!-- �ϴ� ������ ��� �κ� -->
 <table width="960" border="1" align=center>
   <tr>
     <td width="200">
       <p><br>
        <a href='/shop_main/main_body.htm'> �ϴ� �ΰ�</a><br>
       </p>
       </td>
     <td> <br>
       Ȩ�������� : �ʱ޹̼�Ȩ��<br>
       ���:������<br>
       �̸����ּ� : aaaa@naver.com<br>
       <br>
�� ���� ���Ӽ� {COUNT_TOTAL} /
�̴� ���Ӽ� {COUNT_MONTH} /
���� ���Ӽ� {COUNT_TODAY} <br>
�� �Խù� �� {BBS_TOTAL_CNT}, ���� �� {BBS_NEW_CNT}<br>
�� ȸ�� �� {MEM_TOTAL_CNT}, �ű� ȸ�� �� {MEM_NEW_CNT}<br>
  


</td>
   </tr>
 </table>

</body>
</html>

