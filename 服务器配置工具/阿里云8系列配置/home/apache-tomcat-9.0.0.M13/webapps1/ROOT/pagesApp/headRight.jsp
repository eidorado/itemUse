<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

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
           		scroll(0,0);
                return false;
            });
        });
        $(window).bind('resize load', function(){
		$("body").css("zoom", $(window).width() / 660);
		$("body").css("display" , "block");
		});
    }); 
</script>
<style>
#share {z-index:999;position:fixed;_position:absolute;_top:expression(eval(document.documentElement.scrollTop+document.documentElement.clientHeight)-34+"px");bottom:100px;}
#share a{background-image:url(goTop/images/sozoTop.png); background-repeat:no-repeat; display:block; width:60px; height:60px; margin-bottom:2px; overflow:hidden; text-indent:-999px;-webkit-transition: all 0.2s ease-in-out;-moz-transition: all 0.2s ease-in-out;-o-transition: all 0.2s ease-in-out;-ms-transition: all 0.2s ease-in-out;transition: all 0.2s ease-in-out;}
#share a{}
#share a#totop{background-position:-60px 0px;position:absolute;bottom:0px;cursor:pointer;}
</style>
  <div id="share">
<a id="totop" title="">返回顶部</a>
</div>

    <div style="">
<div style="float:left"><a href="headSoZoApp">
<img src="images/headSoZo/sozo-design2_App.jpg"/>
</a></div>
<div style="float:left;margin-left:10px;">
<ul class="rightul">
        <li style="padding-top:0px;">C 杭州素造设计</li>
        <li>A 杭州西湖区樱花小筑别墅</li>
        <li>T &nbsp;&nbsp;+86 571 8526 9816</li>
        <li>E &nbsp;&nbsp;sozohome@163.com</li>
        <li>w &nbsp;www.sozoer.com</li>
    </ul>
</div>
<div style="float:right;margin-left:10px;">
 <img src="images/headSoZo/2weima_App.jpg" border="0">
</div>
<div style="float:right;">
	<ul  class="rightul">
        <li style="padding-top:0px;"><a href="headSoZoAboutDetailApp?id=1&title=关于我们">&nbsp;关于我们/ABOUT US</a></li>
        <li><a href="headSoZoAboutDetailApp?id=2&title=素造团队">&nbsp;素造团队/SOZO TEAM</a></li>
        <li><a href="headSoZoAboutDetailApp?id=3&title=素造荣誉">&nbsp;素造荣誉/SOZO HONOR</a></li>
        <li><a href="headSoZoAboutDetailApp?id=4&title=加入我们">&nbsp;加入我们/JOIN US</a></li>
    </ul>
</div>
</div>
