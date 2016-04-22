
<!DOCTYPE html>
<html>
<head>
		<title>galleryEx1</title>
	<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
		<style type="text/css">
*{
	margin:0;
	padding:0;
	border:0;
}
body{
	background:white;
}
#container{
	width:1000px;
	margin:20px auto;
}
#navi{
	width:300px;
	float:left;
}
#navi ul{
	height:460px;
}
#navi li{
	list-style-type:none;
	width:150px;
	float:left;
}
#navi li img{
	border:3px solid white;
}
#navi{
	overflow:hidden;
}
#navi .pageWrap{
	width:900px;
}
#navi .pageWrap .page{
	width:300px;
	float:left;
}
#navi p{
	clear:both;
	width:300px;
	padding:10px 0;
	text-align:center;
}
#navi p img{
	cursor:pointer;
}
#main{
	width:650px;
	float:right;
}
#main img{
	position:absolute;
	border:3px solid white;
}

		</style>
		<script>
$(function(){
	$("#navi a").click(function(){
		$("#main img").before("<img src='"+$(this).attr("href")+"' alt=''>");
		$("#main img:last").fadeOut("fast",function(){
			$(this).remove();
		});
		return false;
	})
	$("img.next").click(function(){
		$("#navi .pageWrap").animate({
			marginLeft : parseInt($("#navi .pageWrap").css("margin-left"))-300+"px"
		},"fast");
	});
	$("img.prev").click(function(){
		$("#navi .pageWrap").animate({
			marginLeft : parseInt($("#navi .pageWrap").css("margin-left"))+300+"px"
		},"fast");
	});
});
		</script>
	</head>
	<body>
		<div id="container">
			<div id="navi">
				<div class="pageWrap">
					<div  class="page">
						<ul>
							
							<li><a href="1.PNG"><img src="1.PNG" alt="샹제리아" width/></a></li>
							<li><a href="2.PNG"><img src="2.PNG" alt="장미" /></a></li>
							<li><a href="3.PNG"><img src="3.PNG" alt="바다" /></a></li>
							<li><a href="4.PNG"><img src="4.PNG" alt="문" /></a></li>
						</ul>
						<p><img src="galleryEx/btn_next.jpg" alt="뒤로" class="next" /></p>
					</div>
					<div  class="page">
						<ul>
							<li><a href="galleryEx/photo9.jpg"><img src="galleryEx/photo9_thum.jpg" alt="손" /></a></li>
							<li><a href="galleryEx/photo10.jpg"><img src="galleryEx/photo10_thum.jpg" alt="마루" /></a></li>
							<li><a href="galleryEx/photo11.jpg"><img src="galleryEx/photo11_thum.jpg" alt="나무" /></a></li>
							<li><a href="galleryEx/photo12.jpg"><img src="galleryEx/photo12_thum.jpg" alt="잎" /></a></li>
						</ul>
						<p><img src="galleryEx/btn_prev.jpg" alt="앞으로" class="prev" /> <img src="galleryEx/btn_next.jpg" alt="뒤로" class="next" /></p>
					</div>
					<div  class="page">
			
						<p><img src="galleryEx/btn_prev.jpg" alt="앞으로" class="prev" /></p>
					</div>
				</div>
			</div>
			<div id="main">
				<img src="1.PNG" alt="" />
			</div>
		</div>
	</body>
</html>