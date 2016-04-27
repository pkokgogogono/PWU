<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.text.SimpleDateFormat" %>

<script language="JavaScript">     
	     
	function deleteSave(){
		if(document.delForm.passwd.value==''){
			alert("비밀번호를 입력하십시요.");
			document.delForm.passwd.focus();
			return false;
		}
	}   
     
</script>

<html>
<head>
<title>게시판</title>
<link href="style.css" rel="stylesheet" type="text/css">
<style type='text/css'>

a:link { color:black; text-decoration:none; }
a:visited {  }
a:active { text-decoration:underline; }
a:hover { text-decoration:underline; background-image:url('text_dottdeline.gif'); background-repeat:repeat-x; background-position:50% 100%; }

</style>
<style>

@font-face {font-family:굴림; src:url();}
body,td,a,div,p,pre,input,textarea {font-family:굴림;font-size:9pt;}

</style>
</head>


<%-- 
<%
	int num=Integer.parseInt(request.getParameter("num"));
	String pageNum=request.getParameter("pageNum");
	
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
	
	try{
			BoardDBBean dbPro=BoardDBBean.getInstance();
			BoardDataBean article=dbPro.getArticle(num);
			
			CommentDBBean cdb=CommentDBBean.getInstance();
			ArrayList comments=cdb.getComments(article.getNum());
			int count=cdb.getCommentCount(article.getNum());
			int ref=article.getRef();
			int re_step=article.getRe_step();
			int re_level=article.getRe_level();
%>
 --%>
 
<body bgcolor="${white}"> 
<br>
<center><b>1:1문의 글 내용 보기</b>
<br><br>
<form>
<table width="500" border="1" cellspacing="0" cellpadding="0" align="center"> 

  <tr height="30">
    <td align="center" width="125" bgcolor="${value_c}">글제목</td>
    <td align="center" width="375" align="center" colspan="3">${article.subject}</td>
  </tr>  
 
  <tr height="30">
    <td align="center" width="125" bgcolor="${value_c}">작성자</td>
    <td align="center" width="125" align="center">${article.writer}</td>
    <td align="center" width="125" bgcolor="${value_c}" >작성일</td>
    <td align="center" width="125" align="center">${article.reg_date}</td>
  </tr>

  <tr height="80">
    <td align="center" width="125" bgcolor="${value_c}">글내용</td>
    <td align="left" width="375" colspan="3"><pre>${article.content}</pre></td>
  </tr>
  <tr height="30">     
    <td colspan="4" bgcolor="${value_c}" align="right" >
  <input type="button" value="글수정"
       onclick="document.location.href='/JSP/mvc_board/updateForm.do?num=${article.num}&pageNum=${pageNum}'">
   &nbsp;&nbsp;&nbsp;&nbsp;
       <input type="button" value="목록" onclick="move('question_list.jsp');">
       
    </td>
  </tr>  
</form>     
<form method=post action=commentPro.jsp >
					<tr bgcolor="${value_c}" align=center>
						<td>코멘트 작성</td>
						<td colspan=2>
							<textarea name=commentt rows="6" cols="40"></textarea>
							
<%-- 							<input type=hidden name=content_num value=<%=article.getNum() %>>
							<input type=hidden name=p_num value=<%=pageNum%>>
							<input type=hidden name=comment_num value=<%=count+1%>> --%>
							
						</td>
						<td align=center>
							<input type=submit value=코멘트달기>
						</td>
					</tr>
					</form>
				</table>
				
<%-- 		<%if(count>0){ %>
				<p>
				<table width=500 border=0 cellspacing=0 cellpadding=0 bgcolor="${bodyback_c}" align=center>
					<tr>
						<td>코멘트 수: <%=comments.size() %>
					</tr>
					<%for(int i=0;i<comments.size();i++){
							CommentDataBean dbc=(CommentDataBean)comments.get(i);
					%>
						<tr>
							<td align=left size=250 bgcolor="${value_c}">
							&nbsp;<b><%=dbc.getCommenter() %>&nbsp;님</b> (<%=sdf.format(dbc.getReg_date())%>)
							</td>
							<td align=right size=250 bgcolor="${value_c}"> 접속IP:<%=dbc.getIp() %>
							&nbsp;<a href="delCommentForm.jsp?ctn=<%=dbc.getContent_num()%>&cmn=<%=dbc.getComment_num() %>&pageNum=<%=pageNum %>" >[삭제]</a>&nbsp;
							</td>
						</tr>	
						<tr>
							<td colspan=2><%=dbc.getCommentt() %><td>
					<%} %> --%>
					
						</tr>
				</table>
				
<%-- 				<%} %>
			<%
	}catch(Exception e){} 
			--%>
			
			
			</center>
			</body>
</html>