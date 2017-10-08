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
    
    <title>用户管理</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<link href="images/head/favicon.ico" rel="shortcut icon" type="image/x-icon" />
  </head>
  <link rel="stylesheet" type="text/css" href="<%=basePath%>css/styles.css">
  <script src="<%=basePath%>js/jquery-3.1.1.min.js" type="text/javascript"></script>
  <script type="text/javascript" src="<%=basePath%>js/divopen.js"></script>
  <script type="text/javascript">
  		$(function(){
  			//只要刷新页面就清空所有checkbox
  			$(":checkbox").prop("checked",false);
  		})
  		function addOpen(c){
  			$('#fm')[0].reset();
			$("#Idiv1_title").text("新增用户");
			$("#Idiv1_password").css("display","");
  			showDiv(c);
  		}
  		function edit(c){
  			var value=selectCb(1);
  			if(value=='0'||value=='-1'){
  			return;
  			}
  			 $('#fm')[0].reset();  
  			 $("#Idiv1_title").text("修改用户");
  			 $("#Idiv1_password").css("display","none");
  			showDiv(c);
  			$("#fm #username").val($("#ftr"+value+" #ftd2").text());
  			$("#fm #nickname").val($("#ftr"+value+" #ftd3").text());
  			$("#fm #phone").val($("#ftr"+value+" #ftd4").text());
  			$("#fm #remark").val($("#ftr"+value+" #ftd6").text());
  			$("#fm #userId").val(value);
  		}
  		
  		
  		function del(){
  			var value=selectCb(2);
  			if(value=='0'){
  				return;
  			}
  			location.href="userDel?currentPage=${page.currentPage}&ids="+value;
		 }
		 
		 //重置密码
  		function resetPassword(){
  			var value=selectCb(1);
  			if(value=='0'){
  				return;
  			}
  			location.href="resetPassword?currentPage=${page.currentPage}&userId="+value;
		 }
  		
  	
  		
  		
  		
  		
  		
  		
  		
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
     <h2 align="center"><a href="back">标签管理</a></h2>
	  <!-- <p>每条信息可以有多个标签,可以根据标签查看关联的信息.</p> -->
	  <input type="submit" onclick="addOpen('Idiv1')" value="新增" style="padding: .2em 1em;">
	  <input type="submit" onclick="edit('Idiv1')" value="修改" style="padding: .2em 1em;">
	  <input type="submit" onclick="del()" value="删除" style="padding: .2em 1em;">
	  <input type="submit" onclick="resetPassword()" value="重置密码" style="padding: .2em 1em;">
	  <form name="checkboxForm">
	  <table id="tableList">
		<thead>
		  <tr>
		  	<th width="2%"><input name="checkbox1" id="checkbox1" type="checkbox" onClick="unSelect();" class="checkbox"></th>
			<th width="15%">账号</th>
			<th width="15%">昵称</th>
			<th width="15%">电话</th>
			<th width="10%">创建日期</th>
			<th>用户备注</th>
		  </tr>
		</thead>
		<tbody>
		<s:iterator value="#request.all" id="art" status="sta">
		  <tr id="ftr<s:property value='#art.userId'/>"  name="<s:property value='#sta.index'/>">
			<td id="ftd1" style="background-color:"><input id="cb<s:property value='#art.userId'/>" name="range"  class="checkbox"  type="checkbox" value="<s:property value='#art.userId'/>"></td>
			<td id="ftd2" onclick="checkOne(<s:property value='#art.userId'/>)"><s:property value='#art.username'/></td>
			<td id="ftd3" onclick="checkOne(<s:property value='#art.userId'/>)"><s:property value='#art.nickname'/></td> 
			<td id="ftd4" onclick="checkOne(<s:property value='#art.userId'/>)"><s:property value='#art.phone'/></td> 
			<td id="ftd5" onclick="checkOne(<s:property value='#art.userId'/>)"><s:date name="#art.createDate" format="yyyy-MM-dd"/></td> 
			<td id="ftd6" onclick="checkOne(<s:property value='#art.userId'/>)"><s:property value='#art.remark'/></td> 
		  </tr>
		</s:iterator>
		</tbody>
	  </table>
	  </form>
	   <div class="pageClass" align="center">
		  	当前第${page.currentPage}页，共${page.totalPage}页，每页显示${page.everyPage}条记录
			<s:if test="#request.page.hasPrePage">
				<a href="userMag?currentPage=1">首页</a>
				<a href="userMag?currentPage=${page.currentPage -1 }">上一页</a>
			</s:if>
			<s:else>
				首页
				上一页
			</s:else>
			
			<s:if test="#request.page.hasNextPage">
				<a href="userMag?currentPage=${page.currentPage + 1 }">下一页</a>
				<a href="userMag?currentPage=${page.totalPage }">尾页</a>			
			</s:if>
			<s:else>
				下一页
				尾页
			</s:else>
		  </div>
       <!--弹出层开始-->
		<div id="Idiv1" style="display:none; position:absolute; z-index:1000; background:#67a3d9;">
			<div style="width:700px;height:390px;">
			 <div id="Idiv1_head">
				 <div style="width:640px;float:left;">
			     <h3 style="margin-left:20px;" id="Idiv1_title"></h3>
			     </div>
			     <div style="float:right">
			     <input type="submit" onclick="closeDiv('Idiv1');" value="X" style="padding: .2em 0.5em;margin-top:15px;margin-right:20px;background-color:red;">
			     </div>
		     </div>
            <form id="fm" action="userSave" method="post">
               <table>
                <tr>
                    <td>账号：</td>
                    <td><input type="text" id="username" name="user.username" style="width:540px" maxlength="20"/></td>
                </tr>
                <tr id="Idiv1_password">
                    <td colspan="2">初始密码默认为：123456</td>
                </tr>
                <tr>
                    <td>昵称：</td>
                    <td><input type="text" id="nickname" name="user.nickname" style="width:540px" maxlength="20"/></td>
                </tr>
                <tr>
                    <td>电话：</td>
                    <td><input type="text" id="phone" name="user.phone" style="width:540px" maxlength="20"/></td>
                </tr>
                <tr>
                    <td>备注：</td>
                    <td><textarea id="remark" name="user.remark" rows="20" cols="20" style="width:540px;height:60px;" maxlength="100"></textarea>
                    </td>
                </tr>
                </table>
                <input type="hidden" name="user.userId" id="userId" />
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
