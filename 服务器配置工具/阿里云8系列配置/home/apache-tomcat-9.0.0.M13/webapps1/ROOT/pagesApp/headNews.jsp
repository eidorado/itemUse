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
<title>杭州产品设计新闻|杭州工业设计新闻|产品设计新闻-杭州素造工业设计有限公司新闻</title>
<meta name="keywords" content="素造新闻,浙江及周边设计新闻,杭州设计新闻" />
<meta name="description" content="素造设计公司一直在浙江及浙江周边做设计产品,公司目前在杭州西湖区,在浙江已经有500多的设计案例 ,我们会一直同客户创造更多、更好的产品。 " />
<link href="images/headSoZo/favicon.ico" rel="shortcut icon" type="image/x-icon" />
<link href="css/headSoZo/layoutApp.css" rel="stylesheet" type="text/css" />
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
<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1260876649'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s95.cnzz.com/z_stat.php%3Fid%3D1260876649' type='text/javascript'%3E%3C/script%3E"));document.getElementById("cnzz_stat_icon_1260876649").style.display = "none";</script>
</body>
</html>