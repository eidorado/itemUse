<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>${tagName} 项目-素造</title>
<meta name="keywords" content="家电设计,电子产品设计,农副产品设计,工业设计,产品设计,结构设计,外观造型设计,网站设计" />
<meta name="description" content="素造设计产品有很多,有加湿器、健康理疗仪、空气净化器、车载吸尘器、车载GPS定位器、对衡式取暖器、蜂蜜包装、桌面文具、密封保鲜罐、照明灯等。 " />
<link href="images/headSoZo/favicon.ico" rel="shortcut icon" type="image/x-icon" />
<link href="css/headSoZo/layout.css" rel="stylesheet" type="text/css" />
</head>
<body>
<table width="1100" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
<tr>
<td valign="top" style="width:900px; padding-bottom:10px;">
<div class="columnbars">
<div style="position:fixed;_position: absolute;_top:expression(documentElement.scrollTop + 44);">
    <div id="toplefttitle"><a href="headSoZo">首页</a>&nbsp;&nbsp;/&nbsp;&nbsp;<a href="headTagMore?tagName=项目 ">素造项目</a></div>
	<ul class="colbars" style="list-style:none;">
		<s:iterator value="#request.tagList" id="art" status="sta">
			<li id="<s:property value='#sta.index'/>"><a href="headTagMore?tagId=<s:property value='#art.id'/>&tagName=<s:property value='#art.tagName'/>" style="font-size:13px;"><s:property value='#art.tagName'/></a></li>
		</s:iterator>
	</ul>

<!-- 素造项目小图标切换图片 -->
<script type="text/javascript">
$(document).ready(function(){
	$("#sidebar").slideDown("slow"); 
})
function overprj(id){
	$("#lefta"+id+" > a").addClass("select");
	var dsimg=$("#prjimg"+id).attr("src");
	$("#prjimg"+id).attr("src",$("#prjimg"+id).attr("alt"));
	$("#prjimg"+id).attr("alt",dsimg);
}
function outprj(id){
	$("#lefta"+id+" > a").removeClass("select");
	var dsimg=$("#prjimg"+id).attr("src");
	$("#prjimg"+id).attr("src",$("#prjimg"+id).attr("alt"));
	$("#prjimg"+id).attr("alt",dsimg);
}
</script>
</div>
</div>
<div class="mainpages" style="margin-top:7px;">
		<div style="width:640px; border-bottom:#000 1px solid; margin-bottom:0px; font-size:18px; padding-bottom:8px;">
	   ${tagName}
	    </div>
	    <div style=" height:6px; overflow:hidden; width:640px;">&nbsp;</div>
		<ul id="ployprouls">
	
		<s:iterator value="#request.tagMoreList" id="art" status="sta">
		<li id="<s:property value='#sta.index'/>"><a href="headSoZoDetail?id=<s:property value='#art.id'/>" onmouseover="overprj(<s:property value='#art.id'/>);" onmouseout="outprj(<s:property value='#art.id'/>);" >
			<img title="<s:property value='#art.title'/>" src="<s:property value='#art.littleAPicUrl'/>" id="prjimg<s:property value='#art.id'/>" alt="<s:property value='#art.littleBPicUrl'/>"/>
			<span><s:property value='#art.title'/></span></a>
   		 </li>
    	</s:iterator>
    	
	    </ul>
</div>
</td>
<td valign="top" style="padding-left:14px; width:186px;">
<%@ include  file="/pages/headRight.jsp"%>
</td>
</tr>
</table>
<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1260876649'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s95.cnzz.com/z_stat.php%3Fid%3D1260876649' type='text/javascript'%3E%3C/script%3E"));document.getElementById("cnzz_stat_icon_1260876649").style.display = "none";</script>
</body>
</html>