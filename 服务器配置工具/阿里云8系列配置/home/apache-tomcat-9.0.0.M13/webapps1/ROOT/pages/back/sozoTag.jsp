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
    
    <title>标签管理</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<link href="images/headSoZo/favicon.ico" rel="shortcut icon" type="image/x-icon" />
  </head>
  <link rel="stylesheet" type="text/css" href="css/styles.css">
  <script src="js/jquery-3.1.1.min.js" type="text/javascript"></script>
  <script type="text/javascript" src="js/divopen.js"></script>
  <script type="text/javascript">
  		$(function(){
  			//只要刷新页面就清空所有checkbox
  			$(":checkbox").prop("checked",false);
  		})
  		function addOpen(c){
  			$('#fm')[0].reset();  
  			$("#Idiv1_title").text("新增标签");
  			showDiv(c);
  		}
  		/* function add(fm){
  			if(fm.tagName.value==""){
  				alert("标签名称不能为空!");
  				return;
  			}
		     $.ajax({
		                cache: true,
		                type: "POST",
		                url:"sozoTagSave",
		                data:$('#fm').serialize(),// 你的formid或者 { id: idIndex, name: nameIndex },//提交参数
		                async: false,
		                //dataType : "json",//设置需要返回的数据类型
		                error: function(request) {
		                    alert("操作失败了！");
		                },
		                //data没有指定json的话默认string
		                success: function(data) {
		                location.reload();
		                //alert(data);location.href="";
		                	//var dataObj=eval("("+data+")");//转换为json对象
		                }
		     });
  		} */
  		function edit(c){
  			var value=selectCb(1);
  			if(value=='0'||value=='-1'){
  			return;
  			}
  			 $('#fm')[0].reset();  
  			 $("#Idiv1_title").text("修改标签");
  			showDiv(c);
  			$("#fm #tagName").val($("#ftr"+value+" #ftd2").text());
  			$("#fm #tagRemak").val($("#ftr"+value+" #ftd3").text());
  			$("#fm #id").val(value);
  		}
  		
  		
  		function del(){
  			var value=selectCb(2);
  			if(value=='0'){
  				return;
  			}
  			location.href="sozoTagDel?currentPage=${page.currentPage}&ids="+value;
		 }
  		
  	
  		
  		
  		/* 选行改变checkbox
  		$(function () {
            //除了表头（第一行）以外所有的行添加click事件.
            $("#tableList tr").first().nextAll().click(function () {
            	alert(2222222222);
                //为点击的这一行切换样式bgRed里的代码：background-color:#FF0000;
                $(this).children().toggleClass("bgRed");
                 $(this).children().first().children().attr("checked", true);
                //判断td标记的背景颜色和body的背景颜色是否相同;
               /*  if ($(this).children().css("background-color") != $(document.body).css("background-color")) {
                    //如果相同，CheckBox.checked=true;
                    $(this).children().first().children().attr("checked", true);

                } else {
                    //如果不同,CheckBox.checked=false;
                    $(this).children().first().children().attr("checked", false);
                } */
            /*});
       }); */
  		
        //选行改变单个checkbox
  		function checkOne(c){
  			if($("#cb"+c).prop("checked")){
  				$("#cb"+c).prop("checked",false);
  			}else{
  				$(":checkbox").prop("checked",false);
  				$("#cb"+c).prop("checked",true);
  			}
  			//$("#ftr"+c+" td").css("background-color","#eaf3f5");
  		}
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
     <h2 align="center"><a href="sozoBack">标签管理</a></h2>
	  <!-- <p>每条信息可以有多个标签,可以根据标签查看关联的信息.</p> -->
	  <input type="submit" onclick="addOpen('Idiv1')" value="新增" style="padding: .2em 1em;">
	  <input type="submit" onclick="edit('Idiv1')" value="修改" style="padding: .2em 1em;">
	  <input type="submit" onclick="del()" value="删除" style="padding: .2em 1em;">
	  <form name="checkboxForm">
	  <table id="tableList">
		<thead>
		  <tr>
		  	<th width="2%"><input name="checkbox1" id="checkbox1" type="checkbox" onClick="unSelect();" class="checkbox"></th>
			<th width="30%">标签名称</th>
			<th>标签备注</th>
		  </tr>
		</thead>
		<tbody>
		<s:iterator value="#request.all" id="art" status="sta">
		  <tr id="ftr<s:property value='#art.id'/>"  name="<s:property value='#sta.index'/>">
			<td id="ftd1" style="background-color:"><input id="cb<s:property value='#art.id'/>" name="range"  class="checkbox"  type="checkbox" value="<s:property value='#art.id'/>"></td>
			<td id="ftd2" onclick="checkOne(<s:property value='#art.id'/>)"><s:property value='#art.tagName'/></td>
			<td id="ftd3" onclick="checkOne(<s:property value='#art.id'/>)"><s:property value='#art.tagRemak'/></td> 
		  </tr>
		</s:iterator>
		</tbody>
	  </table>
	  </form>
	   <div class="pageClass" align="center">
		  	当前第${page.currentPage}页，共${page.totalPage}页，每页显示${page.everyPage}条记录
			<s:if test="#request.page.hasPrePage">
				<a href="sozoTag?currentPage=1">首页</a>
				<a href="sozoTag?currentPage=${page.currentPage -1 }">上一页</a>
			</s:if>
			<s:else>
				首页
				上一页
			</s:else>
			
			<s:if test="#request.page.hasNextPage">
				<a href="sozoTag?currentPage=${page.currentPage + 1 }">下一页</a>
				<a href="sozoTag?currentPage=${page.totalPage }">尾页</a>			
			</s:if>
			<s:else>
				下一页
				尾页
			</s:else>
		  </div>
       <!--弹出层开始-->
		<div id="Idiv1" style="display:none; position:absolute; z-index:1000; background:#67a3d9;">
			<div style="width:700px;height:280px;">
			 <div id="Idiv1_head" >
				 <div style="width:640px;float:left;">
			     <h3 style="margin-left:20px;" id="Idiv1_title"></h3>
			     </div>
			     <div style="float:right">
			     <input type="submit" onclick="closeDiv('Idiv1');" value="X" style="padding: .2em 0.5em;margin-top:15px;margin-right:20px;background-color:red;">
			     </div>
		     </div>
            <form id="fm" action="sozoTagSave" method="post">
               <table>
                <tr>
                    <td>标签名称：</td>
                    <td><input type="text" id="tagName" name="soZoTag.tagName" style="width:540px" maxlength="50"></input></td>
                </tr>
                <tr>
                    <td>标签备注：</td>
                    <td><textarea id="tagRemak" name="soZoTag.tagRemak" rows="20" cols="20" style="width:540px;height:60px;" maxlength="100"></textarea>
                    </td>
                </tr>
                </table>
                <input type="hidden" name="soZoTag.id" id="id" />
                <input type="hidden" name="lastSessionTime" id="lastSessionTime" value="<s:property value="#request.lastSessionTime"/>" />
                <div style="text-align:center;margin:20 auto 20px auto;"> 
		        <input name="保存" type="submit" class="button" value="保存" style="padding: .3em 1em;"/>
	    		</div>
            </form>
           <!--  <input onclick="add(fm)" name="保存" type="submit" class="button" value="保存" style="padding: .3em 1em;"/> -->
            </div>
		 </div>
		 <!--结束-->
		 <script type="text/javascript">
		 $(document).ready(function(){
		 		var k;
		 		for(var i=0;i<=9;i++){
		 			k=2*i+1;
		 			$("tr[name='"+k+"'] td").css("background-color","#ffffff")
				}
			})
		 </script>
  </body>
</html>
