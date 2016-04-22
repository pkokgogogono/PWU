<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ include file="/customer_center/color.jsp"%>

<html>
<head>
<title>게시판</title>
<link href="style.css" rel="stylesheet" type="text/css">
<style type='text/css'>

</style>
<style>

@font-face {font-family:굴림; src:url();}
body,td,a,div,p,pre,input,textarea {font-family:굴림;font-size:9pt;}

</style>
</head>
<body bgcolor="${white}"> 
<center><b>1:1 문의 </b>
<br><br/>
<form>
<table width="500" border="1" cellspacing="0" cellpadding="0" align="center"> 
  <tr height="30">
    <td align="center" width="125" bgcolor="${value_c}">글제목</td>
  <tr height="30">
    <td align="center" width="125" bgcolor="${value_c}">작성자</td>

    <td align="center" width="125" bgcolor="${value_c}" >작성일</td>

  </tr>


  </tr>
  <tr>
    <td align="center" width="125" bgcolor="${value_c}">글내용</td>
     <td align="left" width="375" colspan="3"></td>

  </tr>
  <tr height="30">     
    <td colspan="4" bgcolor="${value_c}" align="right" >
  
      <input type="button" value="답글쓰기"
       onclick="document.location.href='/JSP/mvc_board/writeForm.do?num=${article.num}&ref=${article.ref}&re_step=${article.re_step}&re_level=${article.re_level}'">
   &nbsp;&nbsp;&nbsp;&nbsp;
       <input type="button" value="글목록"
       onclick="document.location.href='/JSP/mvc_board/list.do?pageNum=${pageNum}'">
    </td>
  </tr>  
</form>     
<form method=post action=commentPro.jsp >
					<tr bgcolor="${value_c}" align=center>
						<td colspan=2>
							<textarea name=commentt rows="6" cols="40"></textarea>			
						</td>
						<td align=center>

							<input type=submit value=코멘트달기>
						</td>
					</tr>
					</form>
				</table>
						</tr>
				</table>
	
			</center>
			</body>
</html>