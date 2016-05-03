<%@ page contentType = "text/html; charset=euc-kr" %>
<html>
<head>
<title>����������(�ֹ��ϰ��������)</title>
<center><b>�ֹ��ϰ��������(��ü:${count})</b>
</head>






<c:if test="${count > 0}">
<table border="1" width="700" cellpadding="0" cellspacing="0" align="center">
    <tr height="30" bgcolor="${value_c}">
      <td align="center"  width="100"  >�ֹ���ȣ</td>
      <td align="center"  width="100" >�ֹ�ȸ��</td>
      <td align="center"  width="250" >��ǰ�̸�</td>
      <td align="center"  width="150" >��¥</td>
      <td align="center"  width="100" >����</td>
       
    </tr>

<c:if test="${count == 0}">
<table width="700" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td align="center">
      ������������ ����� ��ǰ�� �����ϴ�.
    </td>
  </tr>
</table>
</c:if>

   <c:forEach var="article" items="${articleList}">
   <tr height="30">
    <td align="center"  width="50" >
  <c:out value="${number}"/>
  <c:set var="number" value="${number - 1}"/>
</td>
 
    <td align="center"  width="100">
       <a href="mailto:${article.email}">${article.writer}</a>
</td>
    <td align="center"  width="150">${article.reg_date}
</td>
    <td align="center"  width="50">${article.readcount}</td>
    <td align="center" width="100" >${article.ip}</td>
  </tr>
  </c:forEach>
</table>
</c:if>



<c:if test="${count > 0}">
   <c:set var="pageCount" value="${count / pageSize + ( count % pageSize == 0 ? 0 : 1)}"/>
   <c:set var="pageBlock" value="${10}"/>
   <fmt:parseNumber var="result" value="${currentPage / 10}" integerOnly="true" />
   <c:set var="startPage" value="${result * 10 + 1}" />
   <c:set var="endPage" value="${startPage + pageBlock-1}"/>
   <c:if test="${endPage > pageCount}">
        <c:set var="endPage" value="${pageCount}"/>
   </c:if>
         
   <c:if test="${startPage > 10}">
        <a href="/PWU/mylist.do?pageNum=${startPage - 10 }">[����]</a>
   </c:if>

   <c:forEach var="i" begin="${startPage}" end="${endPage}">
       <a href="/PWU/mylist.do?pageNum=${i}">[${i}]</a>
   </c:forEach>

   <c:if test="${endPage < pageCount}">
        <a href="/PWU/mylist.do?pageNum=${startPage + 10}">[����]</a>
   </c:if>
</c:if>

<center>
<form name="search" method="POST" action="/mvc_Board/MVC/listSearch.do">
<SELECT name="combo">
    <OPTION value="writer">�ۼ���</OPTION>
    <OPTION value="subject">����</OPTION>
    <OPTION value="content">����</OPTION>
</SELECT>
<input type="text" size="40" maxlength="50" name="search">
<input type="submit" size="40" value="�˻�">
</form>
</center>
</html>