<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
<title>상품문의 글수정</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="script.js"></script>
</head>

<body bgcolor="${bodyback_c}"> 
<center><b>상품문의 글수정</b>
<br>
<form method="post" name="writeform" action="/PWU/order/updatePro.do?pageNum=${pageNum}" onsubmit="return writeSave()">
<table width="400" border="1" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td  width="70"  bgcolor="${value_c}" align="center">제목</td>
    <td align="left" width="330">
       <input type="text" size="10" maxlength="10" name="title" value="${Inquiry.title}">
   <input type="hidden" name="num" value="${select.num}"></td>
  </tr>
  <tr>
    <td  width="70"  bgcolor="${value_c}" align="center" >닉네임</td>
    <td align="left" width="330">
       <input type="text" size="40" maxlength="50" name="writer" value="${Inquiry.writer}"></td>
  </tr>
  <tr>
    <td  width="70"  bgcolor="${value_c}" align="center" >내 용</td>
    <td align="left" width="330">
     <input type="text" name="content" rows="13" cols="40" value="${Inquiry.content}"/></td>
  </tr>
  <tr>
    <td  width="70"  bgcolor="${value_c}" align="center" >비밀번호</td>
    <td align="left" width="330" >
     <input type="password" size="8" maxlength="12" name="passwd" value="${Inquiry.passwd}">
</td>
  </tr>
  <tr>     
   <td colspan=2 bgcolor="${value_c}" align="center">
     <input type="submit" value="글수정" > 
     <input type="reset" value="다시작성">
     <input type="button" value="목록보기"
       onclick="document.location.href='/PWU/order/InquiryList.do?pageNum=${pageNum}'">
   </td>
</tr>
</table>
</form>
</body>
</html>  