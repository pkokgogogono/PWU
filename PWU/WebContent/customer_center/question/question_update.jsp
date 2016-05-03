<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
<form method="post" name="writeform" action="/PWU/customer_center/question/question_updatepro.do">
<input type="hidden" name="num" value="${noticedao.num}"> 

<table width="400" border="1" cellspacing="0" cellpadding="0" align="center">

  <tr>
    <td  width="70"  bgcolor="${value_c}" align="center" >제 목</td>
    <td align="left" width="330">
       <input type="text" size="40" maxlength="50" 
       name="subject" value="${quetiondao.title}"></td>
  </tr>

    <tr>
    <td  width="20"  bgcolor="${value_c}" align="center" >수정 날짜 : </td>
    <td align="left" width="20">
     <input type="text" size="40" maxlength="50" 
       name="subject" value="${quetiondao.reg_date}"></td>
  </tr>

  <tr>
    <td  width="70"  bgcolor="${value_c}" align="center" >내 용</td>
    <td align="left" width="330">
     <input type="text" size="40" maxlength="50" 
       name="subject" value="${quetiondao.content}"></td>
  </tr>


  
  <tr>     
   <td colspan=2 bgcolor="${value_c}" align="center">
     <input type="submit" value="글수정" > 
     <input type="reset" value="다시작성">
	 <input type="button" value="목록" 
			onclick="move('quetion_list.jsp');">   </td>
</tr>
</table>
</form>
</body>
</html>