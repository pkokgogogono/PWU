<%@ page contentType="text/html;charset=euc-kr"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="java.util.*"%>
<%@ page import="java.net.*"%>
<%@ page import="java.io.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 
ArrayList saveFiles = new ArrayList();
ArrayList origFiles = new ArrayList();
 -->
<html>
<head>
<title>상품후기 보기</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="pink">
<table border="1" width="700" cellpadding="0" cellspacing="0" align="center">
    <tr height="10" bgcolor="pink">
    <td width="144">글번호</td>
   <td width="164">작성자</td>
   <td width="73">내용</td>
   <td width="73">비밀번호</td>
   <td width="379">이미지</td>
  </tr>
  
<c:forEach var="review" items="${review}" >
<tr height="10">
    <td align="center"  width="150" height="20"><a href="reviewDetail.do?re_num=${review.re_num}">${review.re_num}</td>	
    <td align="center"  width="150">${review.writer}</td>
    <td align="center"  width="150">${review.content}</td>
    <td align="center"  width="150">${review.passwd}</td>  
     <td align="center"  width="100" height="100"><img src="${review.path}" width="50" height="50"/></td>   
  </tr>
  <form>
  </form>  
</c:forEach>
  <tr>
   <td><input type = "button" value="상품보기" onclick="window.open('fashionList.do')"/></td>
  </tr>
</table>
</body>
</html>
