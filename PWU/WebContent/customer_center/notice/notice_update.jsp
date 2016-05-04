<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script type="text/javascript">

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
<form method="post" action="/PWU/customer_center/notice/notice_updatepro.do?num=${num}">

<table width="400" border="1" cellspacing="0" cellpadding="0" align="center">
  <tr height="30">
    <td align="center" width="125" bgcolor="${value_c}">글번호</td>
    <td align="center" width="125" align="center">${noticedao.num}</td>
    
    <td align="center" width="125" bgcolor="${value_c}">조회수</td>
    <td align="center" width="125" align="center">${noticedao.read_count}</td>
  </tr>
  <tr height="30">
    <td align="center" width="125" bgcolor="${value_c}">작성자</td>
    <td align="center" width="125" align="center">${noticedao.writer}</td>
   
    <td align="center" width="125" bgcolor="${value_c}" >작성일</td>
    <td align="center" width="125" align="center">${noticedao.reg_date}</td>
  </tr>
  <tr height="30">
    <td align="center" width="125" bgcolor="${value_c}">글제목</td>
    <td align="center" width="375" align="center" colspan="3">
       <input type="text" name="title" size="60" value="${noticedao.title}"></td>
    
  </tr>
  <tr>
    <td align="center" width="125" bgcolor="${value_c}">글내용</td>
    <td align="center" width="500" height="200" colspan="4">
       <input type="text" name="content" size="60" value="${noticedao.content}"></td>
    
  </tr>

  <tr>     
   <td colspan=2 bgcolor="${value_c}" align="center">
     <input type="submit" value="글수정" > 
     <input type="reset" value="다시작성">
	 <input type="button" value="목록" 
			onclick="javascript:window.location='/PWU/customer_center/notice/notice_list.do'">   </td>
</tr>
</table>
</form>
</body>
</html>