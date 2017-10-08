<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>TFBOYS的生活详情管理</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<link href="images/head/favicon.ico" rel="shortcut icon" type="image/x-icon" />
  </head>
<!--   排序.start -->
	<link href="sortable/app.css" rel="stylesheet" type="text/css"/>
<!--   排序.end -->
  <link rel="stylesheet" type="text/css" href="css/styles.css">
  <style>
  	#tableList tr td{background:white;color:black;font-family: "Microsoft YaHei"}
  </style>
  <script src="js/jquery-3.1.1.min.js" type="text/javascript"></script>
  <script type="text/javascript" src="js/divopen.js"></script>
  <script type="text/javascript">
  		$(function(){
  			//只要刷新页面就清空所有checkbox
  			$(":checkbox").prop("checked",false);
  		})
  		function addOpen(c){
  			$('#fm2')[0].reset();//清空不了本身存在值的input
  			$("#fm2 #flag1").removeAttr("disabled");
  			$("#fm2 #flag2").removeAttr("disabled");
  			$("#fm2 #flag1").attr("checked","checked");
  			$("#fm2 #flag2").removeAttr("checked");
  			$("#fm2 #seePicUrl").attr("");
  			$("#Idiv2_title").text("新增");
  			$("#fm2 #fm2_0").css("display","");
  			$("#fm2_1").css("display","none");
  			$("#fm2_2").css("display","none");
  			$("#fm2_21").css("display","none");
			$("#fm2_3").css("display","");
			$("#fm2_4").css("display","");
  			showDiv(c);
			//$("#status1").removeAttr("checked");
  		}
  		
  	    function add(fm){
  	    	var url="";
  	        if($('input[name="picDetail.flag"][checked]').val()=='1'){
  	        	if(fm.myFile.value==""){
  	        	alert("请选择图片！");
  	        	return;
  	        	}
  	        	url="fileUploadJson";
  	        }else{
  	        	if(fm.content.value==""){
  	        	alert("请输入文字！");
  	        	return;
  	        	}
  	        	url="picDetailSave";
  	        }
  	        var formData = new FormData($("#fm2" )[0]);
  	         $.ajax({
		                cache: true,
		                type: "POST",
		                url:url,
		                data:formData,// 你的formid或者 { id: idIndex, name: nameIndex },//提交参数$('#fm2').serialize()这个浏览器版本要求较低，formData要求版本较高，IE9+
		                async: false,
		                //dataType : "json",//设置需要返回的数据类型
		                 contentType: false, //必须false才会避开jQuery对 formdata 的默认处理 XMLHttpRequest会对 
		                 processData: false, //必须false才会自动加上正确的Content-Type
		                error: function(request) {
		                    alert("操作失败了！");
		                },
		                success: function(data) {
		                	var k=data.status;
		                	if(k=='1'){   //新增
		                		$('#fm2')[0].reset(); 
		                	}else if(k=='11'){   //修改
		                		closeDivS("Idiv2");
		                	}else if(k=='2'){
		                		alert("数据传输错误!");
		                	}else{
		                		alert("刷新页面并上传大小合适的正确文件!")
		                	}
		                	//location.href="";
		                	//var dataObj=eval("("+data+")");//转换为json对象
		                }
		       });
  		}
  		
  		function editOpen(c){
  			var value=selectCb(1);
  			if(value=='0'||value=='-1'){
  			return;
  			}
  			$('#fm2')[0].reset();
  			$("#fm2 #seePicUrl").attr("");
  			$("#Idiv2_title").text("修改");
  			$("#fm2 #flag1").attr("disabled","disabled");
  			$("#fm2 #flag2").attr("disabled","disabled");
  			showDiv(c);
  			//$("#fm2 #picId").val($("#ftr"+value+" #ftd3").text());
  			var flag=$("#ftr"+value+" #ftd7").text();
  			if(flag=='1'){		//图片
  				$("#fm2 #flag1").attr("checked","checked");
  				$("#fm2 #flag2").removeAttr("checked");
  				$("#fm2 #seePicUrl").attr("src",$("#ftr"+value+" #ftd5").text());
  				$("#fm2_1").css("display","none");
  				$("#fm2_2").css("display","");
  				$("#fm2_21").css("display","");
  				$("#fm2_3").css("display","");
  				$("#fm2_4").css("display","");
  			}else{			//文字
  				$("#fm2 #flag2").attr("checked","checked");
  				$("#fm2 #flag1").removeAttr("checked");
  				$("#fm2 #content").val($("#ftr"+value+" #ftd6").text());
  				$("#fm2_1").css("display","");
  				$("#fm2_2").css("display","none");
  				$("#fm2_21").css("display","none");
  				$("#fm2_3").css("display","none");
  				$("#fm2_4").css("display","none");
  			}
			$("#fm2 #oldPath").val($("#ftr"+value+" #ftd5").text());
  			$("#fm2 #id").val(value);
  			$("#fm2 #picDetailId").val(value);
  		}
  		
  		function del(){
  			var value=selectCb(2);
  			if(value=='0'){
  				return;
  			}
  			$.ajax({
		                cache: true,
		                type: "POST",
		                url:"picDetailDel",
		                data:{ids:value},
		                async: false,
		                 dataType : "json",//设置需要返回的数据类型
		                error: function(request) {
		                    alert("操作失败了！");
		                },
		                success: function(data) {
		                	var k=data.status;
		                	if(k=='1'){   //成功
		                		location.reload();
		                	}else if(k=='2'){
		                		alert("数据错误！")
		                	}else{
		                		alert("系统错误：请联系管理员!")
		                	}
		                }
		       });
		 }
  		
  		//新增flag控制
   		function changeFlag(c){
   			if(c=='1'){
   				$("#fm2 #flag1").attr("checked","checked");
   				$("#fm2 #flag2").removeAttr("checked");
   				$("#fm2_1").css("display","none");
  				$("#fm2_2").css("display","none");
  				$("#fm2_21").css("display","none");
  				$("#fm2_3").css("display","");
  				$("#fm2_4").css("display","");
   			}else{
   				$("#fm2 #flag1").removeAttr("checked");
   				$("#fm2 #flag2").attr("checked","checked");
   				$("#fm2_1").css("display","");
  				$("#fm2_2").css("display","none");
  				$("#fm2_21").css("display","none");
  				$("#fm2_3").css("display","none");
  				$("#fm2_4").css("display","none");
   			}
   		}
   
   		function closeDivS(c){
   			location.reload();
   			closeDiv(c);
   		}
   
   		//排序
   		function rank(c){
   			//$("ul li").remove();
   			$("#foo").html("");
   			$.ajax({
		                cache: true,
		                type: "POST",
		                url:"picDetailAll",
		                data:{picId:${picId}},
		                async: false,
		                 dataType : "json",//设置需要返回的数据类型
		                error: function(request) {
		                    alert("操作失败了！");
		                },
		                success: function(data) {
		                	var k=data.status;
		                	if(k=='1'){   //成功
		                		var a=data.list;
		                		var k="";
		                		for(var i=0;i<a.length;i++){
		                			if(a[i].flag=='1'){
		                				k="<li><input type=\"hidden\" id=\"rid\" value="+a[i].id+" /><img src="+a[i].filePath+" height=\"50px\" title="+a[i].fileName+"></li>";
		                			}else{
		                				var str=a[i].content;
		                				if(str.length>65){
		                					str=str.substring(0,65)+"......";
		                				}
		                				k="<li><input type=\"hidden\" id=\"rid\" value="+a[i].id+" />"+str+"</li>";
		                			}
		                			$("#foo").append(k);
		                		}
		                	}else if(k=='2'){ //没有数据
		                	}else if(k=='3'){
		                		alert("数据错误！")
		                	}else{
		                		alert("系统错误：请联系管理员!")
		                	}
		                }
		       });
   			showDiv(c);
   		}
   
  		//排序保存
        function addRank(){
        	var len=$("#foo li").length;
        	if(len>0){
	        	var ids="";
	       		$("#foo li").each(function (i) {
	       			if(ids==''){
	       				ids=$("#rid",this).val();
	       			}else{
	       				ids+=","+$("#rid",this).val();
	       			}
	                /* var This = $(this);
	                alert(This.$("#id").val()) */
	            });
	            $.ajax({
		                cache: true,
		                type: "POST",
		                url:"updatePicDetailSn",
		                data:{ids:ids},
		                async: false,
		                 dataType : "json",//设置需要返回的数据类型
		                error: function(request) {
		                    alert("操作失败了！");
		                },
		                success: function(data) {
		                	var k=data.status;
		                	if(k=='11'){   //修改sn成功
		                		location.reload();
		                	}else if(k=='2'){ //没有数据
		                		alert("修改失败！")
		                	}else if(k=='3'){
		                		alert("数据错误！")
		                	}else{
		                		alert("系统错误：请联系管理员!")
		                	}
		                }
		       });
        	}
        }







   
  		
  		
  		//选行改变单个checkbox
  		function checkOne(c){
  			if($("#cb"+c).prop("checked")){
  				$("#cb"+c).prop("checked",false);
  				$("#ftr"+c+" td").css("background-color","#ffffff");
  			}else{
  				$(":checkbox").prop("checked",false);
  				$("#cb"+c).prop("checked",true);
  				$("#tableList tr td").css("background-color","#ffffff");
  				$("#ftr"+c+" td").css("background-color","#eaf3f5");
  			}
  		}
  		//选择
  		function unSelect()
		{
		  
		  if(document.checkboxForm.checkbox1.checked){
		       for(var i=0;i<document.checkboxForm.range.length;i++){
		           document.checkboxForm.range[i].checked=true;
		       }
		  }else{
		      for(var i=0;i<document.checkboxForm.range.length;i++){
		           document.checkboxForm.range[i].checked=false;
		       }
		 }
		}
		function selectCb(c){  //1单选修改，2多选删除
			 var ranges = document.getElementsByName('range');
			 var num=0;
			 var value = new Array();
			 for(var i = 0; i < ranges.length; i++){
			   if(ranges[i].checked){
			     value.push(ranges[i].value);
			     num++;
			    }
			 }
			 if(num<1){
			 	alert("请选择！");
			 	return 0;
			 }
			 if(c==1&&num>1){
			 	alert("请选择一条信息！")
			 	return -1;
			 }
			 return value.toString();
		}
  </script>
  <body>
     <h2 align="center">TFBOYS的生活详情管理</h2>
	  <!-- <p>每条信息可以有多个TFBOYS的生活,可以根据TFBOYS的生活查看关联的信息.</p> -->
	  <input type="submit" onclick="addOpen('Idiv2')" value="新增" style="padding: .2em 1em;">
	  <input type="submit" onclick="editOpen('Idiv2')" value="修改" style="padding: .2em 1em;">
	  <input type="submit" onclick="del()" value="删除" style="padding: .2em 1em;">
	  <input type="submit" onclick="rank('Idiv3')" value="排序" style="padding: .2em 1em;">
	  <form name="checkboxForm">
	  <table id="tableList">
		<thead>
		  <tr>
		  	<th width="5%"><input name="checkbox1" id="checkbox1" type="checkbox" onClick="unSelect();" class="checkbox"></th>
			<th>${title}</th>
		  </tr>
		</thead>
		<tbody>
		<s:iterator value="#request.all" id="art" status="sta">
		  <tr id="ftr<s:property value='#art.id'/>"  name="<s:property value='#sta.index'/>">
			<td id="ftd1" style="background-color:"><input id="cb<s:property value='#art.id'/>"  name="range"  class="checkbox"  type="checkbox" value="<s:property value='#art.id'/>"></td>
			<td id="ftd2" onclick="checkOne(<s:property value='#art.id'/>)">
			<s:if test="#art.flag == 1">
			<img src='<s:property value='#art.filePath'/>' title="<s:property value='#art.fileName'/>" >
			</s:if>
			<s:elseif test="#art.flag == 2">
			<s:property value='#art.content'/>
			</s:elseif>
			</td>
			<td id="ftd3" style="display:none;"><s:property value='#art.picId'/></td> 
			<td id="ftd4" style="display:none;"><s:property value='#art.fileName'/></td> 
			<td id="ftd5" style="display:none;"><s:property value='#art.filePath'/></td> 
			<td id="ftd6" style="display:none;"><s:property value='#art.content'/></td> 
			<td id="ftd7" style="display:none;"><s:property value='#art.flag'/></td> 
		  </tr>
		</s:iterator>
		</tbody>
	  </table>
	  </form>
	   <div class="pageClass" align="center">
		  	当前第${page.currentPage}页，共${page.totalPage}页，每页显示${page.everyPage}条记录
			<s:if test="#request.page.hasPrePage">
				<a href="picDetail?currentPage=1&picId=${picId}&title=${title}">首页</a>
				<a href="picDetail?currentPage=${page.currentPage -1 }&picId=${picId}&title=${title}">上一页</a>
			</s:if>
			<s:else>
				首页
				上一页
			</s:else>
			
			<s:if test="#request.page.hasNextPage">
				<a href="picDetail?currentPage=${page.currentPage + 1 }&picId=${picId}&title=${title}">下一页</a>
				<a href="picDetail?currentPage=${page.totalPage }&picId=${picId}&title=${title}">尾页</a>			
			</s:if>
			<s:else>
				下一页
				尾页
			</s:else>
		  </div>
		 
       <!--弹出层-->
		<div id="Idiv2" style="display:none; position:absolute; z-index:1000; background:white;">
			<div style="width:700px;height:670px;">
			 <div id="Idiv2_head" >
				 <div style="width:640px;float:left;">
			     <h3 style="margin-left:20px;" id="Idiv2_title"></h3>
			     </div>
			     <div style="float:right">
			     <input type="submit" onclick="closeDivS('Idiv2');" value="X" style="padding: .2em 0.5em;margin-top:15px;margin-right:20px;background-color:red;">
			     </div>
		     </div>
		     <div style="position:absolute;width:700px;height:600px; overflow:auto;top:55px;">
	            <form id="fm2" action="" method="post" enctype="multipart/form-data">
	                <table>
	                <tr id="fm2_0">
	                    <td>类型：</td>
	                    <td>
	                    	 图片：<input type="radio" name="picDetail.flag" id="flag1" value="1"  onclick="changeFlag(1)"/>&nbsp;&nbsp;&nbsp;&nbsp;
	                    	文字：<input type="radio" name="picDetail.flag" id="flag2" value="2"  onclick="changeFlag(2)"/>
	                    </td>
	                </tr>
	                <tr id="fm2_1">
	                    <td>内容：</td>
	                    <td>
	                    <textarea id="content" name="picDetail.content" rows="20" cols="20" style="width:540px;height:100px;" maxlength="200"></textarea>
	                    </td>
	                </tr>
	                <tr id="fm2_2">
	                    <td colspan="2">
	                    <img id="seePicUrl" src='' width="100%" >
	                    </td>
	                </tr>
	                <tr id="fm2_21">
	                    <td>图片标准：</td>
	                    <td>637*425</td>
	                </tr>
	                <tr id="fm2_3">
	                    <td colspan="2">选择要上传的图片：<input type="file" name="myFile" id="myFile"/></td>
	                </tr>
	                <tr id="fm2_4">
	                    <td colspan="2">注意：<font color="red">单个文件最大5M,太大会影响上传。支持格式：png,bmp,jpg,pjpeg,gif,ico</font></td>
	                </tr>
	                </table>
	                <input type="hidden" name="picDetail.id" id="id" /> 
	                <input type="hidden" name="oldPath" id="oldPath" /> <!-- 原来文件图片路径 -->
	                <input type="hidden" name="picDetailId" id="picDetailId" /> 
	                <input type="hidden" name="filePath" id="filePath" value="file/picDetail/"/> <!-- 文件夹路径 -->
	                <input type="hidden" name="fileType" id="fileType" value="2"/> <!-- 判断哪种文件 -->
	                <input type="hidden" name="picId" value="${picId}"/> 
	                 <input type="hidden" name="picDetail.picId" id="picId" value="${picId}"/> 
	            </form>
	            <div style="text-align:center;margin:20 auto 20px auto;"> 
			        <input  onclick="add(fm2)" type="submit" class="button" value="保存" style="padding: .3em 1em;"/>
		    		</div>
            </div>
           </div>
		 </div>
		 <!--结束-->
		 
       <!--弹出层开始排序-->
		<div id="Idiv3" style="display:none; position:absolute; z-index:1000; background:white;">
			<div style="width:700px;height:670px;">
			 <div id="Idiv3_head" >
				 <div style="width:640px;float:left;">
				 <div style="float:left;">
			    	 <h3 style="margin-left:20px;">TFBOYS的生活详情排序</h3>
			     </div>
				 <div style="float:right;">
			    	 <input  onclick="addRank()" type="submit" class="button" value="保存" style="margin-top:15px;margin-right:15px;padding: .3em 1em;"/>
			     </div>
			     </div>
			     <div style="float:right">
			     <input type="submit" onclick="closeDiv('Idiv3');" value="X" style="padding: .2em 0.5em;margin-top:15px;margin-right:20px;background-color:red;">
			     </div>
		     </div>
		     <div style="position:absolute;width:700px;height:600px; overflow:auto;top:55px;">
	                <div data-force="30" class="layer block" style="left:20px; top: 0; width:95%">
						<div class="layer title">${title}</div>
						<ul id="foo" class="block__list block__list_words">
						</ul>
					</div>
	                <input type="hidden" name="picId" value="${picId}"/> 
	                 <input type="hidden" name="picDetail.picId" id="picId" value="${picId}"/> 
	            
            </div>
           </div>
		 </div>
		 <!--结束-->
		 
		 
  </body>
  	<!--   排序.start -->
	<script src="sortable/Sortable.js"></script>
	<script src="sortable/app.js"></script>
	<!--   排序.end -->
</html>
