<%@ page contentType = "text/html; charset=euc-kr" %>
<html>
<head>
<title>마이페이지(옛날에주문했던거조회)</title>
<center><b>옛날에주문했던거조회</b>
</head>
<table border="1" width="700" cellpadding="0" cellspacing="0" align="center">
    <tr height="30" bgcolor="${value_c}">
      <td align="center"  width="50"  >번호</td>
      <td align="center"  width="150" >주문일자</td>
      <td align="center"  width="250" >상품명</td>
      <td align="center"  width="150" >결제금액</td>
      <td align="center"  width="250" >이메일</td>
     
       
    </tr>
</table>
<center>
<form name="search" method="POST" action="/mvc_Board/MVC/listSearch.do">
<SELECT name="combo">
    <OPTION value="writer">작성자</OPTION>
    <OPTION value="subject">제목</OPTION>
    <OPTION value="content">내용</OPTION>
</SELECT>
<input type="text" size="40" maxlength="50" name="search">
<input type="submit" size="40" value="검색">
</form>
</center>
</html>