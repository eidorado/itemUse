<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<script src="js/baidutui.js" type="text/javascript"></script>
<script src="goTop/js/jquery.js"></script>
<script>
$(function(){
        $("#totop").hide();
        $(function () {
            $(window).scroll(function(){
                if ($(window).scrollTop()>100){
                    $("#totop").fadeIn();
                }
                else
                {
                    $("#totop").fadeOut();
                }
            });
            $("#totop").click(function(){
                $('body,html').animate({scrollTop:0},500);
                return false;
            });
        });
    }); 
</script>
<style>
#share {z-index:999;position:fixed;_position:absolute;_top:expression(eval(document.documentElement.scrollTop+document.documentElement.clientHeight)-34+"px");bottom:34px;right:397px;width:30px;zoom:1;}
#share a{background-image:url(goTop/images/sozoTop.png); background-repeat:no-repeat; display:block; width:60px; height:60px; margin-bottom:2px; overflow:hidden; text-indent:-999px;-webkit-transition: all 0.2s ease-in-out;-moz-transition: all 0.2s ease-in-out;-o-transition: all 0.2s ease-in-out;-ms-transition: all 0.2s ease-in-out;transition: all 0.2s ease-in-out;}
#share a{}
#share a#totop{background-position:0 0;position:absolute;bottom:0px;cursor:pointer;}
#share a#totop:hover {background-position:-60px 0px;}
</style>
  <div id="share">
<a id="totop" title="">返回顶部</a>
</div>

    <div style="position:fixed;_position: absolute;_top:expression(documentElement.scrollTop + 44);width:186px;">
<div><a href="headSoZo">
<img src="images/headSoZo/sozo-design1.jpg" width="186" onmouseover="this.src='images/headSoZo/sozo-design2.jpg'" onmouseout="this.src='images/headSoZo/sozo-design1.jpg'"/>
</a></div>
<div>
	<ul class="rightul" style="margin-top:26px;margin-left:10px;">
        <li style="padding-top:0px;">C 杭州素造设计</li>
        <li>A 杭州西湖区樱花小筑别墅</li>
    </ul>
	<ul class="rightul" style="margin-top:26px;margin-left:10px;">
        <li style="padding-top:0px;">T &nbsp;&nbsp;+86 571 8526 9816</li>
        <li>E &nbsp;&nbsp;sozohome@163.com</li>
        <li>w &nbsp;www.sozoer.com</li>
    </ul>
	<ul class="rightul" style="bottom:133px;margin-left:10px;position:fixed;">
        <li style="padding-top:0px;"><a href="headSoZoAboutDetail?id=1&title=关于我们">&nbsp;关于我们/ABOUT US</a></li>
        <li><a href="headSoZoAboutDetail?id=4&title=加入我们">&nbsp;加入我们/JOIN US</a></li>
    </ul>
    <div style="bottom:20px;position:fixed;z-index:-1;margin-left:-3px;"><img src="images/headSoZo/2weima.jpg" border="0"></div>
</div>
</div>
