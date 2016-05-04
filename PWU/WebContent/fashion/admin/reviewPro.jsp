<%@ page contentType="text/html;charset=euc-kr"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="java.util.*"%>
<%@ page import="java.net.*"%>
<%@ page import="java.io.*"%>
 

<%
String realPath = "";
String savePath = "fileSave";
String type = "euc-kr";
int maxSize = 5*1024*1024;//5M

ServletContext context = getServletContext();
realPath = context.getRealPath(savePath);
ArrayList saveFiles = new ArrayList();
ArrayList origFiles = new ArrayList();

String user = "";
String title= "";
String content = "";


try
{
	MultipartRequest multi = new MultipartRequest( request,realPath,maxSize,type,new DefaultFileRenamePolicy());
											   
	user = multi.getParameter("txtUser");
	title = multi.getParameter("txtTitle");
	content = multi.getParameter("txtAbstract");

	Enumeration files = multi.getFileNames();
	while(files.hasMoreElements()){
	   String name = (String)files.nextElement();
	   saveFiles.add(multi.getFilesystemName(name));
	   origFiles.add(multi.getOriginalFileName(name));
	}
%>
<html>
<head>
<title>여러개의 파일을 업로드하는 예제</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="pink">
	<table align="center" width="75%" border="1" cellspacing="1" cellpadding="1">
        <tr> 
          <td colspan="2"><div align="center">상품 등록</div></td>
        </tr>
        <tr> 
          <td width="31%"><div align="center">제목</div></td>
          <td width="69%"> <div align="left"> 
              <input type="text" name="title" size="60">
            </div></td>
        </tr>
        <tr> 
          <td width="31%"><div align="center">상품이름</div></td>
          <td width="69%"> <div align="left"> 
              <input type="text" name="p_name" size="20">
            </div></td>
        </tr>
        <tr> 
          <td height="21"><div align="center">상품가격</div></td>
          <td> <div align="left"> 
              <input type="text" name="p_price" size="20">
              원 </div></td>
        </tr>
        <tr> 
          <td><div align="center">상품 상세 내용</div></td>
          <td> <div align="left"> 
              <textarea rows="10" cols="45" name="content"></textarea>
            </div></td>
        </tr>
<!--         <tr> 
          <td><div align="center">상품이미지</div></td>
          <td> <div align="left"> 
              <input type="file" name="product_image">
            </div></td>
        </tr> -->
        <tr> 
          <td colspan="2"><div align="center"> 
              <input type="submit" value="제품등록">&nbsp;&nbsp;&nbsp;
              <input type="button" value="목록보기" onclick="window.open('productList.do')">&nbsp;&nbsp;&nbsp;
              <input type="reset" value="다시쓰기">
            </div></td>
        </tr>
      </table>
<%for(int i=0; i<saveFiles.size();i++){%>
<tr >
	<td colspan="4">
	<%
	String y=(String)saveFiles.get(i);
	String x=request.getContextPath()+"/"+savePath+"/"+URLEncoder.encode(y,"UTF-8");
	%>
	<%=i+1%>.<img src="<%=x%>" ><strong></strong>
	</td>
</tr>
<%}%>
</table>
</body>
</html>
<%
}catch(IOException ioe){
	System.out.println(ioe);
}catch(Exception ex){
	System.out.println(ex);
}
%>