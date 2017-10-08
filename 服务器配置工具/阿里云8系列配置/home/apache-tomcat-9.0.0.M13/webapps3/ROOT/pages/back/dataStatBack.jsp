<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>后台数据统计</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<link href="images/head/favicon.ico" rel="shortcut icon" type="image/x-icon" />
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <style type="text/css">
  #demo{ background-color:#F0FFFF;}
  #demo:hover{ background-color:#8FBC8F;}
  b{color:blue;}
  </style>
  <script src="js/jquery-3.1.1.min.js" type="text/javascript"></script>
  <body>
    <div id="container"  align="center">
    	<div id="scene">
    		<!-- <img src="images/back/contact.jpg" alt="" width="100%"> -->
    		<h1 style="position:-20 0 0 0">后台数据统计<font size="5px">&nbsp;&nbsp;&nbsp;&nbsp;空间总使用${str0};总文件数：${str1}</font></h1>
    	</div>
    	<div id="content" style="width:99%;">
    		<div id="demo" style="width:100%;height:300px;">
    			<b>TFBOYS的生活统计</b>
    			 <table style="width:99%;">
                <tr>
                    <td>TFBOYS的生活总数：${str2}</td>
                    <td>TFBOYS的生活在使用数：${str3}</td>
                    <td>我添加的总数：${str4}</td>
                </tr>
                <tr>
                    <td>新闻总数：${str5}</td>
                    <td>新闻在使用数：${str6}</td>
                    <td>我最近一次添加时间：${str7}</td>
                </tr>
                <tr>
                    <td>滚动图总数：${str8}</td>
                    <td>滚动图在使用数：${str9}</td>
                    <td>系统最近一次添加时间：${str10}</td>
                </tr>
                <tr>
                    <td>大封面使用空间：${str11}</td>
                    <td colspan="2">大封面总数：${str12}</td>
                </tr>
                <tr>
                    <td>小封面使用空间：${str13}</td>
                    <td colspan="2">小封面总数：${str14}</td>
                </tr>
                <tr>
                    <td colspan="3">行业名称(由次数从高到低排)：${str15}</td>
                </tr>
                <tr>
                    <td colspan="3">次数(与行业一一对应)：${str16}</td>
                </tr>
                </table>
    		</div>
    		<div id="demo" style="width:32%;height:300px;float:left;margin-top:20px;">
    		<b>TFBOYS的生活详情统计</b>
    		 <table style="width:99%;">
                <tr>
                    <td>详情总数：${str17}</td>
                    <td>图片使用空间：${str18}</td>
                </tr>
                <tr>
                    <td>图片总数：${str19}</td>
                    <td>文字总条数：${str20}</td>
                </tr>
              </table>
    		</div>
    		<div id="demo" style="width:32%;height:300px;float:left;margin-left:2%;margin-top:20px;">
    		<b>标签统计</b>
    		 <table style="width:99%;">
                <tr>
                    <td colspan="2">标签总数：${str21}</td>
                </tr>
              </table>
    		</div>
    		<div id="demo" style="width:32%;height:300px;float:left;margin-left:2%;margin-top:20px;">
    		<b>人员统计</b>
    		 <table style="width:99%;">
                <tr>
                    <td colspan="2">人员总数：${str22}</td>
                </tr>
              </table>
    		</div>
    	</div>
    </div>
		 
  </body>
</html>
