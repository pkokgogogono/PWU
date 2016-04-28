
<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
<title>상품주문</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="script.js"></script>
</head>

  
<body bgcolor="${bodyback_c}"> 
<center><b>상품주문</b>
<br>
<form method="post" name="writeform" action="/PWU/order/orderPro.do" onsubmit="return writeSave()">
<input type="hidden" name="num" value="${num}">
<input type="hidden" name="ref" value="${ref}">
<input type="hidden" name="re_step" value="${re_step}">
<input type="hidden" name="re_level" value="${re_level}">

<table>  <tr>
    <td  width="1"  bgcolor="${value_c}" align="center"><td  width="400">TO : pickweup</th></td>
       </tr>
       </table>
<table width="450" border="1" cellspacing="0" cellpadding="0"  align="center">
   <tr>
    <td align="right" colspan="2" bgcolor="${value_c}"> 
   </td>
   </tr>
   <tr>
    <td  width="150"  bgcolor="${value_c}" align="center">제 목</td>
    <td  width="400">
       <input type="text" size="40" maxlength="10" name="subject"></td>
  </tr>
  <tr>
    <td  width="150"  bgcolor="${value_c}" align="center" >문의번호</td>
    <td  width="400">
       <input type="text" size="40" maxlength="50" name="num"></td>
  </tr>
  <tr>
    <td  width="150"  bgcolor="${value_c}" align="center">상품이름</td>
    <td  width="400">
       <input type="text" size="40" maxlength="50" name="p_name" ></td>
  </tr>
  <tr>
    <td  width="150"  bgcolor="${value_c}" align="center">상품가격</td>
    <td  width="400">
       <input type="text" size="40" maxlength="50" name="p_price" ></td>
  <tr>
    <td  width="150"  bgcolor="${value_c}" align="center">E-mail</td>
    <td  width="400">
       <input type="text" size="40" maxlength="50" name="e-mail" ></td>
  </tr>
  <tr> 
       <td  width="150"  bgcolor="${value_c}" align="center">주 소</td>
       <td> <input type="text" name="zipcode" size="7" readonly>
               <input type="button" value="우편번호찾기" onClick="zipCheck()">
               <input type="text" size="40" maxlength="30"></td>
              </td>
    </tr>
  <tr>
      <td align="center">하고싶은말</td>
      <td><textarea name="content" cols="40" rows="7"></textarea></td>
     </tr>
     <table>  <tr>
    <td  width="500"  bgcolor="${value_c}" align="center"><td  width="300">From : memberId</th></td>
       </tr>
       </table>
<tr align="center">
      <td colspan="2"><input type=submit value="주문하기">
       <input type=button value="주문취소" OnClick="window.location='/PWU/order/orderList.jsp'">
     </tr></table>    
</form>     
</body>
</html> 

