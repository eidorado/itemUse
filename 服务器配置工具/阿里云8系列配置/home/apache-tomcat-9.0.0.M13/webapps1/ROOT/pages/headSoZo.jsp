<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>杭州素造工业设计有限公司-SOZO</title>
<meta name="keywords" content="素造设计,杭州设计公司,sozo,sozoer" />
<meta name="description" content="运用互联网思维,我们在工业设计、产品设计、包装设计、平面设计、家具设计、新产品研发、网站建设等领域都有了自己的理解。 " />
<link href="images/headSoZo/favicon.ico" rel="shortcut icon" type="image/x-icon" />
<link href="css/headSoZo/layout.css" rel="stylesheet" type="text/css" />
<script src="js/headSoZo/menujs.js" type="text/javascript"></script>
</head>
<body>
<table border="0" align="center" cellpadding="0" cellspacing="0">
<tr>
<td valign="top" style="padding-right:15px; width:367px;">
        <div class="homeblock">
		        <div  style="position:relative; width:367px; height:410px; overflow:hidden;">
        <ul id="indexflash" style="width:${size*367}px;left:0px;">
	        <s:iterator value="#request.all9" id="art" status="sta">
	        <li id="<s:property value='#sta.index'/>">
	            <div><a href="headNewsDetail?id=<s:property value='#art.id'/>"><img src="<s:property value='#art.secPicUrl'/>" width="367" height="373" /></a></div>
	            <div style="font-size:12px; line-height:22px;"><a href="headSoZoDetail?id=128"><s:property value='#art.title'/>&nbsp;&nbsp;&nbsp;&nbsp;
				</a></div>
	        </li>
	        </s:iterator>
        </ul>
        </div>
        <div style="float:right;"><a href="headNews?type=0" style="font-weight:bold;"><img alt="" src="images/headSoZo/moreNews.png"></a></div>
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
         <a href="headSoZoDetail?id=<s:property value='#art.id'/>" class="line100"><s:property value='#art.tagNames'/></a></div>
         <div style=" padding:2px 0 8px;"><s:property value='#art.title'/></div>
        <div><a href="headSoZoDetail?id=<s:property value='#art.id'/>">
        <img src="<s:property value='#art.picUrl'/>" width="367" onmouseover="this.src='<s:property value='#art.secPicUrl'/>';" onmouseout="this.src='<s:property value='#art.picUrl'/>';"/></a></div>
        <div style="padding:0px;margin:0px;line-height:16px;"><a href="" target="_blank" style="text-decoration:underline;"></a></div>     
        </div>
        </s:iterator>
 </td>
<td valign="top" style="padding:0px 15px; width:228px; border-left:#000000 1px solid;">
		<s:iterator value="#request.all2" id="art" status="sta">
        <div class="homeblock">
        <div class="line100" style="font-weight:bold;"><a href="headSoZoDetail?id=<s:property value='#art.id'/>" class="line100"><s:property value='#art.tagNames'/></a></div>
        <div style=" padding:2px 0 8px;"><s:property value='#art.title'/></div>
        <div><a href="headSoZoDetail?id=<s:property value='#art.id'/>" >
        <img src="<s:property value='#art.picUrl'/>" width="228" onmouseover="this.src='<s:property value='#art.secPicUrl'/>';" onmouseout="this.src='<s:property value='#art.picUrl'/>';" /></a></div>
        </div>
        </s:iterator>
</td>
<td valign="top" style="padding:0px 15px; width:228px; border-left:#000000 1px solid;border-right:#000000 1px solid;">
        <s:iterator value="#request.all3" id="art" status="sta">
        <div class="homeblock">
        <div class="line100" style="font-weight:bold;"><a href="headSoZoDetail?id=<s:property value='#art.id'/>" class="line100"><s:property value='#art.tagNames'/></a></div>
         <div style=" padding:2px 0 8px;"><s:property value='#art.title'/></div>
        <div><a href="headSoZoDetail?id=<s:property value='#art.id'/>">
        <img src="<s:property value='#art.picUrl'/>" width="228" onmouseover="this.src='<s:property value='#art.secPicUrl'/>';" onmouseout="this.src='<s:property value='#art.picUrl'/>';"/></a></div>
        </div>
        </s:iterator>
</td>
<td valign="top" style="padding-left:14px; width:186px; ">
<%@ include  file="/pages/headRight.jsp"%>
</td>
</tr>
</table>
<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1260876649'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s95.cnzz.com/z_stat.php%3Fid%3D1260876649' type='text/javascript'%3E%3C/script%3E"));document.getElementById("cnzz_stat_icon_1260876649").style.display = "none";</script>
</body>
</html>