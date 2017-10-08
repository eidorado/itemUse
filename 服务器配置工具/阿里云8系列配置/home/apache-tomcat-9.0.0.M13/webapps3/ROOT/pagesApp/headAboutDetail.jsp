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
<title>${title}</title>
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
<div class="mainpages" style="margin-top:7px;margin-right:0px;word-wrap: break-word;hyphens: auto;">
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
</tr>
</table>
</body>
</html>