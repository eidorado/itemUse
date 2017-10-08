<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>${title}- 素造</title>
<meta name="keywords" content="素造精神,每一件产品,100%完成" />
<meta name="description" content="素造对于每一件设计产品都是全心全意的对待!" />
<link href="images/headSoZo/favicon.ico" rel="shortcut icon" type="image/x-icon" />
<link href="css/headSoZo/layout.css" rel="stylesheet" type="text/css" />
</head>
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
</div>
</div>
<div class="mainpages" style="margin-top:7px;">
	    <div style="width:640px; border-bottom:#000 1px solid; margin-bottom:0px; font-size:18px; padding-bottom:8px;">
	    ${title}
	    </div>
	    <span>${secTitle}</span>
	<div style="width:640px;">
        <ul class="mainbody">
        <li class="first"><span>${tagNames}</span></li>
        <li>客戶：${client}</li>
        <li>行业：${industry}</li>
        <li>时间：${doTime}</li>
        <li>${intro}</li>
        </ul>
            	<div class="mainpages_line" style="width:640px;">
            	<s:iterator value="#request.detailList" id="art" status="sta">
            	<p id="<s:property value='#sta.index' />">
            	<s:if test="#art.flag == 1"><img alt="" src="<s:property value='#art.filePath'/>" /></s:if>
				<s:elseif test="#art.flag == 2"><s:property value='#art.content'/></s:elseif>
            	</p>
            	</s:iterator>
				<p>&nbsp;</p>
				</div>
    </div>
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