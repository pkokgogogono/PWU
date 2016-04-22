<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title></title>
<style text="text/css">
li{
	float:left;
}
</style>
</head>
<body>
<div class="img_area">
<div class="roll">
<script type="text/javascript">
				$(function() {
					$('.thmb_area .onecutThumbnail').hover(
						function() {
								var idx = ( $(this).parents('.thmb_lst').index() * ONECUT_PER_PAGE ) + $(this).index();
								ONECUT_STOP_CHANGE = true;

								$('.roll .slides_control li').removeClass('show');
								$('.roll .slides_control li:eq('+idx+')').addClass('show');
								$('.thmb_area .onecutThumbnail').removeClass('show');
								$('.thmb_area .onecutThumbnail:eq('+idx+')').addClass('show');
							}
						, function() {
								ONECUT_STOP_CHANGE = false;
							});
					setInterval('changeOnecut()', ONECUT_SLIDE_INTERVAL);

					pagingSet2(".img_area",".thmb_area ul ",".page_count .count em",".page_count .count strong"," .page_count .btn_prev_female"," .page_count .btn_next_female");
					btn_arrow_chk();
					$('.btn_next_female').click(function() { btn_arrow_chk();});
					$('.btn_prev_female').click(function() { btn_arrow_chk();})
				});
</script>
<ul class="slides_control">
<li class=""><img src="http://image.wemakeprice.com//dealimg/201603/1030260/67aa6d050e8df8fe91d929ff3ade7d2230b32365.jpg" alt="" width="460px" height="460px" class="onecutImage"></li>
<li class=""><img src="http://image.wemakeprice.com//dealimg/201603/1030260/a6711a2ab79baf2504b7fc346fb6c63dd45ea741.jpg" alt="" width="460px" height="460px" class="onecutImage"></li>
<li class=""><img src="http://image.wemakeprice.com//dealimg/201603/1030260/a243068de9ebd27b92d35d204050aae3d4c3ac9d.jpg" alt="" width="460px" height="460px" class="onecutImage"></li>
<li class=""><img src="http://image.wemakeprice.com//dealimg/201603/1030260/b3c18ffee8a653b22ca8df1f6ebc84169e543762.jpg" alt="" width="460px" height="460px" class="onecutImage"></li>
<li class="show"><img src="http://image.wemakeprice.com//dealimg/201603/1030260/668f6d41788d130c984d9476d10e48c3ca3c1313.jpg" alt="" width="460px" height="460px" class="onecutImage"></li>
</ul></div>

<div class="thmb_area">
<ul class="thmb_lst" style="display: block;">
<li class="onecutThumbnail">
<a href="#none"><img src="http://image.wemakeprice.com//dealimg/thumb/201603/1030260/67aa6d050e8df8fe91d929ff3ade7d2230b32365.jpg" width="60px" height="60px"></a></li>
<li class="onecutThumbnail">
<a href="#none"><img src="http://image.wemakeprice.com//dealimg/thumb/201603/1030260/a6711a2ab79baf2504b7fc346fb6c63dd45ea741.jpg" width="60px" height="60px"></a></li>
<li class="onecutThumbnail">
<a href="#none"><img src="http://image.wemakeprice.com//dealimg/thumb/201603/1030260/a243068de9ebd27b92d35d204050aae3d4c3ac9d.jpg" width="60px" height="60px"></a></li>
<li class="onecutThumbnail show">
<a href="#none"><img src="http://image.wemakeprice.com//dealimg/thumb/201603/1030260/b3c18ffee8a653b22ca8df1f6ebc84169e543762.jpg" width="60px" height="60px"></a></li>
<li class="onecutThumbnail">
<a href="#none"><img src="http://image.wemakeprice.com//dealimg/thumb/201603/1030260/668f6d41788d130c984d9476d10e48c3ca3c1313.jpg" width="60px" height="60px"></a></li>
</ul>
</div>
</body>
</html>