<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/customer_center/color.jsp"%>

<html>
<head>
<title>공지사항</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script src="script.js"></script>
</head>

  
<body bgcolor="${white}"> 
<center><b>공지사항</b>
<br><br>
<!-- post방식으로 writeSave()거쳐서 /JSP/mvc_board/writePro.do -> .do 실행 => controlleruri 의 dopost실행 -->
<form method="post" name="writeform" action="/JSP/mvc_board/writePro.do" onsubmit="return writeSave()">
<input type="hidden" name="num" value="${num}"> 
<input type="hidden" name="ref" value="${ref}">
<input type="hidden" name="re_step" value="${re_step}">
<input type="hidden" name="re_level" value="${re_level}">

<table width="400" border="1" cellspacing="0" cellpadding="0"  align="center">

   <tr>
    <td  width="70"  bgcolor="${value_c}" align="center">제 목</td>
    <td  width="330">
       <input type="text" size="10" maxlength="10" name="writer"></td>
  </tr>
  <tr>

<c:if test="${num == 0}">
       <input type="text" size="40" maxlength="50" name="subject"></td>
</c:if>

  </tr>
  
  <tr>
    <td  width="70"  bgcolor="${value_c}" align="
    center" >내 용</td>
    <td  width="330" >
     <textarea name="content" rows="13" cols="40"></textarea> </td>
  </tr>

<tr>     
<td colspan=2 bgcolor="${white}" align="center">
	<input type="file" align="left" value="파일첨부" method="post" enctype="multipart/form-data" action="view.jsp">
</td>
</tr>
<tr>
<td colspan=2 bgcolor="${value_c}" align="center">
  <input type="submit" value="글쓰기" > 
  <input type="reset" value="다시작성">
  <input type="button" value="목록보기" OnClick="window.location='/JSP/mvc_board/list.do'">
</td></tr></table>   
</form>     
</body>
</html> 