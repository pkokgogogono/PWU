<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
<title>상품문의</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="script.js"></script>
</head>

  
<body bgcolor="${bodyback_c}"> 
<center><b>상품문의</b>
<br>
<form method="post" name="writeform" action="/PWU/order/InquiryPro.do" onsubmit="return writeSave()">
<input type="hidden" name="num" value="${num}">
<input type="hidden" name="ref" value="${ref}">
<input type="hidden" name="re_step" value="${re_step}">
<input type="hidden" name="re_level" value="${re_level}">

<table width="400" border="1" cellspacing="0" cellpadding="0"  align="center">
   <tr>
    <td align="right" colspan="2" bgcolor="${value_c}">
   <!--  <a href="/mvc_Board/MVC/list.do"> 글목록</a> -->
   </td>
   </tr>
   <tr>
    <td  width="100"  bgcolor="${value_c}" align="center">제 목</td>
    <td  width="400">
       <input type="text" size="10" maxlength="10" name="subject"></td>
  </tr>
  <tr>
    <td  width="100"  bgcolor="${value_c}" align="center" >닉네임</td>
    <td  width="400">
       <input type="text" size="40" maxlength="50" name="writer"></td>
  </tr>
  <tr>
    <td  width="100"  bgcolor="${value_c}" align="center" >내 용</td>
    <td  width="400" >
     <textarea name="content" rows="13" cols="40"></textarea> </td>
  </tr>
  <tr>
    <td  width="100"  bgcolor="${value_c}" align="center" >첨부파일</td>
    <td><div class="tb-left"><input type='file' name='userfile'  class="MS_input_file" onchange="document.getElementById('size_checker').src = 
this.value;"/></div>
</td>
  </tr>
  <tr>
    <td  width="100"  bgcolor="${value_c}" align="center"><img alt="123" src="images/lock.png" width="70" height = "60"></td>
    <td  width="400" >
     <input type="password" size="8" maxlength="12" name="passwd">
</td>
  </tr>
<tr>     
<td colspan=2 bgcolor="${value_c}" align="center">
  <input type="submit" value="글쓰기" > 
  <input type="reset" value="다시작성">
  <input type="button" value="목록보기" OnClick="window.location='/PWU/order/InquiryList.jsp'">
</td></tr></table>   
</form>     
</body>
</html> 

