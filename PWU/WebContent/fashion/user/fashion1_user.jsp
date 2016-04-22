<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!doctype html>
<html lang="KO">
<head>
<title> </title>
<style type="text/css">
html, body { width:100%; height:100%;  margin:0px; padding:0px; }
#tit{ width:800px; height:100px; margin:0px auto; border:0px solid gray; }
#line01 { width:1px; height:5px; background-color:white; margin-top:5px; }
#box01 { width:100%; height:500px; overflow:hidden; position:relative; border:1px;}
#box01 div { width:100%; height:100%; position:absolute; left:800px; top:0px; z-index:1; font-size:100px; text-align:center; }
#box01 div:first-child {left:0px; z-index:2; }
#line02 { width:185px; height:5px; background-color:white; margin:5px 0px; }
#box { width:800px; height:auto; margin:0px auto; }
#box02 { width:100%; height:100px; }
#box02 .bb{ width:185px; height:100px; margin-left:20px; background-color:#eeeeee; float:left; }
#box02 .bb div { width:100%; height:100px; background-image:url('하단메뉴오버시보여줄이미지.jpg'); overflow:hidden;  }
#box02 .bb  div img { width:100%; height:100%; border:1px; display:block; }
#box02 div:first-child { margin-left:0px; }


			p, h3 { 
				margin-bottom:15px;
			}


			.tabs li {
				margin-top: 0px;
				list-style:none;
				display:inline;
			}

			.tabs a {
				padding:5px 10px;
				display:inline-block;
				background:#666;
				color:#fff;
				text-decoration:none;
			}

			.tabs a.active {
				background:#fff;
				color:#000;
			}

</style>

<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('ul.tabs').each(function(){
		// For each set of tabs, we want to keep track of
		// which tab is active and its associated content
		var $active, $content, $links = $(this).find('a');

		// If the location.hash matches one of the links, use that as the active tab.
		// If no match is found, use the first link as the initial active tab.
		$active = $($links.filter('[href="'+location.hash+'"]')[0] || $links[0]);
		$active.addClass('active');

		$content = $($active[0].hash);

		// Hide the remaining content
		$links.not($active).each(function () {
			$(this.hash).hide();
		});

		// Bind the click event handler
		$(this).on('click', 'a', function(e){
			// Make the old tab inactive.
			$active.removeClass('active');
			$content.hide();

			// Update the variables with the new link and content
			$active = $(this);
			$content = $(this.hash);

			// Make the tab active.
			$active.addClass('active');
			$content.show();

			// Prevent the anchor's default click action
			e.preventDefault();
		});
	});
});





var auto1;
var num = 0;
$(function(){
$(window).resize(function(){
 var wi = $(window).width();
 $("#box01 .aa").css("left",wi+"px");
 $("#box01 .aa:eq("+ num +")").css("left","0px");
});

$("#box02 .bb").hover(function(){
   clearInterval( auto1 );
   var ma = $(this).index() * 205;
   $("#line01").stop();
   $("#line02").stop().animate({marginLeft: ma +"px"},100);
   $("div img",this).animate({opacity: "0.5"},100);
},function(){
   var mb = num * 205;
   $("#line02").animate({marginLeft: mb +"px"},100);
   ch(); 
   auto1 = setInterval(function(){ ch() }, 5000);
   $("div img",this).animate({opacity: "1"},100);
});
ch();
auto1 = setInterval(function(){ ch() }, 5000);
});

function ch(){
 var wi = $(window).width();
 $("#box01 .aa").css("left",wi+"px");
 $("#box01 .aa:eq("+ num +")").css("left","0px");
 var num1 = num + 1;
 if( num1 >= $("#box01 .aa").length ){ 
  num1=0;
 };
 var ml = num1 * 205;

 $("#box01 .aa").css("z-index","1");
 $("#box01 .aa:eq("+ num1 +")").css("z-index","2");
 $("#line01").animate({width: "100%"},3000, function(){
  $("#line02").animate({marginLeft: ml +"px"},100);
  $("#box01 .aa:eq("+ num1 +")").animate({left: "0px"},500 ,function(){
   $("#box01 .aa:eq("+ num +")").css("left",wi+"px");
   $("#line01").css("width","1px");
   num = num1;
  });
 });
}

$(function(){
	$("#box02 a").click(function(){
		$("#box01 img").before("<img src='"+$(this).attr("href")+"' alt=''>");
		$("#box01 img:last").fadeOut("fast",function(){
			$(this).remove();
		});
		return false;
	})
});


