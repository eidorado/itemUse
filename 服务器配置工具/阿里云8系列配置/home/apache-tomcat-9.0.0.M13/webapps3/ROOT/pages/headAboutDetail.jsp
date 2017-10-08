<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>${title}</title>
<link href="images/head/favicon.ico" rel="shortcut icon" type="image/x-icon" />
<link href="css/head/layout.css" rel="stylesheet" type="text/css" />
</head>
<body><table width="1100" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
<tr>
<td valign="top" style="width:900px; padding-bottom:10px;">
<div class="columnbars">
<div style="position:fixed;_position: absolute;_top:expression(documentElement.scrollTop + 44);">
    <div id="toplefttitle"><a href="head">首页</a>&nbsp;&nbsp;/&nbsp;&nbsp;<a href="headAboutDetail?id=1&title=关于我们">关于我们</a></div>
	<ul class="colbars" style="list-style:none;">
		<li><a href="headAboutDetail?id=1&title=TFBOYS追随者-关于我们" style="font-size:13px;">关于我们</a></li>
		<li><a href="headAboutDetail?id=2&title=TFBOYS爱豆团-我们团队" style="font-size:13px;">我们团队</a></li>
		<li><a href="headAboutDetail?id=3&title=记录TFBOYS点点滴滴-我们荣誉" style="font-size:13px;">我们荣誉</a></li>
		<li><a href="headAboutDetail?id=4&title=这里的每一份凝聚力都源于TFBOYS-加入我们" style="font-size:13px;">加入我们</a></li>
	</ul>
</div>
</div>
<div class="mainpages" style="margin-top:7px;">
	    <div style="width:640px; border-bottom:#000 1px solid; margin-bottom:0px; font-size:16px; padding-bottom:8px;">
	    ${title}
	    </div>
	<div style="width:640px;">
           	<div class="mainpages_line" style="width:640px;">
           	<br>
           	<s:iterator value="#request.detailList" id="art" status="sta">
           	<p id="<s:property value='#sta.index' />">
           	<s:if test="#art.flag == 1"><img alt="" src="<s:property value='#art.filePath'/>" /></s:if>
			<s:elseif test="#art.flag == 2"><s:property value='#art.content'/></s:elseif>
           	</p>
           	</s:iterator>
			<p>&nbsp;</p></div>
    </div>
</div>
</td>
<td valign="top" style="padding-left:14px; width:186px;">
<%@ include  file="/pages/headRight.jsp"%>
</td>
</tr>
</table>
</body>
</html>