<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>${title}</title>
<meta name="keywords" content="设计未来,团队荣誉,广招设计人才" />
<meta name="description" content="素—诚心诚意做好产品是我们创办公司的初衷也是宗旨,造—互联网思维产品设计是我们做好产品的核心方法 。" />
<link href="images/headSoZo/favicon.ico" rel="shortcut icon" type="image/x-icon" />
<link href="css/headSoZo/layout.css" rel="stylesheet" type="text/css" />
</head>
<body><table width="1100" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
<tr>
<td valign="top" style="width:900px; padding-bottom:10px;">
<div class="columnbars">
<div style="position:fixed;_position: absolute;_top:expression(documentElement.scrollTop + 44);">
    <div id="toplefttitle"><a href="headSoZo">首页</a>&nbsp;&nbsp;/&nbsp;&nbsp;<a href="headSoZoAboutDetail?id=1&title=关于我们">关于我们</a></div>
	<ul class="colbars" style="list-style:none;">
		<li><a href="headSoZoAboutDetail?id=1&title=一个设计公司的故事-关于我们" style="font-size:13px;">关于我们</a></li>
		<li><a href="headSoZoAboutDetail?id=2&title=这是一个平等,愉悦,协作,进化的设计团队-素造团队" style="font-size:13px;">素造团队</a></li>
		<li><a href="headSoZoAboutDetail?id=3&title=每一件设计产品的认可-素造荣誉" style="font-size:13px;">素造荣誉</a></li>
		<li><a href="headSoZoAboutDetail?id=4&title=这里的每一份耕耘都有收获-加入我们" style="font-size:13px;">加入我们</a></li>
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
<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1260876649'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s95.cnzz.com/z_stat.php%3Fid%3D1260876649' type='text/javascript'%3E%3C/script%3E"));document.getElementById("cnzz_stat_icon_1260876649").style.display = "none";</script>
</body>
</html>