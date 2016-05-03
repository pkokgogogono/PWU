<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<title>notice</title>
<link href="style.css" rel="stylesheet" type="text/css">
<style type='text/css'>

a:link { color:black; text-decoration:none; }
a:visited {  }
a:active { text-decoration:underline; }
a:hover { text-decoration:underline; background-image:url('text_dottdeline.gif'); background-repeat:repeat-x; background-position:50% 100%; }

</style>
<style>

@font-face {font-family:굴림; src:url();}
body,td,a,div,p,pre,input,textarea {font-family:굴림;font-size:9pt;}

</style>
</head>

<body bgcolor="${bodyback_c}"> 
<center><b>글내용 보기</b>
<br>
<form>
<table width="500" border="1" cellspacing="0" cellpadding="0" align="center"> 
  <tr height="30">
    <td align="center" width="125" bgcolor="${value_c}">글번호</td>
    <td align="center" width="125" align="center">${questiondao.num}</td>
    <td align="center" width="125" bgcolor="${value_c}">조회수</td>
    <td align="center" width="125" align="center">${questiondao.read_count}</td>
  </tr>
  <tr height="30">
    <td align="center" width="125" bgcolor="${value_c}">작성자</td>
    <td align="center" width="125" align="center">${questiondao.writer}</td>
    <td align="center" width="125" bgcolor="${value_c}" >작성일</td>
    <td align="center" width="125" align="center">${questiondao.reg_date}</td>
  </tr>
  <tr height="30">
    <td align="center" width="125" bgcolor="${value_c}">글제목</td>
    <td align="center" width="375" align="center" colspan="3">${questiondao.title}</td>
  </tr>
  <tr>
    <td align="center" width="125" bgcolor="${value_c}">글내용</td>
    <td align="center" width="500" height="200" colspan="4"><pre>${questiondao.content}</pre></td>
  </tr>
  <tr height="30">     
    <td colspan="4" bgcolor="${value_c}" align="right" >
  <input type="button" value="글수정"
       onclick="window.location='/PWU/customer_center/question/question_update.do?num=${questiondao.num}'"> 
  <input type="button" value="글삭제"
       onclick="window.location='/PWU/customer_center/question/question_delete.do'"> 
   &nbsp;&nbsp;&nbsp;&nbsp;
       <input type="button" value="글목록" OnClick="window.location='/PWU/customer_center/question/question_list.do'"> 
    </td>
  </tr>
</table>   
</form>     
</body>
</html>    