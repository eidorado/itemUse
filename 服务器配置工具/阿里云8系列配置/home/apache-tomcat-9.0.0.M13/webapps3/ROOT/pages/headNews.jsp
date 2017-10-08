<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>TFBOYS新闻|TFBOYS最近新闻|TFBOYS娱乐新闻</title>
<link href="images/head/favicon.ico" rel="shortcut icon" type="image/x-icon" />
<link href="css/head/layout.css" rel="stylesheet" type="text/css" />
</head>
<body><table width="1100" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
<tr>
<td valign="top" style="width:900px; padding-bottom:10px;">
<div id="breadcrumbs" style="width:900px;">
<div id="toplefttitle" style="position:fixed;_position: absolute;_top:expression(documentElement.scrollTop + 44);">
<a href="head">首页</a>&nbsp;&nbsp;/&nbsp;&nbsp;<a href="headNews?type=0 ">TFBOYS新闻</a></div>
</div>
<div id="newsblocktitle" style="font-size:36px;">News</div>
<s:iterator value="#request.newsList" id="art" status="sta">
<div class="newsblock" id="<s:property value='#sta.index' />">
	<div class="newsicon"><s:date name="#art.doTime" format="yyyy-MM"/></div>
	<div class="newsbody">
       <div class="h01"><a href="headNewsDetail?id=<s:property value='#art.id'/>"><s:property value='#art.title'/></a></div>
              <div><img src="<s:property value='#art.picUrl'/>" /></div>
              <div><s:property value='#art.secTitle'/>
		</div>
       <div class="more">
       <a href="headNewsDetail?id=<s:property value='#art.id'/>">More>></a></div>
    </div>
    <div style="clear:both;"></div>
</div>
</s:iterator>
</td>
<td valign="top" style="padding-left:14px; width:186px;">
<%@ include  file="/pages/headRight.jsp"%>
</td>
</tr>
</table>
</body>
</html>