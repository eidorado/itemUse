<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>相册</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<link href="images/head/favicon.ico" rel="shortcut icon" type="image/x-icon" />

  </head>
  <link rel="stylesheet" href="jqueryPic/src/images-grid.css">
<style type="text/css">
	.htmleaf-content p {
			text-align: center;
			font-weight: bold;
			color:blue;
			margin-top: 20px;
			font-size: 25px;
		}
</style>
  

  <body>
   <%--  <div id="container"  align="center">
    	<div id="scene">
    		<!-- <img src="images/back/contact.jpg" alt="" width="100%"> -->
    		<h1 style="position:-20 0 0 0">相册</h1>
    	</div>
    	<div style="width:99%;">
    	<b>大封面</b>
    	<div id="demo" style="width:100%;">
    		<s:iterator value="#request.picMainList" id="photo1" status="stu">
    		<div class="thumbnail">
				<a href="file/picMain/<s:property value="photo1"/>" rel="lightbox[picMain]" ><img src="file/picMain/<s:property value="photo1"/>" width="100" height="40" alt="Plants: image 1 0f 4 thumb" /></a>
			</div>
				<s:if test="(#stu.index + 1) % 3 == 0">
				</s:if>
			</s:iterator>
    	</div>
   	 </div>
	</div> --%>
	<div align="center">
	<h1 style="position:-20 0 0 0">相册</h1>
	</div>
	<div class="htmleaf-container">
	<div class="htmleaf-content">
			<hr><p>小封面</p>
			<div id="gallery1"></div>

			<hr><p>大封面</p>
			<div id="gallery2"></div>

			<hr><p>详情图片</p>
			<div id="gallery3"></div>
	</div>
</div>

	<script src="jqueryPic/js/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="jqueryPic/src/images-grid.js"></script>
<script>
	var images1=[${picLittleLists}];
 	var images2=[${picMainLists}];
	var images3=[${picDetailLists}];
	/* var images = [
		'images/1.jpg',
		'images/2.jpg',
		'images/3.jpg',
		'images/4.jpg',
		'images/5.jpg',
		'images/6.jpg'
	];
 */
	$(function() {
		$('#gallery1').imagesGrid({
			images: images1,
			align: true,
			getViewAllText: function(imgsCount) { return '查看全部图片' }
		});
		$('#gallery2').imagesGrid({
			images: images2,
			align: true,
			getViewAllText: function(imgsCount) { return '查看全部图片' }
		});
		$('#gallery3').imagesGrid({
			images: images3,
			align: true,
			getViewAllText: function(imgsCount) { return '查看全部图片' }
		});

	});

</script>
  </body>
</html>
