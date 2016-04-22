<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript"> 
var sidebarurl = "http://도메인"; // Change as required 
var sidebartitle = "홈페이지제목"; // Change as required 
var url = this.location; 
var title = document.title; 

function bookmarksite() { 
if (window.sidebar && window.sidebar.addPanel){ // Firefox 
window.sidebar.addPanel(sidebartitle, sidebarurl,""); 
} 
else if ( document.all ) { // IE Favorite 
window.external.AddFavorite(url, title); 
} 
else if (window.opera && window.print) { 
// do nothing 
 } 
else if (navigator.appName=="Netscape") { 
alert("Please click OK, then press <Ctrl-D> to bookmark this page."); 
} 
 } 

 if (window.sidebar && window.sidebar.addPanel) { 
  document.write('<a href = "javascript:bookmarksite();" style="color:#A7A9AC;">즐겨찿기</a>'); 
  } 
 else if (document.all) { 
  document.write('<a href = "javascript:bookmarksite();" style="color:#A7A9AC;">즐겨찿기</a>'); 
 } 
 else if (window.opera && window.print) { 
document.write('<a href = "'+sidebarurl+'" title="'+sidebartitle+'" rel="sidebar" style="color:#A7A9AC;">즐겨찿기</a>'); 
 } 
 else if (navigator.appName=="Netscape") { 
  document.write('<a href = "javascript:bookmarksite();" style="color:#A7A9AC;">즐겨찿기</a>'); 
} 
 </script>

</body>
</html>

