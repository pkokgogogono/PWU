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
	function ONumber() {
		var code = window.event.keyCode;
		if ((code > 34 && code < 41) || (code > 47 && code < 58)
				|| (code > 95 && code < 106) || code == 8 || code == 9
				|| code == 13 || code == 46) {
			window.event.returnValue = true;
			return;
		}
		window.event.returnValue = false;
	}

	
</script>
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
<form method="post" name="writeform" action="/PWU/customer_center/notice/notice_writepro.do">
<input type="hidden" name="num" value="${num}"> 
<input type="hidden" name="ref" value="${ref}">

<table width="400" border="1" cellspacing="0" cellpadding="0"  align="center">

   <tr>
    <td  width="70"  bgcolor="${value_c}" align="center">제 목</td>
    <td  width="330">
       <input type="text" size="10" maxlength="10" name="title"></td>
   </tr>


  <tr>

<c:if test="${num==0}">
       <input type="text" size="40" maxlength="50" name="subject"></td>
</c:if>

  </tr>
  
  <tr>
    <td  width="70"  bgcolor="${value_c}" align="center" >내 용</td>
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
  <input type="reset" value="다시작성" >
<input type="button" value="목록" OnClick="window.location='/PWU/customer_center/notice/notice_list.do'"> 
  
<!--    <tr> 
   	<select name="lev" size="1">
   		<option value="0">0</option>
   		<option value="1">1</option>
   		<option value="2">2</option>
   		<option value="3">3</option>  	
   	</select>
   </tr> -->
   
</td></tr></table>   
</form>     
</body>
</html> 