<%@ page contentType="text/html;charset=euc-kr"%>

<%!
	//Request��ü�� String ��ü�� ���� �����´�.
	public String getParam(HttpServletRequest request, String paramName) 
	{
		if (request.getParameter(paramName) != null) 
		{
			return request.getParameter(paramName);
		} 
		else 
		{
			return "";
		}
	}
%>
<%
	request.setCharacterEncoding("euc-kr");
	int filecounter = 0;
	if (request.getParameter("addcnt") != null) 
	{
		filecounter = Integer.parseInt(request.getParameter("addcnt"));
	}
%>
<html>
<head>
<title>�������� ������ ���ε��ϴ� ����</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script>
	function addFile(formName) 
	{
		if (formName.addcnt.value == "") 
		{
			alert(" �Է��� ���� ������ �Է��ϰ� Ȯ�� ���߸� �����ּ���");
			formName.addcnt.focus();
			return;
		}
		formName.submit();
	}

	function elementCheck(formName) 
	{
		paramIndex = 1;
		for (idx = 0; idx < formName.elements.length; idx++) 
		{
			if (formName.elements[idx].type == "file") 
			{
				if (formName.elements[idx].value == "") 
				{
					var message = paramIndex+ " ��° ���������� �����ϴ�.\n���ε��� ������ ������ �ּ���";
					alert(message);
					formName.elements[idx].focus();
					return;
				}
				paramIndex++;
			}
		}
		
		//form�±׿� Action�� ���� ������� ��ũ��Ʈ�� �̿��Ͽ� ���۰����ϴ�. 
		formName.action = "reviewFormAction.do";
		//����
		formName.submit();
	}
</script>
</head>
<body bgcolor="pink">
	<div align="center">
		<h2>��ǰ �ı�</h2>
		<!-- <font color="#0000ff" size="2">���� ������ �Է��� �� [Ȯ��] ���߸� �����ּ���.<br>
			�Է��� �Ϸ�Ǹ� ���Ͼ��ε带 ���� [���ε�] ���߸� �����ּ���.
		</font> -->
	</div>
	<br>
	<form name="frmName1" method="post" action="reviewFormAction.do?num=${fashiondetail.num}" enctype="multipart/form-data">
		<table width="50%" border="1" align="center" cellpadding="1"
			cellspacing="1">
			<tr>
				<td width="15%" bgcolor="pink" align="center">�ۼ���</td>
				<td>
					<input type="text" name="writer">
				</td>
			</tr>
			<tr>
				<td width="15%" bgcolor="pink" align="center">����</td>
				<td width="50%" colspan="3"><input type="text" name="content" cols="40"/>
				</td>
			</tr>
			<tr>
				<td width="15%" bgcolor="pink" align="center">�н�����</td>
				<td>
					<input type="text" name="passwd">
				</td>
			</tr>
			<tr>
			<td width="15%" bgcolor="pink" align="center">����</td>
			<td colspan="4" bgcolor="pink" align="center">
			<div align="left"> 
              <input type="file" name="filename">
            </div>
			</td>
<!-- 				<td colspan="4" bgcolor="pink" align="center">���ε��� ���� ��
					�Է� <input type="Text" name="addcnt"> <input type="button"
					value=" Ȯ�� " onclick="addFile(this.form)">
				</td> -->
			</tr>
			<tr>
			<td><input type="submit" value="���"/></td>
			</tr>
		</table>
	</form>

	<%-- <form name="frmName2" method="post" enctype="multipart/form-data">
		<table width="50%" border="1" align="center" cellpadding="1"
			cellspacing="1">
			<tr>
				<td width="40%" bgcolor="pink" align="center">
					<!-- hidden �����̹Ƿ� ������ ���� --> <input type="hidden" name="writer"
					value="<%=getParam(request, "writer")%>"> <input
					type="hidden" name="content"
					value="<%=getParam(request, "title")%>"> <input
					type="hidden" name="passwd"
					value="<%=getParam(request, "content")%>"> <%
 	for (int i = 0; i < filecounter; i++) {
 %> <input type="File" size="50" name="filename<%=i%>"> <br>
					<%
						}
					%> <input type="Button" value="���ε�" onclick="elementCheck(this.form)">
				</td>
			</tr>
		</table>
	</form> --%>
</body>
</html>