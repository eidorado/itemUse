<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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
<title>杭州素造工业设计有限公司-SOZO</title>
<meta name="keywords" content="素造设计,杭州设计公司,sozo,sozoer" />
<meta name="description" content="运用互联网思维,我们在工业设计、产品设计、包装设计、平面设计、家具设计、新产品研发、网站建设等领域都有了自己的理解。 " />
<link href="images/headSoZo/favicon.ico" rel="shortcut icon" type="image/x-icon" />
<link href="css/headSoZo/layoutApp.css" rel="stylesheet" type="text/css" />
<script src="js/headSoZo/menujsApp.js" type="text/javascript"></script>
</head>
<body>
<table border="0" align="center" cellpadding="0" cellspacing="0">
<tr>
<td valign="top" style=" width:100%; " colspan="3">
<%@ include  file="/pagesApp/headRight.jsp"%>
</td>
</tr>
<tr style="height:10px;"></tr>
<tr>
<td valign="top" style="padding-right:14px; width:267px;">
        <div class="homeblock">
		        <div  style="position:relative; width:267px; height:310px; overflow:hidden;">
        <ul id="indexflash" style="width:${size*267}px;left:0px;">
	        <s:iterator value="#request.all9" id="art" status="sta">
	        <li id="<s:property value='#sta.index'/>">
	            <div><a href="headNewsDetailApp?id=<s:property value='#art.id'/>"><img src="<s:property value='#art.secPicUrl'/>" width="267" height="273" /></a></div>
	            <div style="font-size:12px; line-height:22px;"><a href="headSoZoDetailApp?id=128"><s:property value='#art.title'/>&nbsp;&nbsp;&nbsp;&nbsp;
				</a></div>
	        </li>
	        </s:iterator>
        </ul>
        </div>
        <div style="height:48px;">
        <div style="float:right;"><a href="headNewsApp?type=0" style="font-weight:bold;"><img alt="" src="images/headSoZo/moreNews.png"></a></div>
        </div>
        </div>
<script>
var fx="right";
var ads=${size-1};
var timeoutProcess;
var nowindex=0;
setTimeout(autoplay,3000);
</script>
		<s:iterator value="#request.all1" id="art" status="sta">
         <div class="homeblock" id="<s:property value='#sta.index'/>"><div class="line100" style="font-weight:bold;">
         <a href="headSoZoDetailApp?id=<s:property value='#art.id'/>" class="line100"><s:property value='#art.tagNames'/></a></div>
         <div style=" padding:2px 0 8px;"><s:property value='#art.title'/></div>
        <div><a href="headSoZoDetailApp?id=<s:property value='#art.id'/>">
        <img src="<s:property value='#art.secPicUrl'/>" width="267" /></a></div>
        <div style="padding:0px;margin:0px;line-height:16px;"><a href="" target="_blank" style="text-decoration:underline;"></a></div>     
        </div>
        </s:iterator>
 </td>
<td valign="top" style="padding:0px 15px; width:148px; border-left:#000000 1px solid;">
		<s:iterator value="#request.all2" id="art" status="sta">
        <div class="homeblock">
        <div class="line100" style="font-weight:bold;"><a href="headSoZoDetailApp?id=<s:property value='#art.id'/>" class="line100"><s:property value='#art.tagNames'/></a></div>
        <div style=" padding:2px 0 8px;"><s:property value='#art.title'/></div>
        <div><a href="headSoZoDetailApp?id=<s:property value='#art.id'/>" >
        <img src="<s:property value='#art.secPicUrl'/>" width="148" /></a></div>
        </div>
        </s:iterator>
</td>
<td valign="top" style="padding:0px 15px; width:148px; border-left:#000000 1px solid;border-right:#000000 1px solid;">
        <s:iterator value="#request.all3" id="art" status="sta">
        <div class="homeblock">
        <div class="line100" style="font-weight:bold;"><a href="headSoZoDetailApp?id=<s:property value='#art.id'/>" class="line100"><s:property value='#art.tagNames'/></a></div>
         <div style=" padding:2px 0 8px;"><s:property value='#art.title'/></div>
        <div><a href="headSoZoDetailApp?id=<s:property value='#art.id'/>">
        <img src="<s:property value='#art.secPicUrl'/>" width="148" /></a></div>
        </div>
        </s:iterator>
</td>
</tr>
</table>
<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1260876649'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s95.cnzz.com/z_stat.php%3Fid%3D1260876649' type='text/javascript'%3E%3C/script%3E"));document.getElementById("cnzz_stat_icon_1260876649").style.display = "none";</script>
</body>
</html>