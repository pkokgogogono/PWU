<%@ page contentType="text/html;charset=euc-kr"%>

<%!
	//Request객체와 String 객체를 각각 가져온다.
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
<title>여러개의 파일을 업로드하는 예제</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script>
	function addFile(formName) 
	{
		if (formName.addcnt.value == "") 
		{
			alert(" 입력할 파일 갯수를 입력하고 확인 단추를 눌러주세요");
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
					var message = paramIndex+ " 번째 파일정보가 없습니다.\n업로드할 파일을 선택해 주세요";
					alert(message);
					formName.elements[idx].focus();
					return;
				}
				paramIndex++;
			}
		}
		
		//form태그에 Action과 같은 기능으로 스크립트를 이용하여 전송가능하다. 
		formName.action = "reviewFormAction.do";
		//전송
		formName.submit();
	}
</script>
</head>
<body bgcolor="pink">
	<div align="center">
		<h2>상품 후기</h2>
		<!-- <font color="#0000ff" size="2">파일 갯수를 입력한 후 [확인] 단추를 눌러주세요.<br>
			입력이 완료되면 파일업로드를 위한 [업로드] 단추를 눌러주세요.
		</font> -->
	</div>
	<br>
	<form name="frmName1" method="post" action="reviewFormAction.do?num=${fashiondetail.num}" enctype="multipart/form-data">
		<table width="50%" border="1" align="center" cellpadding="1"
			cellspacing="1">
			<tr>
				<td width="15%" bgcolor="pink" align="center">작성자</td>
				<td>
					<input type="text" name="writer">
				</td>
			</tr>
			<tr>
				<td width="15%" bgcolor="pink" align="center">내용</td>
				<td width="50%" colspan="3"><input type="text" name="content" cols="40"/>
				</td>
			</tr>
			<tr>
				<td width="15%" bgcolor="pink" align="center">패스워드</td>
				<td>
					<input type="text" name="passwd">
				</td>
			</tr>
			<tr>
			<td width="15%" bgcolor="pink" align="center">사진</td>
			<td colspan="4" bgcolor="pink" align="center">
			<div align="left"> 
              <input type="file" name="filename">
            </div>
			</td>
<!-- 				<td colspan="4" bgcolor="pink" align="center">업로드할 파일 수
					입력 <input type="Text" name="addcnt"> <input type="button"
					value=" 확인 " onclick="addFile(this.form)">
				</td> -->
			</tr>
			<tr>
			<td><input type="submit" value="등록"/></td>
			</tr>
		</table>
	</form>

	<%-- <form name="frmName2" method="post" enctype="multipart/form-data">
		<table width="50%" border="1" align="center" cellpadding="1"
			cellspacing="1">
			<tr>
				<td width="40%" bgcolor="pink" align="center">
					<!-- hidden 형식이므로 보이지 않음 --> <input type="hidden" name="writer"
					value="<%=getParam(request, "writer")%>"> <input
					type="hidden" name="content"
					value="<%=getParam(request, "title")%>"> <input
					type="hidden" name="passwd"
					value="<%=getParam(request, "content")%>"> <%
 	for (int i = 0; i < filecounter; i++) {
 %> <input type="File" size="50" name="filename<%=i%>"> <br>
					<%
						}
					%> <input type="Button" value="업로드" onclick="elementCheck(this.form)">
				</td>
			</tr>
		</table>
	</form> --%>
</body>
</html>