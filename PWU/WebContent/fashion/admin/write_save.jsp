<%@ page contentType="text/html;charset=euc-kr" import="java.sql.*" %>
<%@ page import = "java.io.*",  %>
<%@ page import = "java.util.*" %>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>


<%!
    public File reUnique(String path, String file) {
		File sourceFile = new File(path, file);
		File uniqueFile = new File(path, System.currentTimeMillis() + file);
		sourceFile.renameTo(uniqueFile);
		return(uniqueFile);
	} //화일이름 중복...안함...
%>
<%
    String savePath = "/home/member/prunus79/public_html/pro/data";
    MultipartRequest multi = new MultipartRequest(request, savePath , 5*1024*1024);
	String product_name = multi.getParameter("product_name");
	int product_price = Integer.parseInt(multi.getParameter("product_price"));
	String product_detail = multi.getParameter("product_detail");
	int product_stock = Integer.parseInt(multi.getParameter("product_stock"));
	String product_image = multi.getFilesystemName("product_image");
	if(product_image == null || "".equals(product_image)){
		product_image = "ready.gif";
	}else{		 
		product_image =reUnique(savePath, product_image).getName();
	}
	Product product = new Product(product_name, product_price, product_detail, product_stock, product_image);
	if(productControl.ProductInsert(product)){
	%>
	  <script>
	    alert("상품등록이 되었습니다");
		location.href="product_list.jsp?refresh="+<%=System.currentTimeMillis()%>;
	  </script>
	<%
	}else{
	%>
	  <script>
	    alert("상품등록이 되지 않았습니다");
		location.href="product_list.jsp?refresh="+<%=System.currentTimeMillis()%>;
	  </script>
	<%
	}
 %>