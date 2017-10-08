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
    
    <title>TFBOYS的生活管理</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<link href="images/head/favicon.ico" rel="shortcut icon" type="image/x-icon" />  
  </head>
  <link rel="stylesheet" type="text/css" href="css/styles.css">
  <script src="js/jquery-3.1.1.min.js" type="text/javascript"></script>
  <script type="text/javascript" src="js/divopen.js"></script>
   <!-- select多选用 -->
     <link rel="stylesheet" type="text/css" href="css/multi-select.css">
    <!-- select多选用 --> 
    <!-- jedate.start -->
   <!--   <link rel="stylesheet" type="text/css" href="jedate/stylesheets/normalize.css" media="screen">
    <link rel="stylesheet" type="text/css" href="jedate/stylesheets/stylesheet.css" media="screen">
    <link rel="stylesheet" type="text/css" href="jedate/stylesheets/github-light.css" media="screen"> -->
    <link type="text/css" rel="stylesheet" href="jedate/skin/jedate.css">
    <script type="text/javascript" src="jedate/jquery-1.7.2.js"></script>
    <script type="text/javascript" src="jedate/jquery.jedate.js"></script>
    <style>
    	.warpbox{width:1000px;margin:0 auto;padding:40px 0 0 0;}
    	.bodys{ padding:50px 0 0 50px;}
		.datainp{ width:200px; height:30px; border:1px #A5D2EC solid;}
		.datep{ margin-bottom:40px; line-height:24px; margin-right:15px;}
		.wicon{background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABkAAAAQCAYAAADj5tSrAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAALEgAACxIB0t1+/AAAABZ0RVh0Q3JlYXRpb24gVGltZQAwNi8xNS8xNGnF/oAAAAAcdEVYdFNvZnR3YXJlAEFkb2JlIEZpcmV3b3JrcyBDUzVxteM2AAAAoElEQVQ4jWPceOnNfwYqAz9dYRQ+E7UtwAaGjyUsDAyYYUgJ2HT5LXZLcEmSCnA6duOlN///////H0bDALl8dPH/////Z8FuNW6Qtvw2nL3lyjsGBgYGhlmRqnj1kGwJuqHIlhJlCXq8EOITEsdqCXLEbbr8FisfFkTo+vBZRFZwERNEFFkCiw90nxJtCalxQmzegltCzVyP1RJq5HZ8AABuNZr0628DMwAAAABJRU5ErkJggg=="); background-repeat:no-repeat; background-position:right center;}
    </style>
     <!-- jedate.end -->
     <!--   排序.start -->
	<link href="sortable/app.css" rel="stylesheet" type="text/css"/>
	<!--   排序.end -->
  <script type="text/javascript">
  		$(function(){
  			//只要刷新页面就清空所有checkbox
  			$(":checkbox").prop("checked",false);
  		})
  		function addOpen(c){
  			$('#fm')[0].reset();  
  			$("#fm #tagIds").multiSelect('refresh');
  			$("#fm #status0").attr("checked","checked");
  			$("#fm #type").get(0).options[0].selected=true;
  			showDiv(c);
			//$("#status1").removeAttr("checked");
  		}
  		
  	    function add(fm){
  			if(fm.title.value==""){
  				alert("TFBOYS的生活标题不能为空!");
  				return;
  			}
  			var tagNames="";
  			var count=$("#tagIds option").length;
		    for(var i=0;i<count;i++){
        	   	 if($("#tagIds").get(0).options[i].selected){         //$("#tagIds option[index='"+i+"']").attr("selected")
        	   	 	if(tagNames){
        	   	 		tagNames+=","+$("#tagIds").get(0).options[i].text;
        	   	 	}else{
        	   	 		tagNames=$("#tagIds").get(0).options[i].text;
        	   	 	}
        	   	 }  
     		 }
     		 $("#tagNames").val(tagNames);
		     $.ajax({
		                cache: true,
		                type: "POST",
		                url:"picSave",
		                data:$('#fm').serialize(),// 你的formid或者 { id: idIndex, name: nameIndex },//提交参数
		                async: false,
		                dataType : "json",//设置需要返回的数据类型
		                error: function(request) {
		                    alert("操作失败了！");
		                },
		                //data没有指定json的话默认string
		                success: function(data) {
		                	var k=data.status;
		                	if(k=='1'){
		                		location.href="picMag?currentPage=${page.currentPage}&type=${type}";
		                	}else if(k=='2'){
		                		alert("主标题已经存在!");
		                	}else{
		                		alert("系统错误：请联系管理员!")
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
  			$('#fm')[0].reset();
  			$("#fm #tagIds").multiSelect('refresh');
  			showDiv(c);
  			$("#fm #title").val($("#ftr"+value+" #ftd2").text());
  			$("#fm #client").val($("#ftr"+value+" #ftd3").text());
  			$("#fm #industry").val($("#ftr"+value+" #ftd4").text());
  			$("#fm #doTime").val($("#ftr"+value+" #ftd5").text());
  			$("#fm #type option[value='"+$("#ftr"+value+" #ftd9").text()+"']").attr("selected","selected");
  			$("#fm #status"+$("#ftr"+value+" #ftd10").text()).attr("checked","checked");
  			$("#fm #secTitle").val($("#ftr"+value+" #ftd50").text());
  			$("#fm #intro").val($("#ftr"+value+" #ftd55").text());
  			$("#fm #picSize").val($("#ftr"+value+" #ftd53").text());
  			var k=$("#ftr"+value+" #ftd58").text();
  			var k1 = k.replace(/\s+/g,"");//删除所有空格;
  			var k2=new Array();
  			k2=k1.split(",");
  			$("#fm #tagIds").multiSelect("select",k2);
  			$("#fm #tagNames").val($("#ftr"+value+" #ftd59").text());
  			$("#fm #id").val(value);
  		}
  		
  		function del(){
  			var value=selectCb(2);
  			if(value=='0'){
  				return;
  			}
  			if(confirm('你确定要删除TFBOYS的生活及其详情？')){
  				location.href="picDel?currentPage=${page.currentPage}&type=${type}&ids="+value;
  			}else{
  				return;
  			}
		 }
  		
  	  function opendiv(id){
	    $.ajax({
	                cache: true,
	                type: "POST",
	                url:"tagAll",
	                //data:{id:id},                //$('#ajform').serialize(), 你的formid或者 { id: idIndex, name: nameIndex },//提交参数
	                //dataType:"json",
	                async: false,
	                error: function(request) {
	                    alert("查询修改信息出错,刷新页面或联系管理员！");
	                },
	                success: function(data) {
	                	//类型选择
			            var a1=(data.typeIDs).split(",");
			            var a2=(data.typenames).split(",");
			            //获取select元素
		                var sobj = document.getElementById("typeid");
		                //创建option元素
		                var newOption = new Option("0","0");
		                for(var i=0;i<a1.length;i++){
		               	  sobj.add(new Option(a2[i],a1[i]),undefined);
		                  if(a1[i]==data.typeid){
        						 sobj.options[i].selected=true;
		                  }
		                }
	                }
	     });
   		 //document.getElementById("h2").innerHTML="修改";  //修改标签内的值，innerText
   		 document.getElementById("modal-1").className="md-modal md-effect-1 md-show";
   }
   
   
   //更改大封面
   function changePic(c){
   		var value=selectCb(1);
		if(value=='0'||value=='-1'){
		return;
		}
		$('#fm_picMain')[0].reset();
		$("#fm_picMain #title").text($("#ftr"+value+" #ftd2").text());
		$("#fm_picMain #picSize").text($("#ftr"+value+" #ftd53").text());
		$("#fm_picMain #picName").text($("#ftr"+value+" #ftd51").text());
		$("#fm_picMain #picUrl").text($("#ftr"+value+" #ftd52").text());
		$("#fm_picMain #picBig").text($("#ftr"+value+" #ftd54").text());
		$("#fm_picMain #seePicUrl").attr("src",$("#ftr"+value+" #ftd52").text());
		$("#fm_picMain #secPicName").text($("#ftr"+value+" #ftd60").text());
		$("#fm_picMain #secPicUrl").text($("#ftr"+value+" #ftd61").text());
		$("#fm_picMain #secPicBig").text($("#ftr"+value+" #ftd62").text());
		$("#fm_picMain #seeSecPicUrl").attr("src",$("#ftr"+value+" #ftd61").text());
		$("#fm_picMain #picId").val(value);
		$("#fm_picMain #fileType").val("1");
		$("#fm_picMain #filePath").val("file/picMain/");
		$("#fm_picMain #oldPath").val($("#ftr"+value+" #ftd52").text());
		$("#fm_picMain #secOldPath").val($("#ftr"+value+" #ftd61").text());
		showDiv(c);
   }
   
   //更改小封面
   function changeLittlePic(c){
   		var value=selectCb(1);
		if(value=='0'||value=='-1'){
		return;
		}
		$('#fm_picLittle')[0].reset();
		$("#fm_picLittle #title").text($("#ftr"+value+" #ftd2").text());
		$("#fm_picLittle #littleAPicName").text($("#ftr"+value+" #ftd64").text());
		$("#fm_picLittle #littleAPicUrl").text($("#ftr"+value+" #ftd65").text());
		$("#fm_picLittle #littleAPicBig").text($("#ftr"+value+" #ftd66").text());
		$("#fm_picLittle #seeLittleAPicUrl").attr("src",$("#ftr"+value+" #ftd65").text());
		$("#fm_picLittle #littleBPicName").text($("#ftr"+value+" #ftd67").text());
		$("#fm_picLittle #littleBPicUrl").text($("#ftr"+value+" #ftd68").text());
		$("#fm_picLittle #littleBPicBig").text($("#ftr"+value+" #ftd69").text());
		$("#fm_picLittle #seeLittleBPicUrl").attr("src",$("#ftr"+value+" #ftd68").text());
		$("#fm_picLittle #picId").val(value);
		$("#fm_picLittle #fileType").val("3");
		$("#fm_picLittle #filePath").val("file/picLittle/");
		$("#fm_picLittle #oldPath").val($("#ftr"+value+" #ftd65").text());
		$("#fm_picLittle #secOldPath").val($("#ftr"+value+" #ftd68").text());
		showDiv(c);
   }
   
   function addChangePic(c,d){
   		var formData = new FormData($("#"+c)[0]);
 	         $.ajax({
	                cache: true,
	                type: "POST",
	                url:"fileUploadJson",
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
	                	if(k=='1'){
	                		closeDivS(d);
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
   
   
   //排序
   		function rank(c,d){
   			var tit="";
   			switch(d){
	   			case 0:tit="新闻排序";break;
	   			case 1:tit="第一列排序";break;
	   			case 2:tit="第二列排序";break;
	   			case 3:tit="第三列排序";break;
	   			case 9:tit="滚动图排序(注：第一张图和最后张图信息相同)";break;
	   			default:alert("超出范围");return;
   			}
   			$("#Idiv3_title").text(tit);
   			//$("ul li").remove();
   			$("#foo").html("");
   			$.ajax({
		                cache: true,
		                type: "POST",
		                url:"picAll",
		                data:{type:d},
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
	                				var str=a[i].title;
	                				if(str.length>65){
	                					str=str.substring(0,65)+"......";
	                				}
	                				k="<li><input type=\"hidden\" id=\"rid\" value="+a[i].id+" />"+str+"</li>";
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
		                url:"updatePicSn",
		                data:{ids:ids},
		                async: false,
		                 dataType : "json",//设置需要返回的数据类型
		                error: function(request) {
		                    alert("操作失败了！");
		                },
		                success: function(data) {
		                	var k=data.status;
		                	if(k=='11'){   //修改sn成功
		                		location.href="picMag?currentPage=${page.currentPage}&type=${type}";
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
   
   
   		function closeDivS(c){
   			location.href="picMag?currentPage=${page.currentPage}&type=${type}";
   			closeDiv(c);
   		}
   		
   		
   		
   		
   		
   		
   
   
  		
  		
  		
  		
  		//选行改变单个checkbox
  		function checkOne(c){
  			if($("#cb"+c).prop("checked")){
  				$("#cb"+c).prop("checked",false);
  			}else{
  				$(":checkbox").prop("checked",false);
  				$("#cb"+c).prop("checked",true);
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
     <h2 align="center"><a href="back">TFBOYS的生活管理</a></h2>
	  <!-- <p>每条信息可以有多个TFBOYS的生活,可以根据TFBOYS的生活查看关联的信息.</p> -->
	  <div>
	  	<div style="float:left;width:121px;">
		  <form id="fm_search" action="picMag" method="post">
		  <select id="type" name="type" style="height:31px;">
	       <option value="">所有</option>
	       <option value="0">新闻类</option>
	       <option value="1">第一列</option>
	       <option value="2">第二列</option>
	       <option value="3">第三列</option>
	       <option value="9">滚动图</option>
	      </select>
		  <input type="submit"  value="查询" style="margin-left:-6px;border:1px #E6E6F2 solid;cursor:pointer;background-color:#E6E6F2; padding: .31em 0.2em;">
		  </form>
		</div>
		<div style="float:left">
		  <input type="submit" onclick="addOpen('Idiv1')" value="新增" style="padding: .2em 1em;">
		  <input type="submit" onclick="editOpen('Idiv1')" value="修改" style="padding: .2em 1em;">
		  <input type="submit" onclick="del()" value="删除" style="padding: .2em 1em;">
		  <input type="submit" onclick="changePic('Idiv2')" value="更换大封面" style="padding: .2em 1em;">
		  <input type="submit" onclick="changeLittlePic('Idiv4')" value="更换小封面" style="padding: .2em 1em;">
		  &nbsp;&nbsp;&nbsp;&nbsp;
		  <input type="submit" onclick="rank('Idiv3',0)" value="新闻排序" style="padding: .2em 1em;">
		  <input type="submit" onclick="rank('Idiv3',1)" value="第一列排序" style="padding: .2em 1em;">
		  <input type="submit" onclick="rank('Idiv3',2)" value="第二列排序" style="padding: .2em 1em;">
		  <input type="submit" onclick="rank('Idiv3',3)" value="第三列排序" style="padding: .2em 1em;">
		  <input type="submit" onclick="rank('Idiv3',9)" value="滚动图排序" style="padding: .2em 1em;">
		</div>
	  </div>
	  <form name="checkboxForm">
	  <table id="tableList">
		<thead>
		  <tr>
		  	<th width="2%"><input name="checkbox1" id="checkbox1" type="checkbox" onClick="unSelect();" class="checkbox"></th>
			<th width="32%">主标题</th>
			<th width="10%">成员类型</th>
			<th width="10%">行业</th>
			<th width="12%">活动时间</th>
			<th width="12%">创建时间</th>
			<th width="6%">类型</th>
			<th width="6%">状态</th>
			<th>操作</th>
		  </tr>
		</thead>
		<tbody>
		<s:iterator value="#request.all" id="art" status="sta">
		  <tr id="ftr<s:property value='#art.id'/>"  name="<s:property value='#sta.index'/>">
			<td id="ftd1" style="background-color:"><input id="cb<s:property value='#art.id'/>" name="range"  class="checkbox"  type="checkbox" value="<s:property value='#art.id'/>"></td>
			<td id="ftd2" onclick="checkOne(<s:property value='#art.id'/>)"><s:property value='#art.title'/></td>
			<td id="ftd3" onclick="checkOne(<s:property value='#art.id'/>)"><s:property value='#art.client'/></td> 
			<td id="ftd4" onclick="checkOne(<s:property value='#art.id'/>)"><s:property value='#art.industry'/></td> 
			<td id="ftd5" onclick="checkOne(<s:property value='#art.id'/>)"><s:date name='#art.doTime'/></td> 
			<td id="ftd6" onclick="checkOne(<s:property value='#art.id'/>)"><s:date name="#art.createDate"/></td> 
			<td id="ftd7" onclick="checkOne(<s:property value='#art.id'/>)">
			<s:if test="#art.type == 0">新闻类</s:if>
			<s:if test="#art.type == 1"><font color="#949449">第一列</font></s:if>
			<s:if test="#art.type == 2"><font color="#4F9D9D">第二列</font></s:if>
			<s:if test="#art.type == 3"><font color="#7373B9">第三列</font></s:if>
			<s:if test="#art.type == 9"><font color="#9F4D95">滚动图</font></s:if>
			<td id="ftd8" onclick="checkOne(<s:property value='#art.id'/>)">
			<s:if test="#art.status == 0">在使用</s:if>
			<s:elseif test="#art.status == 1">预存</s:elseif>
			</td> 
			<td id="ftd9" style="display:none;"><s:property value='#art.type'/></td> 
			<td id="ftd10" style="display:none;"><s:property value='#art.status'/></td> 
			<td id="ftd50" style="display:none;"><s:property value='#art.secTitle'/></td> 
			<td id="ftd51" style="display:none;"><s:property value='#art.picName'/></td> 
			<td id="ftd52" style="display:none;"><s:property value='#art.picUrl'/></td> 
			<td id="ftd53" style="display:none;"><s:property value='#art.picSize'/></td> 
			<td id="ftd54" style="display:none;"><s:property value='#art.picBig'/></td> 
			<td id="ftd55" style="display:none;"><s:property value='#art.intro'/></td> 
			<td id="ftd56" style="display:none;"><s:property value='#art.picSuffix'/></td> 
			<td id="ftd57" style="display:none;"><s:property value='#art.createrId'/></td> 
			<td id="ftd58" style="display:none;"><s:property value='#art.tagIds'/></td> 
			<td id="ftd59" style="display:none;"><s:property value='#art.tagNames'/></td> 
			<td id="ftd60" style="display:none;"><s:property value='#art.secPicName'/></td> 
			<td id="ftd61" style="display:none;"><s:property value='#art.secPicUrl'/></td> 
			<td id="ftd62" style="display:none;"><s:property value='#art.secPicBig'/></td> 
			<td id="ftd63" style="display:none;"><s:property value='#art.secPicSuffix'/></td> 
			<td id="ftd64" style="display:none;"><s:property value='#art.littleAPicName'/></td> 
			<td id="ftd65" style="display:none;"><s:property value='#art.littleAPicUrl'/></td> 
			<td id="ftd66" style="display:none;"><s:property value='#art.littleAPicBig'/></td> 
			<td id="ftd67" style="display:none;"><s:property value='#art.littleBPicName'/></td> 
			<td id="ftd68" style="display:none;"><s:property value='#art.littleBPicUrl'/></td> 
			<td id="ftd69" style="display:none;"><s:property value='#art.littleBPicBig'/></td> 
			<td>
			<!-- 这里type只能是button，如果是submit或a就会执行完刷新次页面 -->
			<a href="picDetail?picId=<s:property value='#art.id'/>&title=<s:property value='#art.title'/>" target="_blank">详情修改</a>
			 </td>
		  </tr>
		</s:iterator>
		</tbody>
	  </table>
	  </form>
	   <div class="pageClass" align="center">
		  	当前第${page.currentPage}页，共${page.totalPage}页，每页显示${page.everyPage}条记录
			<s:if test="#request.page.hasPrePage">
				<a href="picMag?currentPage=1&type=${type}">首页</a>
				<a href="picMag?currentPage=${page.currentPage -1 }&type=${type}">上一页</a>
			</s:if>
			<s:else>
				首页
				上一页
			</s:else>
			
			<s:if test="#request.page.hasNextPage">
				<a href="picMag?currentPage=${page.currentPage + 1 }&type=${type}">下一页</a>
				<a href="picMag?currentPage=${page.totalPage }&type=${type}">尾页</a>			
			</s:if>
			<s:else>
				下一页
				尾页
			</s:else>
		  </div>
       <!--弹出层开始-->
		<div id="Idiv1" style="display:none; position:absolute; z-index:1000; background:#67a3d9;">
			<div style="width:700px;height:670px;">
			 <div id="Idiv1_head" >
				 <div style="width:640px;float:left;">
			     <h3 style="margin-left:20px;">添加信息</h3>
			     </div>
			     <div style="float:right">
			     <input type="submit" onclick="closeDiv('Idiv1');" value="X" style="padding: .2em 0.5em;margin-top:15px;margin-right:20px;background-color:red;">
			     </div>
		     </div>
            <form id="fm" action="" method="post">
                <table>
                <tr>
                    <td>主标题：</td>
                    <td colspan="3"><input type="text" id="title" name="pic.title" style="width:540px" maxlength="100"></input></td>
                </tr>
                <tr>
                    <td>副标题：</td>
                    <td colspan="3"><input type="text" id="secTitle" name="pic.secTitle" style="width:540px" maxlength="100"></input></td>
                </tr>
                <tr>
                    <td>成员类型：</td>
                    <td><select id="client" name="pic.client" style="width:200px"><option value="TFBOYS团队">TFBOYS团队</option><option value="王俊凯">王俊凯</option><option value="王源">王源</option><option value="易烊千玺">易烊千玺</option></select></td>
                    <td>行业：</td>
                    <td><select id="industry" name="pic.industry" style="width:200px"><option value="音乐">音乐</option><option value="电影">电影</option><option value="综艺活动">综艺活动</option><option value="生活">生活</option><option value="摄影">摄影</option><option value="其他活动">其他活动</option></select></td>
                </tr>
                <tr>
                    <td>活动时间：</td>
                    <td>
                    <input class="datainp wicon" id="doTime" type="text" name="pic.doTime" style="width:200px" readonly>
                    <!-- <input type="text" id="doTime" name="pic.doTime" style="width:200px"></input> -->
                    </td>
                    <td>类型：</td>
                    <td>
                     <select id="type" name="pic.type" style="width:200px">
                      <option value="0">新闻类</option>
                      <option value="1">第一列</option>
                      <option value="2">第二列</option>
                      <option value="3">第三列</option>
                      <option value="9">滚动图</option>
                     </select>
                    </td>
                </tr>
                <tr>
                    <td>标签：</td>
                    <td colspan="3">
                    <input type="hidden" id="tagNames" name="pic.tagNames"/>
                    <select id="tagIds" name="pic.tagIds" multiple="multiple" >
					 </select>
                    </td>
                </tr>
                <tr>
                    <td>状态：</td>
                    <td>
                                      使用<input type="radio" id="status0" name="pic.status" value="0">&nbsp;&nbsp;
                                      预存<input type="radio" id="status1" name="pic.status" value="1">
                    </td>
                    <td>封面标准：</td>
                    <td><input type="text" id="picSize" name="pic.picSize" style="width:200px" placeholder="如：100*100" maxlength="20"/></td>
                </tr>
                <tr>
                    <td>简介：</td>
                    <td colspan="3"><textarea id="intro" name="pic.intro" rows="20" cols="20" style="width:540px;height:60px;" maxlength="200"></textarea>
                    </td>
                </tr>
                </table>
                <input type="hidden" name="pic.id" id="id" />
            </form>
            <div style="text-align:center;margin:20 auto 20px auto;"> 
		        <input onclick="add(fm)" type="submit" class="button" value="保存" style="padding: .3em 1em;"/>
	    	</div>
            </div>
		 </div>
		 <!--结束-->
       <!--弹出层开始更换大封面-->
		<div id="Idiv2" style="display:none; position:absolute; z-index:1000; background:white;">
			<div style="width:700px;height:670px;">
			 <div id="Idiv2_head" >
				 <div style="width:640px;float:left;">
			     <h3 style="margin-left:20px;">更换大封面</h3>
			     </div>
			     <div style="float:right">
			     <input type="submit" onclick="closeDiv('Idiv2');" value="X" style="padding: .2em 0.5em;margin-top:15px;margin-right:20px;background-color:red;">
			     </div>
		     </div>
		     <div style="position:absolute;width:700px;height:600px; overflow:auto;top:55px;">
	            <form id="fm_picMain" action="" method="post" enctype="multipart/form-data">
	                <table>
	                <tr>
	                    <td>主标题：</td>
	                    <td><span id="title"></span></td>
	                </tr>
	                <tr>
	                    <td>封面标准：</td>
	                    <td><span id="picSize"></span></td>
	                </tr>
	                <tr>
	                    <td colspan="2" style="padding:0;"><h2 align="center">主封面</h2></td>
	                </tr>
	                <tr>
	                    <td>主封面名称：</td>
	                    <td><span id="picName"></span></td>
	                </tr>
	                <tr>
	                    <td>主封面大小：</td>
	                    <td><span id="picBig"></span>KB</td>
	                </tr>
	                <tr>
	                    <td>主封面路径：</td>
	                    <td><span id="picUrl"></span></td>
	                </tr>
	                <tr>
	                    <td colspan="2">
	                    <img id="seePicUrl" src='' width="100%" >
	                    </td>
	                </tr>
	                <tr>
	                    <td colspan="2">选择要上传的主封面：<input type="file" name="myFile"/></td>
	                </tr>
	                 <tr>
	                    <td colspan="2" style="padding:0;"><h2 align="center">副封面</h2></td>
	                </tr>
	                <tr>
	                    <td>副封面名称：</td>
	                    <td><span id="secPicName"></span></td>
	                </tr>
	                <tr>
	                    <td>副封面大小：</td>
	                    <td><span id="secPicBig"></span>KB</td>
	                </tr>
	                <tr>
	                    <td>副封面路径：</td>
	                    <td><span id="secPicUrl"></span></td>
	                </tr>
	                <tr>
	                    <td colspan="2">
	                    <img id="seeSecPicUrl" src='' width="100%" >
	                    </td>
	                </tr>
	                <tr>
	                    <td colspan="2">选择要上传的副封面：<input type="file" name="secFile"/></td>
	                </tr>
	                <tr>
	                    <td colspan="2">注意：<font color="red">单个文件最大5M,太大会影响上传。支持格式：png,bmp,jpg,pjpeg,gif,ico</font></td>
	                </tr>
	                </table>
	                <input type="hidden" name="picId" id="picId" /> 
	                <input type="hidden" name="filePath" id="filePath" /> <!-- 文件夹路径 -->
	                <input type="hidden" name="oldPath" id="oldPath" /> <!-- 原来主文件图片路径 -->
	                <input type="hidden" name="secOldPath" id="secOldPath" /> <!-- 原来副文件图片路径 -->
	                <input type="hidden" name="fileType" id="fileType" /> <!-- 判断哪种文件 -->
	            </form>
	            <div style="text-align:center;margin:20 auto 20px auto;"> 
		        <input onclick="addChangePic('fm_picMain','Idiv2')"  type="submit" class="button" value="保存" style="padding: .3em 1em;"/>
	    		</div>
            </div>
           </div>
		 </div>
		 <!--结束-->
		 
		    <!--弹出层开始更换小封面-->
		<div id="Idiv4" style="display:none; position:absolute; z-index:1000; background:white;">
			<div style="width:700px;height:670px;">
			 <div id="Idiv4_head">
				 <div style="width:640px;float:left;">
			     <h3 style="margin-left:20px;">更换小封面</h3>
			     </div>
			     <div style="float:right">
			     <input type="submit" onclick="closeDiv('Idiv4');" value="X" style="padding: .2em 0.5em;margin-top:15px;margin-right:20px;background-color:red;">
			     </div>
		     </div>
		     <div style="position:absolute;width:700px;height:600px; overflow:auto;top:55px;">
	            <form id="fm_picLittle" action="" method="post" enctype="multipart/form-data">
	                <table>
	                <tr>
	                    <td>主标题：</td>
	                    <td><span id="title"></span></td>
	                </tr>
	                <tr>
	                    <td>封面标准：</td>
	                    <td>155*143</td>
	                </tr>
	                <tr>
	                    <td colspan="2" style="padding:0;"><h2 align="center">主封面</h2></td>
	                </tr>
	                <tr>
	                    <td>主封面名称：</td>
	                    <td><span id="littleAPicName"></span></td>
	                </tr>
	                <tr>
	                    <td>主封面大小：</td>
	                    <td><span id="littleAPicBig"></span>KB</td>
	                </tr>
	                <tr>
	                    <td>主封面路径：</td>
	                    <td><span id="littleAPicUrl"></span></td>
	                </tr>
	                <tr>
	                    <td colspan="2">
	                    <img id="seeLittleAPicUrl" src=''>
	                    </td>
	                </tr>
	                <tr>
	                    <td colspan="2">选择要上传的主封面：<input type="file" name="myFile"/></td>
	                </tr>
	              	 <tr>
	                    <td colspan="2" style="padding:0;"><h2 align="center">副封面</h2></td>
	                </tr>
	                <tr>
	                    <td>副封面名称：</td>
	                    <td><span id="littleBPicName"></span></td>
	                </tr>
	                <tr>
	                    <td>副封面大小：</td>
	                    <td><span id="littleBPicBig"></span>KB</td>
	                </tr>
	                <tr>
	                    <td>副封面路径：</td>
	                    <td><span id="littleBPicUrl"></span></td>
	                </tr>
	                <tr>
	                    <td colspan="2">
	                    <img id="seeLittleBPicUrl" src=''>
	                    </td>
	                </tr>
	                <tr>
	                    <td colspan="2">选择要上传的副封面：<input type="file" name="secFile"/></td>
	                </tr>
	                <tr>
	                    <td colspan="2">注意：<font color="red">单个文件最大5M,太大会影响上传。支持格式：png,bmp,jpg,pjpeg,gif,ico</font></td>
	                </tr>
	                </table>
	                <input type="hidden" name="picId" id="picId" /> 
	                <input type="hidden" name="filePath" id="filePath" /> <!-- 文件夹路径 -->
	                <input type="hidden" name="oldPath" id="oldPath" /> <!-- 原来主文件图片路径 -->
	                <input type="hidden" name="secOldPath" id="secOldPath" /> <!-- 原来副文件图片路径 -->
	                <input type="hidden" name="fileType" id="fileType" /> <!-- 判断哪种文件 -->
	            </form>
	            <div style="text-align:center;margin:20 auto 20px auto;"> 
			        <input onclick="addChangePic('fm_picLittle','Idiv4')"  type="submit" class="button" value="保存" style="padding: .3em 1em;"/>
		    		</div>
            </div>
           </div>
		 </div>
		 <!--结束-->
		 
		 <!--弹出层开始排序-->
		<div id="Idiv3" style="display:none; position:absolute; z-index:1000; background:white;">
			<div style="width:700px;height:670px;">
			 <div id="Idiv3_head">
				 <div style="width:640px;float:left;">
				 <div style="float:left;">
			    	 <h3 style="margin-left:20px;">TFBOYS的生活排序</h3>
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
					<div id="Idiv3_title" class="layer title"></div>
					<ul id="foo" class="block__list block__list_words">
					</ul>
				</div>
            </div>
           </div>
		 </div>
		 <!--结束-->
		 
		 <script type="text/javascript" src="<%=basePath%>js/jquery.multi-select.js"></script>
		 <script type="text/javascript">
		 $(document).ready(function(){
		 		var k;
		 		for(var i=0;i<=9;i++){
		 			k=2*i+1;
		 			$("tr[name='"+k+"'] td").css("background-color","#ffffff")
				}
			})
			
			/* http://loudev.com/#home */
			$('#tagIds').multiSelect({
			  /*selectableHeader: "<div class='custom-header'>选择</div>",
  			  selectionHeader: "<div class='custom-header'>使用</div>",
			   afterSelect: function(values){
			  alert(values);
			    //alert($("#tagIds").find("option:selected").text());
			  },
			  afterDeselect: function(){
			    alert("Deselect value: ");
			  } */
			});
				$.ajax({
	                cache: true,
	                type: "POST",
	                url:"tagAll",
	                //data:{id:id},                //$('#ajform').serialize(), 你的formid或者 { id: idIndex, name: nameIndex },//提交参数
	                dataType:"json",
	                async: false,
	                error: function(request) {
	                    alert("查询修改信息出错,刷新页面或联系管理员！");
	                },
	                success: function(data) {
	                	//类型选择
			             var a1=data.list;
			            //获取select元素
		                //var sobj = document.getElementById("tagIds");
		                //创建option元素
		               // var newOption = new Option("0","0");
		                for(var i=0;i<a1.length;i++){
		                $('#tagIds').multiSelect('addOption',{ value:a1[i].id, text:a1[i].tagName});
		               	 // sobj.add(new Option(a1[i].tagName,a1[i].id),undefined);
		                 /*  if(a1[i].id==data.typeid){
        						 sobj.options[i].selected=true;
		                  } */
		                 }
	                }
	   	    });
	   	    
	   	    //日期选择
	   	    $("#fm #doTime").jeDate({
			    isinitVal:true,
			    festival:true,
			    ishmsVal:false,
			    minDate: '2012-01-01 23:59:59',
			    maxDate: '3000-01-01 23:59:59',   //$.nowDate(0)
			    format:"YYYY-MM-DD hh:mm:ss",
			    zIndex:3000,
			})
		 </script>
  </body>
  	<!--   排序.start -->
	<script src="sortable/Sortable.js"></script>
	<script src="sortable/app.js"></script>
	<!--   排序.end -->
</html>
