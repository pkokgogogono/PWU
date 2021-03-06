<%@ page contentType="text/html; charset=euc-kr"%>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="http://malsup.github.com/jquery.cycle2.js"></script>

<style>
/* set border-box so that percents can be used for width, padding, etc (personal preference) */
.cycle-slideshow, .cycle-slideshow * { -webkit-box-sizing: border-box; -moz-box-sizing: border-box; box-sizing: border-box; }


.cycle-slideshow {  width: 45%; min-width: 500px; max-width: 500px; margin: 10px auto; padding: 0; position: relative;
    background: url(http://malsup.github.com/images/spinner.gif) 50% 50% no-repeat;

 }
/* ���Ⱑ ���� */
/* slideshow images (for most of the demos, these are the actual "slides") */
.cycle-slideshow img { 
    /* 
    some of these styles will be set by the plugin (by default) but setting them here
    helps avoid flash-of-unstyled-content
    */
    position: absolute; top: 0; left: 0;
    width: 100%; padding: 0; display: block;
}

/* in case script does not load */
.cycle-slideshow img:first-child {
    position: static; z-index: 100;
}

/* pager */
.cycle-pager { 
    text-align: center; width: 100%; z-index: 500; position: absolute; top: 10px; overflow: hidden;
}
.cycle-pager span { 
    font-family: arial; font-size: 50px; width: 16px; height: 16px; 
    display: inline-block; color: #ddd; cursor: pointer; 
}
.cycle-pager span.cycle-pager-active { color: #D69746;}
.cycle-pager > * { cursor: pointer;}


/* caption */
.cycle-caption { position: absolute; color: white; bottom: 15px; right: 15px; z-index: 700; }


/* overlay */
.cycle-overlay { 
    font-family: tahoma, arial;
    position: absolute; bottom: 0; width: 100%; z-index: 600;
    background: black; color: white; padding: 15px; opacity: .5;
}


/* prev / next links */
.cycle-prev, .cycle-next { position: absolute; top: 0; width: 30%; opacity: 0; filter: alpha(opacity=0); z-index: 800; height: 100%; cursor: pointer; }
.cycle-prev { left: 0;  background: url(http://malsup.github.com/images/left.png) 50% 50% no-repeat;}
.cycle-next { right: 0; background: url(http://malsup.github.com/images/right.png) 50% 50% no-repeat;}
.cycle-prev:hover, .cycle-next:hover { opacity: .7; filter: alpha(opacity=70) }

.disabled { opacity: .5; filter:alpha(opacity=50); }


/* display paused text on top of paused slideshow */
.cycle-paused:after {
    content: 'Paused'; color: white; background: black; padding: 10px;
    z-index: 500; position: absolute; top: 10px; right: 10px;
    border-radius: 10px;
    opacity: .5; filter: alpha(opacity=50);
}

/* 
    media queries 
    some style overrides to make things more pleasant on mobile devices
*/

@media only screen and (max-width: 1000px), only screen and (max-device-width: 1000px) {
    .cycle-slideshow { width: 1000px;}
    .cycle-overlay { padding: 4px }
    .cycle-caption { bottom: 4px; right: 4px }
}
</style>
<link rel="stylesheet" type="text/css" href="	slideshow.css"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div class='cycle-slideshow' data-cycle-fx=scrollHorz data-cycle-timeout=200000000	
data-cycle-pager-event="mouseover">

<div class='cycle-pager'></div>
    <img src="/PWU/login/1.jpg">
    <img src="/PWU/login/2.jpg">
    <img src="/PWU/login/3.jpg">
    <img src="/PWU/login/4.jpg">
    <img src="/PWU/login/5.jpg">
</div>  
<table align="left">
<tr>
	<td valign="top" width="0"></td>
	<td valign="top"><iframe frameborder="0" scrolling="auto" height="220" width="560" allowtransparency="true" marginwidth="0" marginheight="0" src="http://fxrates.kr.forexprostools.com/index_exchange.php?params&inner-border-color=%23CBCBCB&border-color=%23cbcbcb&bg1=%23F6F6F6&bg2=%23ffffff&inner-text-color=%23000000&currency-name-color=%23000000&header-text-color=%23FFFFFF&header-bg=%23979797" align="center"></iframe><br /><div style="width:540px"><a href="http://kr.investing.com" target="_blank"><span style="font-size: 11px;color: #333333;text-decoration: none;"></span></span></div></td>
</tr> 
</table>
</body>
</html>

<!-- <td colspan="2"> -->
<!-- <script  type="text/javascript"   src="http://ko.exchange-rates.org/GetCustomContent.aspx?sid=RT000DK7D&amp;type=RatesTable&amp;stk=03SNLN99TS" charset="utf-8"> -->
<!-- </script> -->
<!-- <div><a id='site' href="http://ko.exchange-rates.org/">.</a></div> -->
<!-- </td> -->