</script>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String cnt= request.getParameter("cnt");
	int icnt=0;
	if(cnt != null){
		icnt = Integer.parseInt(cnt);
	}
	
	String writer=request.getParameter("writer");
	String title=request.getParameter("title");
	String content=request.getParameter("content");
	
	if(writer == null) 
		writer = "";
	if(title == null)
		title = "";
	if(content == null)
		content="";
%>


<center>
<table border="1">
<tr>
<td width="1200">
<div id="tit"><h1>꼭 갖고싶지 말입니다~혜교도 반한 땡처리특가!!!</h1></div>
<div style="float:right;"><b>리뷰:256</b></div>
<div id="line01" style=""></div>
<div id="box01">
    <div class="aa" style="background-color:white;"><img src="../img/1.PNG" /></div>
    <div class="aa" style="background-color:white;"><img src="../img/2.PNG" /></div>
    <div class="aa" style="background-color:white;"><img src="../img/3.PNG" /></div>
    <div class="aa" style="background-color:white;"><img src="../img/4.PNG" /></div>
</div>

<div id="box">
<div id="line02" style=""></div>
<div id="box02">
    <div class="bb"><div><a href="1.PNG" /><img src="../img/1.PNG" /></div></div>
    <div class="bb"><div><a href="2.PNG" /><img src="../img/2.PNG" /></div></div>
    <div class="bb"><div><a href="3.PNG" /><img src="../img/3.PNG" /></div></div>
    <div class="bb"><div><a href="4.PNG" /><img src="../img/4.PNG" /></div></div>
</div>
</div>
</td>
</tr>
</table>
<br><br>
<table border="1">
<tr>
<td width="1200" height="800">
<ul class='tabs'>
			<li><a href='#tab1'>상품설명</a></li>
			<li><a href='#tab2'>상품후기</a></li>
			<li><a href='#tab3'>리뷰작성</a></li>
</ul>

		<div id='tab1'>
			<h3></h3>
			<center>
			<p><img src="../img/ㅇ.jpg"/></p>
			</center>
		</div>
		<div id='tab2'>
			<h3></h3>
			<table border="1">
			<tr>
			<td border="1" width="400" height="400">
			
			</td><br>
			<td border="1" width="400" height="400">사진2</td><br>
			<td border="1" width="400" height="400">사진3</td><br>
			</tr>
			<tr>
			<td border="1" width="400" height="400">사진4</td>
			<td border="1" width="400" height="400">사진5</td>
			<td border="1" width="400" height="400">사진6</td>
			</tr>
			</table>
		</div>
		<div id='tab3'>
		<form method ="post" action ="fashion1_user.jsp">
<table border="1" widdth="500">
	<tr>
				<td width="15%" bgcolor="pink" align="center">작성자</td>
				<td>
					<input type="text" name="user" value="<%=writer%>">
				</td>
			</tr>
			<tr>
				<td width="15%" bgcolor="pink" align="center">제목</td>
				<td>
					<input type="text" name="title" value="<%=title%>">
				</td>
			</tr>
			<tr>
				<td width="15%" bgcolor="pink" align="center">내용</td>
				<td width="50%" colspan="3"><textarea name="abstract" cols="40"><%=content%></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="4" bgcolor="pink" align="center">업로드할 파일 수
					입력 <input type="Text" name="cnt" value="<%=cnt%>" />
					<input type="submit" value=" 확인 "/>
				</td>
			</tr>
</table>
</form>
<form method ="post" action="fileuploadOk.jsp" enctype="multipart/form-data">
	<input type ="hidden" name ="writer" value="<%=writer %>"/>
	<input type ="hidden" name ="title" value="<%=title%>"/>
	<input type ="hidden" name ="content" value="<%=content %>"/>
	
	<table border="1" width="500">
	<%
		for(int i = 0; i< icnt; i++){
			%>
			
		<tr>
			<td>첨부파일<%=i+1 %></td>
			<td><input type="file" name="file<%=i %>"></td>
		</tr>
	<% 
		}
	%>
	<tr>
		<td colspan="2" align="center">
		<input type="submit" value="전송"/>
		</td>
	</tr>
	</table>
		
		
</form>
		</div>
</td>
</tr>
</table>
			<br>
			<h1>관련추천상품</h1>
			<table border="1">
			<tr>
			<td width="300" height="200">사진</td>
			<td width="300" height="200">사진</td>
			<td width="300" height="200">사진</td>
			<td width="300" height="200">사진</td>
			<td width="300" height="200">사진</td>
			</tr>
			</table>
</center>
</body>
</html>