<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/customer_center/color.jsp"%>

<script type="text/javascript">
	function move(url) {
		location.href=url;
	}
	function boardViewCheck() {
		var form = document.BoardViewForm;
		return true;
	}
	
</script>
<html>
<head>
<title>1:1문의</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script src="script.js"></script>
</head>

  
<body bgcolor="${white}"> 
<center><b>1:1문의</b>
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
    <td  width="70"  bgcolor="${value_c}" align="center" >내 용</td>
    <td  width="330" >
     <textarea name="content" rows="13" cols="40"></textarea> </td>
  </tr>

<tr>     
<td  width="70"  bgcolor="${value_c}" align="center">파일첨부</td>
	<td width="330">
	   <input type="text" size="10" maxlength="10" name="writer">
	   <input type="file" align="right" value="파일첨부" method="post" enctype="multipart/form-data" action="view.jsp">
	</td>
</tr>
</table>  
<tr>
<td colspan=2 bgcolor="${value_c}" align="left">
  <input type="submit" value="글쓰기" > 
  <input type="button" value="목록" onclick="move('question_list.jsp');"> 
</td></tr> 
</form>     
</body>
</html> 