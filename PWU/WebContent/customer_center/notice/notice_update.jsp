<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/customer_center/color.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>게시판</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script src="script.js"	></script>
 </head>
 
<body bgcolor="${bodyback_c }">
<center><b>글수정</b>
<br>
<form method="post" name="writeform" action="/JSP/mvc_board/updatePro.do?pageNum=${pageNum }" onsubmit="return writeSave()">
<table width="400" border="1" cellspacing="0" cellpadding="0" align="center">

  <tr>
    <td  width="70"  bgcolor="${value_c}" align="center" >제 목</td>
    <td align="left" width="330">
       <input type="text" size="40" maxlength="50" 
       name="subject" value="${article.subject}"></td>
  </tr>

  <tr>
    <td  width="70"  bgcolor="${value_c}" align="center" >내 용</td>
    <td align="left" width="330">
     <textarea name="content" rows="13" cols="40">${article.content}</textarea></td>
  </tr>

  <tr>     
   <td colspan=2 bgcolor="${value_c}" align="center">
     <input type="submit" value="글수정" > 
     <input type="reset" value="다시작성">
     <input type="button" value="목록보기"
       onclick="document.location.href='/JSP/mvc_board/list.jsp?pageNum=${pageNum}'">
   </td>
</tr>
</table>
</form>
</body>
</html>