<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>杭州产品设计新闻|杭州工业设计新闻|产品设计新闻-杭州素造工业设计有限公司新闻</title>
<meta name="keywords" content="素造新闻,浙江及周边设计新闻,杭州设计新闻" />
<meta name="description" content="素造设计公司一直在浙江及浙江周边做设计产品,公司目前在杭州西湖区,在浙江已经有500多的设计案例 ,我们会一直同客户创造更多、更好的产品。 " />
<link href="images/headSoZo/favicon.ico" rel="shortcut icon" type="image/x-icon" />
<link href="css/headSoZo/layout.css" rel="stylesheet" type="text/css" />
</head>
<body><table width="1100" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
<tr>
<td valign="top" style="width:900px; padding-bottom:10px;">
<div id="breadcrumbs" style="width:900px;">
<div id="toplefttitle" style="position:fixed;_position: absolute;_top:expression(documentElement.scrollTop + 44);">
<a href="headSoZo">首页</a>&nbsp;&nbsp;/&nbsp;&nbsp;<a href="headNews?type=0 ">素造新闻</a></div>
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
<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1260876649'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s95.cnzz.com/z_stat.php%3Fid%3D1260876649' type='text/javascript'%3E%3C/script%3E"));document.getElementById("cnzz_stat_icon_1260876649").style.display = "none";</script>
</body>
</html>