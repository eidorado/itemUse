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
<title>TFBOYS新闻|TFBOYS最近新闻|TFBOYS娱乐新闻</title>
<link href="images/head/favicon.ico" rel="shortcut icon" type="image/x-icon" />
<link href="css/head/layoutApp.css" rel="stylesheet" type="text/css" />
</head>
<body><table  height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
<tr>
<td valign="top" style=" width:100%; " colspan="3">
<%@ include  file="/pagesApp/headRight.jsp"%>
</td>
</tr>
<tr style="height:10px;"></tr>
<tr>
<td valign="top" style="padding-bottom:10px;">
<div id="newsblocktitle" style="font-size:36px;">News</div>
<s:iterator value="#request.newsList" id="art" status="sta">
<div id="<s:property value='#sta.index' />">
	<div class="newsbody">
		<br>
	   <div><s:date name="#art.doTime" format="yyyy-MM"/></div>
       <div class="h01">
       		<a href="headNewsDetailApp?id=<s:property value='#art.id'/>"><s:property value='#art.title'/></a>
       </div>
       <br>
              <div><img src="<s:property value='#art.picUrl'/>" /></div>
              <div><s:property value='#art.secTitle'/>
		</div>
       <div class="more">
       <a href="headNewsDetailApp?id=<s:property value='#art.id'/>">More>></a></div>
    </div>
    <div style="clear:both;"></div>
</div>
</s:iterator>
</td>
</tr>
</table>
</body>
</html>