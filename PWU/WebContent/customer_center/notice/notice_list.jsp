
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
 <title>�Խ���</title>
 
 </head>
 <div class="title">
            <h2><font color="#555555">NOTICE</font></h2>            
 </div>
 
 <script type="text/javascript">
	function move(url) {
		location.href=url;
	}
	function boardViewCheck() {
		var form = document.BoardViewForm;
		return true;
	}
</script>
	
 <body>
 
 <center><b>�۸��(��ü ��:${count})</b>
<table width="700">
  <tr>
    <td align="right" bgcolor="${value_c}">
    	<!-- ��û�ϸ� ������ serv
    	let�� �޴´�  �׷��� ��û�Ҷ� [~.do] --> 
    	<!-- �۾��� Ŭ���ϸ� servlet���� �̵� -->
       <a href="/PWU/customer_center/notice/notice_write.do">�۾���</a>
    </td>
  </tr>
</table>

<c:if test="${count == 0}">
<table width="700" border="1" cellpadding="0" cellspacing="0">
  <tr>
    <td align="center">
      �Խ��ǿ� ����� ���� �����ϴ�.
    </td>
  </tr>
</table>
</c:if>

<c:if test="${count > 0}">
<table border="1" width="700" cellpadding="0" cellspacing="0" align="center">
    <tr height="30" bgcolor="${value_c}">
   <td width="73">��ȣ</td>
   <td width="73">�ۼ���</td>
   <td width="379">����</td>
   <td width="164">�ۼ���</td>
   <td width="73">����</td>
   <td width="58">��ȸ��</td>
  </tr>
  
  <c:forEach var="select" items="${selectList}" >
<tr>
    <td align="center"  width="150">${select.num}</td>
    <td align="center"  width="150">${select.writer}</td>
    <td align="center"  width="150">${select.title}</td>  
    <td align="center"  width="150">${select.reg_date}</td>
    <td align="center"  width="50">${select.content}</td>
    <td align="center" width="100" >${select.read_count}</td>
  </tr>
    </c:forEach>
</table>
</c:if>
 
<table width="100%" cellpadding="0" cellspacing="0" border="0">
  <tr><td colspan="4" height="5"></td></tr>
  <tr align="right">
   <td><input type=button value="�۾���" onclick="move('notice_write.jsp');"></td>  
  </tr>

  
</form>

      <tr align="right">
        <td colspan="7"> <br/>
            <form name="serach" method ="post">
            <select name="keyField">
                <option value="0"> ----����----</option>
                <option value="id">����</option>
                <option value="name">����</option>
            </select>
            <input type="text" name="keyWord" />
            <input type="button" value="�˻�" onclick="searchCheck(form)" />
            </form>
        </td>      

    </tr>
</table>

<c:if test="${count > 0}">
   <c:set var="pageCount" value="${count / pageSize + ( count % pageSize == 0 ? 0 : 1)}"/>
   <c:set var="pageBlock" value="${10}"/>
   <fmt:parseNumber var="result" value="${currentPage / 10}" integerOnly="true" />
   <c:set var="startPage" value="${result * 10 + 1}" />
   <c:set var="endPage" value="${startPage + pageBlock-1}"/>
   <c:if test="${endPage > pageCount}">
        <c:set var="endPage" value="${pageCount}"/>
   </c:if>
         
<c:if test="${startPage > 5}">
        <a href="/PWU/customer_center/notice_list.do?pageNum=${startPage - 5 }">[����]</a>
   </c:if>

   <c:forEach var="i" begin="${startPage}" end="${endPage}">
       <a href="/PWU/customer_center/notice_list.do?pageNum=${i}">[${i}]</a>
   </c:forEach>

   <c:if test="${endPage < pageCount}">
        <a href="/PWU/customer_center/notice_list.do?pageNum=${startPage + 5}">[����]</a>
   </c:if>
  </c:if>

</body> 

</html>
