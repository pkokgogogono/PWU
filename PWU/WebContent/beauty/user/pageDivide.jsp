<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> <head> <title>상하 2단 프레임</title> </head> 
<frameset rows="50%,*" framespacing="0" border="0" frameborder="0"> 
<frame src="userDetail.jsp?num=${num}" name="userDetail" frameborder="no" border="0" 
framespacing="0" scrolling="auto" marginwidth="10" marginheight="0"> 

<frame src="reviewList.jsp" name="review" scrolling="auto" marginwidth="10" 
marginheight="0"> </frameset>  </xhtml>