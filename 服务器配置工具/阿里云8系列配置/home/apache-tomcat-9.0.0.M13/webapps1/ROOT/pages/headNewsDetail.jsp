<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>${title}-素造</title>
<meta name="keywords" content="工业设计师，产品设计师,设计展览" />
<meta name="description" content="素造及素造工业设计师们一直都广思集益,都会不定期的参加各种设计展览,我们自己也在本部举办过多次设计展览,效果明显。" />
<link href="images/headSoZo/favicon.ico" rel="shortcut icon" type="image/x-icon" />
<link href="css/headSoZo/layout.css" rel="stylesheet" type="text/css" />
</head>
<body><table width="1100" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
<tr>
<td valign="top" style="width:900px; padding-bottom:10px;">
<div id="breadcrumbs" style="width:900px;">
<div id="toplefttitle" style="position:fixed;_position: absolute;_top:expression(documentElement.scrollTop + 44);">
<a href="headSoZo">首页</a>&nbsp;&nbsp;/&nbsp;&nbsp;<a href="headNews?type=0">素造新闻</a></div>
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
<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1260876649'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s95.cnzz.com/z_stat.php%3Fid%3D1260876649' type='text/javascript'%3E%3C/script%3E"));document.getElementById("cnzz_stat_icon_1260876649").style.display = "none";</script>
</body>
</html>