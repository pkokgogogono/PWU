<%@ page contentType="text/html; charset=UTF-8" %>

 <html>
 <head>
 <title>상품문의 목록</title>
 </head>
 <body>
 <center>
<table>

<form name=writeform method=post action="write_ok.jsp">
  <tr>
   <td>
    <table width="100%" cellpadding="0" cellspacing="0" border="0">
     <tr style="background:url('img/table_mid.gif') repeat-x; text-align:left;">
      
      <tr align="center"><td>상품문의 목록</tr></td>
      
     </tr>
    </table>
   <table>
     <tr><td width="800" height="2" bgcolor="red" colspan=7></td></tr>
    <tr>
      <tr align="center">
      	<th width="60">NO</th>
      	<th width="60">TITLE</th>
      	<th width="300">WRITER</th>
      	<th width="200">DATE</th>
      	<th width="200">HIT</th>
      	
      <td>&nbsp;</td>
     </tr>
      <tr><td width="800" height="2" bgcolor="red" colspan=7></td></tr>
    
    
     
     <tr align="center">
      <td>&nbsp;</td>
 
      <td>&nbsp;</td>
     </tr>
    </table>
   </td>
  </tr>
  </form>
 </table>
 
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
</body>
 </html>