<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>${tagName} 生活-TFBOYS</title>
<link href="images/head/favicon.ico" rel="shortcut icon" type="image/x-icon" />
<link href="css/head/layout.css" rel="stylesheet" type="text/css" />
</head>
<body>
<table width="1100" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
<tr>
<td valign="top" style="width:900px; padding-bottom:10px;">
<div class="columnbars">
<div style="position:fixed;_position: absolute;_top:expression(documentElement.scrollTop + 44);">
    <div id="toplefttitle"><a href="head">首页</a>&nbsp;&nbsp;/&nbsp;&nbsp;<a href="headTagMore?tagName=生活 ">TFBOYS的生活</a></div>
	<ul class="colbars" style="list-style:none;">
		<s:iterator value="#request.tagList" id="art" status="sta">
			<li id="<s:property value='#sta.index'/>"><a href="headTagMore?tagId=<s:property value='#art.id'/>&tagName=<s:property value='#art.tagName'/>" style="font-size:13px;"><s:property value='#art.tagName'/></a></li>
		</s:iterator>
	</ul>

<!-- 小图标切换图片 -->
<script type="text/javascript">
$(document).ready(function(){
	$("#sidebar").slideDown("slow"); 
})
function overprj(id){
	$("#lefta"+id+" > a").addClass("select");
	var dsimg=$("#prjimg"+id).attr("src");
	$("#prjimg"+id).attr("src",$("#prjimg"+id).attr("alt"));
	$("#prjimg"+id).attr("alt",dsimg);
}
function outprj(id){
	$("#lefta"+id+" > a").removeClass("select");
	var dsimg=$("#prjimg"+id).attr("src");
	$("#prjimg"+id).attr("src",$("#prjimg"+id).attr("alt"));
	$("#prjimg"+id).attr("alt",dsimg);
}
</script>
</div>
</div>
<div class="mainpages" style="margin-top:7px;">
		<div style="width:640px; border-bottom:#000 1px solid; margin-bottom:0px; font-size:18px; padding-bottom:8px;">
	   ${tagName}
	    </div>
	    <div style=" height:6px; overflow:hidden; width:640px;">&nbsp;</div>
		<ul id="ployprouls">
	
		<s:iterator value="#request.tagMoreList" id="art" status="sta">
		<li id="<s:property value='#sta.index'/>"><a href="headDetail?id=<s:property value='#art.id'/>" onmouseover="overprj(<s:property value='#art.id'/>);" onmouseout="outprj(<s:property value='#art.id'/>);" >
			<img title="<s:property value='#art.title'/>" src="<s:property value='#art.littleAPicUrl'/>" id="prjimg<s:property value='#art.id'/>" alt="<s:property value='#art.littleBPicUrl'/>"/>
			<span><s:property value='#art.title'/></span></a>
   		 </li>
    	</s:iterator>
    	
	    </ul>
</div>
</td>
<td valign="top" style="padding-left:14px; width:186px;">
<%@ include  file="/pages/headRight.jsp"%>
</td>
</tr>
</table>
</body>
</html>