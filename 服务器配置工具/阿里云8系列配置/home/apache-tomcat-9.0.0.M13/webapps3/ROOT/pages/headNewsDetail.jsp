<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>${title}-TFBOYS</title>
<link href="images/head/favicon.ico" rel="shortcut icon" type="image/x-icon" />
<link href="css/head/layout.css" rel="stylesheet" type="text/css" />
</head>
<body><table width="1100" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
<tr>
<td valign="top" style="width:900px; padding-bottom:10px;">
<div id="breadcrumbs" style="width:900px;">
<div id="toplefttitle" style="position:fixed;_position: absolute;_top:expression(documentElement.scrollTop + 44);">
<a href="head">首页</a>&nbsp;&nbsp;/&nbsp;&nbsp;<a href="headNews?type=0">TFBOYS新闻</a></div>
</div>
<div id="newsblocktitle">${title}</div>
<div class="newsblock">
	<div class="newsicon">${doTime}</div>
	<div class="newsbody">
       <div class="h01">${secTitle}</div>
            <div>
				<p>${intro}</p>
				<p>&nbsp;</p>
				<s:iterator value="#request.detailList" id="art" status="sta">
            	<p id="<s:property value='#sta.index' />">
            	<s:if test="#art.flag == 1"><img alt="" src="<s:property value='#art.filePath'/>" /></s:if>
				<s:elseif test="#art.flag == 2"><s:property value='#art.content'/></s:elseif>
            	</p>
            	</s:iterator>
			</div>
    </div>
    <div style="clear:both;"></div>
</div>
</td>
<td valign="top" style="padding-left:14px; width:186px;">
<%@ include  file="/pages/headRight.jsp"%>
</td>
</tr>
</table>
</body>
</html>