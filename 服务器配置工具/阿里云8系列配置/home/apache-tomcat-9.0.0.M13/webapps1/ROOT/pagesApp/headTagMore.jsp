<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=3.0,minimum-scale=1.0,user-scalable=yes,target-densitydpi=device-dpi">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<title>素造项目</title>
<meta name="keywords" content="家电设计,电子产品设计,农副产品设计,工业设计,产品设计,结构设计,外观造型设计,网站设计" />
<meta name="description" content="素造设计产品有很多,有加湿器、健康理疗仪、空气净化器、车载吸尘器、车载GPS定位器、对衡式取暖器、蜂蜜包装、桌面文具、密封保鲜罐、照明灯等。 " />
<link href="images/headSoZo/favicon.ico" rel="shortcut icon" type="image/x-icon" />
<link href="css/headSoZo/layoutApp.css" rel="stylesheet" type="text/css" />
</head>
<body>
<table height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
<tr>
<td valign="top" style=" width:100%; " colspan="3">
<%@ include  file="/pagesApp/headRight.jsp"%>
</td>
</tr>
<tr style="height:10px;"></tr>

<tr>
<td valign="top" style="padding-bottom:10px;">
<div class="mainpages" style="margin-top:7px;margin-right:0px;">
		<div style="width:640px; border-bottom:#000 1px solid; margin-bottom:0px; font-size:18px; padding-bottom:8px;">
	   	 <b>素造项目</b>
	    </div>
	    <div style=" height:6px; overflow:hidden; width:640px;">&nbsp;</div>
		<ul id="ployprouls">
	
		<s:iterator value="#request.tagMoreList" id="art" status="sta">
		<li id="<s:property value='#sta.index'/>"><a href="headSoZoDetailApp?id=<s:property value='#art.id'/>">
			<img src="<s:property value='#art.littleBPicUrl'/>"alt=""/>
			<span><s:property value='#art.title'/></span></a>
   		 </li>
    	</s:iterator>
    	
	    </ul>
</div>
</td>
</tr>
</table>
<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1260876649'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s95.cnzz.com/z_stat.php%3Fid%3D1260876649' type='text/javascript'%3E%3C/script%3E"));document.getElementById("cnzz_stat_icon_1260876649").style.display = "none";</script>
</body>
</html>