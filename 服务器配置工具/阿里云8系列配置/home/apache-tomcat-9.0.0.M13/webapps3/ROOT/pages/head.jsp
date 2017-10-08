<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>TFBOYS中国粉丝团</title>
<link href="images/head/favicon.ico" rel="shortcut icon" type="image/x-icon" />
<link href="css/head/layout.css" rel="stylesheet" type="text/css" />
<script src="js/head/menujs.js" type="text/javascript"></script>
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
	            <div style="font-size:12px; line-height:22px;"><a href="headDetail?id=128"><s:property value='#art.title'/>&nbsp;&nbsp;&nbsp;&nbsp;
				</a></div>
	        </li>
	        </s:iterator>
        </ul>
        </div>
        <div style="float:right;"><a href="headNews?type=0" style="font-weight:bold;"><img alt="" src="images/head/moreNews.png"></a></div>
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
         <a href="headDetail?id=<s:property value='#art.id'/>" class="line100"><s:property value='#art.tagNames'/></a></div>
         <div style=" padding:2px 0 8px;"><s:property value='#art.title'/></div>
        <div><a href="headDetail?id=<s:property value='#art.id'/>">
        <img src="<s:property value='#art.picUrl'/>" width="367" onmouseover="this.src='<s:property value='#art.secPicUrl'/>';" onmouseout="this.src='<s:property value='#art.picUrl'/>';"/></a></div>
        <div style="padding:0px;margin:0px;line-height:16px;"><a href="" target="_blank" style="text-decoration:underline;"></a></div>     
        </div>
        </s:iterator>
 </td>
<td valign="top" style="padding:0px 15px; width:228px; border-left:#000000 1px solid;">
		<s:iterator value="#request.all2" id="art" status="sta">
        <div class="homeblock">
        <div class="line100" style="font-weight:bold;"><a href="headDetail?id=<s:property value='#art.id'/>" class="line100"><s:property value='#art.tagNames'/></a></div>
        <div style=" padding:2px 0 8px;"><s:property value='#art.title'/></div>
        <div><a href="headDetail?id=<s:property value='#art.id'/>" >
        <img src="<s:property value='#art.picUrl'/>" width="228" onmouseover="this.src='<s:property value='#art.secPicUrl'/>';" onmouseout="this.src='<s:property value='#art.picUrl'/>';" /></a></div>
        </div>
        </s:iterator>
</td>
<td valign="top" style="padding:0px 15px; width:228px; border-left:#000000 1px solid;border-right:#000000 1px solid;">
        <s:iterator value="#request.all3" id="art" status="sta">
        <div class="homeblock">
        <div class="line100" style="font-weight:bold;"><a href="headDetail?id=<s:property value='#art.id'/>" class="line100"><s:property value='#art.tagNames'/></a></div>
         <div style=" padding:2px 0 8px;"><s:property value='#art.title'/></div>
        <div><a href="headDetail?id=<s:property value='#art.id'/>">
        <img src="<s:property value='#art.picUrl'/>" width="228" onmouseover="this.src='<s:property value='#art.secPicUrl'/>';" onmouseout="this.src='<s:property value='#art.picUrl'/>';"/></a></div>
        </div>
        </s:iterator>
</td>
<td valign="top" style="padding-left:14px; width:186px; ">
<%@ include  file="/pages/headRight.jsp"%>
</td>
</tr>
</table>
</body>
</html>