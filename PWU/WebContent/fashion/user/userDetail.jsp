<%@ page contentType="text/html; charset=euc-kr" import="java.sql.*" errorPage="" %>
<title>
�����������
</title>
<%-- <%
    String cust_id = (String)session.getAttribute("cust_id");
	if(cust_id == null){
	%>
		<script>
		alert("�α����ϼ���");
		location.href="/pro/login.jsp?refresh="+<%=System.currentTimeMillis()%>;
	    </script>
	<%
	}else{
	if(!cust_id.equals("admin")){
		%>
		<script>
			alert("����� �����ڰ� �ƴմϴ�");
		    location.href="/pro/index.jsp?refresh="+<%=System.currentTimeMillis()%>;
		</script>
		<%
	}else{
%> --%>
<table width="75%" border="1" cellspacing="1" cellpadding="1">
  <tr> 
    <td width="17%">
	<div align="center">
<%-- 	<%
		 if(cust_id == null || cust_id.equals("")){
		    out.println("<a href=\"login.jsp\">�α���</a>");
		 }else{
		    out.println(cust_id+"�� <a href=\"/pro/logout.jsp\">�α׾ƿ�</a>");
		}
	%> --%>
	</div>
	</td>
    <%-- <td width="16%"><div align="center"><a href="../index.jsp">Ȩ</a></div></td>
    <td width="16%"><div align="center"><a href="customer_list.jsp">ȸ������</a></div></td>
    <td width="18%"><div align="center"><a href="product_list.jsp">��ǰ����</a></div></td>
    <td width="19%"><div align="center"><a href="order_list.jsp">�ֹ�����</a></div></td>
    <td width="14%"><div align="center"><a href="index.jsp?refresh=<%=System.currentTimeMillis()%>">������</a></div></td> --%>
  </tr>
  <tr> 
    <td height="190" colspan="6">
	<form method="post" action="mainProAction.do"	>
	<table align="center" width="75%" border="1" cellspacing="1" cellpadding="1">
        <tr> 
          <td width="31%"><div align="center">����</div></td>
          <td width="69%"> <div align="left"> 
              ${fashiondetail.title}
            </div></td>
        </tr>
        <tr> 
          <td width="31%"><div align="center">��ǰ�̸�</div></td>
          <td width="69%"> <div align="left"> 
              ${fashiondetail.p_name}
            </div></td>
        </tr>
        <tr> 
          <td height="21"><div align="center">��ǰ����</div></td>
          <td> <div align="left"> 
              ${fashiondetail.p_price}
              �� </div></td>
        </tr>
        <tr> 
          <td><div align="center">��ǰ �� ����</div></td>
          <td> <div align="left"> 
              ${fashiondetail.content}
            </div></td>
        </tr>
         <tr> 
          <td><div align="center">��ȸ��</div></td>
          <td> <div align="left"> 
              ${fashiondetail.read_count}
            </div></td>
        </tr>
        <tr> 
          <td><div align="center">��ǰ�̹���</div></td>
          <td> <div align="left"> 
		<img src ="${fashiondetail.path}"/>
            </div></td>
        </tr>
<!--         <tr> 
          <td><div align="center">��ǰ�̹���</div></td>
          <td> <div align="left"> 
              <input type="file" name="product_image">
            </div></td>
        </tr> -->
      </table>
<br><br><br>
 <center>
  <table border ="1" width="1200" height="10">
	<tr width="1200" height="10">
	<td width="300">
  <a href="/PWU/fashion/admin/reviewSelect.do?num=${fashiondetail.num}"><center>�۾���</center></a></td>
  <td width="300">
  <a href="/PWU/fashion/admin/fashionList.do?num=${fashiondetail.num}"><center>��ǰ��� ����</center></a></td>
  <td width="300">
   <a href="/PWU/fashion/admin/reviewProAction.do?num=${fashiondetail.num}"><center>��ǰ�ı� ��������</center></a>
   </td>
  </td>
  </tr>

  </table>
  </center>
	</form>
	</td>
  </tr>
</table>
<%-- <% } } %> --%>
