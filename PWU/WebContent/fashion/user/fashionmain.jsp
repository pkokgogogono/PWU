<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style type="text/css">


ul.fashion {
	list-style: none;
	text-align: center;
	border-top: 1px solid gray;

	border-bottom: 1px solid gray;
	padding: 10px 0;
	margin:10px 0;	
}

hr{
	margin-top:0px;
}

div.one{
width:1150px;
height:200px;
margin-top:0px;
background-color:pink;
}
</style>
</head>
<body class="fashion">

<div class="one">
<br><br><br>logo<br><br><br><br><br>
<table width="1150" height="20" >
<tr>
<td "textAlign=center" width="230">MENU</td>
<td "textAlign=center" width="230">BEST20</td>
<td "textAlign=center" width="230">FASHION</td>
<td "textAlign=center" width="230">BEAUTY</td>
<td "textAlign=center" width="230">ORDER</td>
</tr>
</table>
</div>
<hr>
<BR><BR><BR><BR><BR><BR>

<div class = "banner">
<b>DRAMA FASHION</b>
<div style="float:right;"> <a href="fashionList.do">MORE+</a></div>
<ul class="fashion">
<li>
<center>
 <table border="1">
 <tr>
 <c:forEach var="select" items="${selectList}" varStatus="loop">
 <c:choose>
 <c:when test="${loop.count%2==0}">
<td width="300" height="300">
 <a href="userDetail.do?num=${select.num}"><img src="${select.path}" width="300" height="280"/></a>
 <br>  
 ${select.title}
 </td>
 </c:when>
 </c:choose>
  </c:forEach>
  </tr>
  </table>
  </center>
</ul>

<bR>

<b>MOVIE FASHION</b>
<div style="float:right;"> <a href="fashionList.jsp">MORE+</a></div>
<ul>
<li><a href="fashion1_user.jsp"><img src="http://image.wemakeprice.com/gnb_main/2016-04-20/1461078000_d0a6d74aac5c73a00ced3a2ec0e0cc8a9566f00f.jpg" load_url="/promotion/sleeveless/?source=100010_listevtbanner&amp;no=1" load_position="List Evt" onclick="_gaq.push(['_trackEvent', 'Banner Click', 'List Evt', '/promotion/sleeveless/?source=100010_listevtbanner&amp;no=1']);" width="233" height="178" alt="Daily basic Sleeveless&nbsp;shirt"></a>
<a href="fashion1_user.jsp"><img src="http://image.wemakeprice.com/gnb_main/2016-04-20/1461078000_d0a6d74aac5c73a00ced3a2ec0e0cc8a9566f00f.jpg" load_url="/promotion/sleeveless/?source=100010_listevtbanner&amp;no=1" load_position="List Evt" onclick="_gaq.push(['_trackEvent', 'Banner Click', 'List Evt', '/promotion/sleeveless/?source=100010_listevtbanner&amp;no=1']);" width="233" height="178" alt="Daily basic Sleeveless&nbsp;shirt"></a>
<a href="fashion1_user.jsp"><img src="http://image.wemakeprice.com/gnb_main/2016-04-20/1461078000_d0a6d74aac5c73a00ced3a2ec0e0cc8a9566f00f.jpg" load_url="/promotion/sleeveless/?source=100010_listevtbanner&amp;no=1" load_position="List Evt" onclick="_gaq.push(['_trackEvent', 'Banner Click', 'List Evt', '/promotion/sleeveless/?source=100010_listevtbanner&amp;no=1']);" width="233" height="178" alt="Daily basic Sleeveless&nbsp;shirt"></a>
</li>
</ul><BR>
<b>AIRPORT/STREET FASHION</b>
<div style="float:right;"> <a href="fashionList.jsp">MORE+</a></div>
<ul>
<li><a href="fashion1_user.jsp"><img src="http://image.wemakeprice.com/gnb_main/2016-04-20/1461078000_d0a6d74aac5c73a00ced3a2ec0e0cc8a9566f00f.jpg" load_url="/promotion/sleeveless/?source=100010_listevtbanner&amp;no=1" load_position="List Evt" onclick="_gaq.push(['_trackEvent', 'Banner Click', 'List Evt', '/promotion/sleeveless/?source=100010_listevtbanner&amp;no=1']);" width="233" height="178" alt="Daily basic Sleeveless&nbsp;shirt"></a>
<a href="./user/fashion1_user.jsp"><img src="http://image.wemakeprice.com/gnb_main/2016-04-20/1461078000_d0a6d74aac5c73a00ced3a2ec0e0cc8a9566f00f.jpg" load_url="/promotion/sleeveless/?source=100010_listevtbanner&amp;no=1" load_position="List Evt" onclick="_gaq.push(['_trackEvent', 'Banner Click', 'List Evt', '/promotion/sleeveless/?source=100010_listevtbanner&amp;no=1']);" width="233" height="178" alt="Daily basic Sleeveless&nbsp;shirt"></a>
<a href="./user/fashion1_user.jsp"><img src="http://image.wemakeprice.com/gnb_main/2016-04-20/1461078000_d0a6d74aac5c73a00ced3a2ec0e0cc8a9566f00f.jpg" load_url="/promotion/sleeveless/?source=100010_listevtbanner&amp;no=1" load_position="List Evt" onclick="_gaq.push(['_trackEvent', 'Banner Click', 'List Evt', '/promotion/sleeveless/?source=100010_listevtbanner&amp;no=1']);" width="233" height="178" alt="Daily basic Sleeveless&nbsp;shirt"></a>
</li>
</ul>
<center>
<br><hr>
<em>COPYRIGHT�� PICKWEUP. ALL RIGHTS RESERVED. TEL:010-1234-1567</em>
</center>
</div>
</body>
</html>