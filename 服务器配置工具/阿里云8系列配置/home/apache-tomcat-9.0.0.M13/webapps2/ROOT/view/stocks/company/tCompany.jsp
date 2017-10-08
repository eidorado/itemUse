<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <%@include file="/view/resource.jsp" %>
    <style type="text/css">
  a:link{color: #333;text-decoration: none;}
  a:hover {color:red;} /*悬浮（鼠标经过）时颜色*/
 </style>
  <script type="text/javascript" src="<%=basePath%>/js/stock/pcity.js"></script>
  <script type="text/javascript" src="<%=basePath%>/echarts/echarts.js"></script>
    <script type="text/javascript">
    function div3Open(){
    	$("#Idiv3").dialog('open');
    }
    function Idiv3_sub(){
    	if(!$("#Idiv3 #ddlProvince").val()){
    		alert("请选择省份");
    		return;
    	}
    	if(!$("#Idiv3 #ddlCity").val()){
    		alert("请选择城市");
    		return;
    	}
    	$("#editForm #province").val($("#Idiv3 #ddlProvince").val());
    	$("#editForm #city").val($("#Idiv3 #ddlCity").val());
    	$("#Idiv3").dialog('close');
    }
    
    
    $("input",$("#startprice").next("span")).focus(function(){  
    alert("登录名已存在");  
	}) 
	
	function clearNum(t){
	    $(t).numberbox('setValue','');
	}
	//清除所有空格
	function clearTrim(t){
		$(t).val(Trim(t.value,"g"));
	}
	function Trim(str,is_global)
        {
            var result;
            result = str.replace(/(^\s+)|(\s+$)/g,"");
            if(is_global.toLowerCase()=="g")
            {
                result = result.replace(/\s/g,"");
             }
            return result;
	}
	
	
	//剪贴板内容点击传值
	function inInput(t){
		 if (window.clipboardData) {
		 	$(t).val(window.clipboardData.getData('Text'));
     		/*  return(window.clipboardData.getData('Text')); */
  		 }
		/* var newT=document.selection.createRange();
		 clipboardData.setData("Text",newT.text);
        $(t).val(clipboardData.getData("Text")); */
	}
	
	//剪贴板内容点击传值日期
	function inInputDate(t){
		 if (window.clipboardData) {
		 	$(t).val(window.clipboardData.getData('Text')+" 00:00:00");
     		/*  return(window.clipboardData.getData('Text')); */
  		 }
		/* var newT=document.selection.createRange();
		 clipboardData.setData("Text",newT.text);
        $(t).val(clipboardData.getData("Text")); */
	}
	
        
        
        //excel导入
        //JS校验form表单信息  
          function addOpen4(){
        	$("#Idiv4").dialog('open');
        }
             function checkData(){  
                var fileDir = $("#upfile").val();  
                var suffix = fileDir.substr(fileDir.lastIndexOf("."));  
                if("" == fileDir){  
                    alert("选择需要导入的Excel文件！");  
                    return false;  
                }  
                if(".xls" != suffix && ".xlsx" != suffix ){  
                    alert("选择Excel格式的文件导入！");  
                    return false;  
                }  
                return true;  
             } 
             //ajax 方式上传文件操作  
             $(document).ready(function(){  
                $('#btn').click(function(){  
                    if(checkData()){  
                        $('#form1').ajaxSubmit({    
                            url:'<%=path%>/tCompany/uploadExcel.do',  
                            dataType: 'text',  
                            success: resutlMsg,  
                            error: errorMsg  
                        });   
                        function resutlMsg(msg){  
                            location.reload();  
                            //$("#upfile").val("");  
                        }  
                        function errorMsg(){   
                            alert("导入excel出错！");      
                        }  
                    }  
                });  
             });  
             
             
             
     /* 查看图片信息alt */
    function seePic(){
    	var c=$("#Idiv7_fm #gcode").val();
    	var d=$("#Idiv7_fm #gname").val();
    	$('#Idiv5_fm')[0].reset();
    	$("#Idiv5_fm #title").text(d);
    	$("#Idiv5_fm #min_pic").attr('src',"http://image.sinajs.cn/newchart/min/n/"+c+".gif");
    	$("#Idiv5_fm #daily_pic").attr('src',"http://image.sinajs.cn/newchart/daily/n/"+c+".gif");
    	$("#Idiv5_fm #weekly_pic").attr('src',"http://image.sinajs.cn/newchart/weekly/n/"+c+".gif");
    	$("#Idiv5_fm #monthly_pic").attr('src',"http://image.sinajs.cn/newchart/monthly/n/"+c+".gif");
    	$("#Idiv5_fm #min_pic").attr('alt',"http://image.sinajs.cn/newchart/min/n/"+c+".gif");
    	$("#Idiv5_fm #daily_pic").attr('alt',"http://image.sinajs.cn/newchart/daily/n/"+c+".gif");
    	$("#Idiv5_fm #weekly_pic").attr('alt',"http://image.sinajs.cn/newchart/weekly/n/"+c+".gif");
    	$("#Idiv5_fm #monthly_pic").attr('alt',"http://image.sinajs.cn/newchart/monthly/n/"+c+".gif");
    	$("#Idiv5").dialog('open');
    }
      /* 查看交易记录 */
  <%--   function seeDeal(c){
    	window.open("<%=path%>/tBuyData/list.shtml?gcode="+c)  
    	window.location.href="<%=path%>/tBuyData/list.shtml?gcode="+c; 
    } --%>
     /* 修改状态 */
    function changeState(c,d,e){
    	$('#Idiv6_fm')[0].reset();
    	$("#Idiv6_fm #id").val(d);
    	$("#Idiv6_fm #state").val(c);
    	$("#Idiv6_fm #title").text(e);
    	$("#Idiv6").dialog('open');
    }
    function Idiv6_sub(){
  		   $.ajax({
                cache: true,
                type: "POST",
                url:"<%=path%>/tCompany/updateForm.do",
                data:$('#Idiv6_fm').serialize(),// 你的formid或者 { id: idIndex, name: nameIndex },//提交参数
                async: false,
               // dataType : "json",设置需要返回的数据类型
                error: function(request) {
                    alert("操作失败了！");
                },
                //data没有指定json的话默认string
                success: function(data) {
                	if(data.msg=='1'){
                		jeecg.tCompany.init();
                		$("#Idiv6").dialog('close');
                	}else{
                		alert("修改状态失败！");
                	}
                }
   		  });
    }
    
     /* 修改图里状态 */
    function changeStateBefore(){
    	$("#Idiv6").dialog('open');
    }
    
    /* 修改选中行状态 */
    function openState(){
    	var gcodes = [];
		var rows = $('#data-list').datagrid('getChecked');
		if(null!=rows&&rows!=''){
			for(var i=0; i<rows.length; i++){
				gcodes.push(rows[i].gcode);
			}
		}else{
			jeecg.alert('提示','请选择需要修改状态的行!');
			return false;
		}
		$('#Idiv6B_fm')[0].reset();
    	$("#Idiv6B_fm #gcode").val(gcodes);
    	$("#Idiv6B").dialog('open');
    }
    function Idiv6B_sub(){
  		   $.ajax({
                cache: true,
                type: "POST",
                url:"<%=path%>/tCompany/updateStateByForm.do",
                data:$('#Idiv6B_fm').serialize(),// 你的formid或者 { id: idIndex, name: nameIndex },//提交参数
                async: false,
               // dataType : "json",设置需要返回的数据类型
                error: function(request) {
                    alert("操作失败了！");
                },
                //data没有指定json的话默认string
                success: function(data) {
                	if(data.msg=='1'){
                		jeecg.tCompany.init();
                		$("#Idiv6B").dialog('close');
                	}else{
                		alert("修改状态失败！");
                	}
                }
   		  });
    }
    </script>
  </head>
  <body class="easyui-layout">
 	 <!-- Search panel start -->
 	 <div class="ui-search-panel" region="north" style="height: 80px;" title="过滤条件" data-options="striped: true,collapsible:false,iconCls:'icon-search',border:false" >  
 	<div style="float:left">
 	 <form id="searchForm">
        <p class="ui-fields">
			<label class="ui-label">股票名:</label><input name="gname" class="easyui-box ui-text" style="width:100px;">
			<label class="ui-label">股票代码:</label><input name="gcode" class="easyui-box ui-text" style="width:100px;">
			<label class="ui-label">公司名称:</label><input name="cname" class="easyui-box ui-text" style="width:100px;">
	    </p>
	    <a href="#" id="btn-search" class="easyui-linkbutton" iconCls="icon-search">查询</a>
      </form>
      </div>
      <div style="float:left">
      &nbsp;<a href="#"  class="easyui-linkbutton" onclick="openState()">修改选中行状态</a>
      &nbsp;<a href="http://finance.sina.com.cn/realstock/company/sh000001/nc.shtml" target="_blank" class="easyui-linkbutton">上证新浪链接</a>
      </div>
      <div style="float:right">
      <a href="#" id="btn-search" class="easyui-linkbutton" iconCls="icon-add" onclick="addOpen4()">导入</a>
      </div>
     </div> 
     <!--  Search panel end -->

     <!-- Data List -->
     <div region="center" border="false" >
     <table id="data-list"></table>
	 </div>
	 
     <!-- Edit Win&Form -->
     <div id="edit-win" class="easyui-dialog" title="公司信息" data-options="closed:true,iconCls:'icon-save',modal:true" style="width:720px;height:650px;">  
     	<form id="editForm" class="ui-form" method="post">  
     		 <input class="hidden" name="id">
     		 <div class="ui-edit">
		     	   <div class="ftitle">公司信息</div>
					<div class="fitem">
						<label>股票名</label>
						<input onclick="inInput(this)" name="gname" type="text" maxlength="50" class="easyui-validatebox" data-options="required:true" missingMessage="请填写股票名" style="width:220px">
						<!-- <textarea rows="20" cols="60" id="txtContent"></textarea> -->
						<label>股票代码</label>
						<input onclick="inInput(this)" name="gcode" type="text" maxlength="50" class="easyui-validatebox" data-options="required:true" missingMessage="请填写股票代码" style="width:220px">
					</div>
					<div class="fitem">
						<label>公司名称</label>
						<input onclick="inInput(this)" name="cname" type="text" maxlength="50" class="easyui-validatebox" data-options="required:true" missingMessage="请填写公司名称" style="width:220px">
						<label>公司英文名称</label>
						<input onclick="inInput(this)" name="cename" type="text" maxlength="50" class="easyui-validatebox" data-options="" missingMessage="请填写公司英文名称" style="width:220px">
					</div>
					<div class="fitem">
						<label>工商登记号</label>
						<input onclick="inInput(this)" name="iacnum" type="text" maxlength="50" class="easyui-validatebox" data-options="" missingMessage="请填写工商登记号" style="width:220px">
						<label>法人代表</label>
						<input onclick="inInput(this)" name="legaler" type="text" maxlength="50" class="easyui-validatebox" data-options="" missingMessage="请填写法人代表" style="width:220px">
					</div>
					<div class="fitem">
						<label>地域</label>
						<input id="province" name="province" type="text" class="easyui-validatebox" style="width:255px;" readonly="readonly" placeholder="省份">
						<input id="city" name="city" type="text" class="easyui-validatebox" style="width:256px;" readonly="readonly" placeholder="城市">&nbsp;&nbsp;<a href="#" onclick="div3Open()"/>选择</a>
					</div>
					<div class="fitem">
						<label>概念板块名集</label>
						<input onclick="inInput(this)" name="cpnames" type="text" maxlength="50" class="easyui-validatebox" data-options=""  style="width:220px">
						<label>证监会门类行业</label>
						<input onclick="inInput(this)" name="bpdoorname" type="text" maxlength="50" class="easyui-validatebox" data-options=""  style="width:220px">
					</div>
					<div class="fitem">
						<label>证监会大类行业</label>
						<input onclick="inInput(this)" name="bpbigname" type="text" maxlength="50" class="easyui-validatebox" data-options=""  style="width:220px">
						<label>东财1级行业</label>
						<input onclick="inInput(this)" name="bpdc1name" type="text" maxlength="50" class="easyui-validatebox" data-options=""  style="width:220px">
					</div>
					<div class="fitem">
						<label>东财2级行业</label>
						<input onclick="inInput(this)" name="bpdc2name" type="text" maxlength="50" class="easyui-validatebox" data-options=""  style="width:220px">
						<label>东财3级行业</label>
						<input onclick="inInput(this)" name="bpdc3name" type="text" maxlength="50" class="easyui-validatebox" data-options=""  style="width:220px">
					</div>
					<div class="fitem">
						<label>员工人数</label>
						<input onclick="inInput(this)" name="staffnum" type="text" maxlength="50" class="easyui-numberbox" data-options="precision:2"  style="width:220px">
						<label>员工年均工资（万元）</label>
						<input onclick="inInput(this)" name="staffsalary" type="text" maxlength="50" class="easyui-numberbox" data-options="precision:2"  style="width:220px">
					</div>
					<div class="fitem">
						<label>上市日期</label>
						<input onclick="inInputDate(this)" name="instockdate" type="text" maxlength="" class="easyui-validatebox" data-options=""  style="width:220px">
						<!-- <input onclick="inInput(this)" name="instockdate" type="text" maxlength="" class="easyui-datetimebox" data-options=""  style="width:220px"> -->
						<label>发行价格</label>
						<input onclick="inInput(this)" name="startprice" type="text" maxlength="" class="easyui-numberbox" data-options="precision:2" missingMessage="请填写发行价格" style="width:220px">
					</div>
					
					<div class="fitem">
						<label>主承销商</label>
						<input onclick="inInput(this)" onblur="clearTrim(this)" name="maincompany" type="text" maxlength="50" class="easyui-validatebox" data-options="" missingMessage="请填写主承销商" style="width:220px">
						<label>成立日期</label>
						<input onclick="inInputDate(this)" name="builddate" type="text" maxlength="" class="easyui-validatebox" data-options="" missingMessage="请填写成立日期" style="width:220px">
					</div>
					<div class="fitem">
						<label>注册资本（百万元）</label>
						<input onclick="inInput(this)" name="registermoney" type="text" maxlength="" class="easyui-numberbox" data-options="precision:2" missingMessage="请填写注册资本（万元）" style="width:220px">
						<label>机构类型</label>
						<input onclick="inInput(this)" name="ctype" type="text" maxlength="50" class="easyui-validatebox" data-options="" missingMessage="请填写机构类型" style="width:220px" value="其他">
					</div>
					<div class="fitem">
						<label>组织形式</label>
						<input onclick="inInput(this)" name="corg" type="text" maxlength="50" class="easyui-validatebox" data-options="" missingMessage="请填写组织形式" style="width:220px">
						<label>公司电话</label>
						<input onclick="inInput(this)" name="cphone" type="text" maxlength="50" class="easyui-validatebox" data-options="" missingMessage="请填写公司电话" style="width:220px">
					</div>
					<div class="fitem">
						<label>公司传真</label>
						<input onclick="inInput(this)" name="cfax" type="text" maxlength="50" class="easyui-validatebox" data-options="" missingMessage="请填写公司传真" style="width:220px">
						<label>公司电子邮箱</label>
						<input onclick="inInput(this)" name="cemail" type="text" maxlength="50" class="easyui-validatebox" data-options="" missingMessage="请填写公司电子邮箱" style="width:220px">
					</div>
					<div class="fitem">
						<label>公司网址</label>
						<input onclick="inInput(this)" name="cweb" type="text" maxlength="50" class="easyui-validatebox" data-options="" missingMessage="请填写公司网址" style="width:546px">
					</div>
					<div class="fitem">
						<label>办公地址邮政编码</label>
						<input onclick="inInput(this)" name="cpostcode" type="text" maxlength="50" class="easyui-validatebox" data-options="" missingMessage="请填写邮政编码" style="width:220px">
						<label>信息披露网址</label>
						<input onclick="inInput(this)" name="cnewsweb" type="text" maxlength="50" class="easyui-validatebox" data-options="" missingMessage="请填写信息披露网址" style="width:220px">
					</div>
				    <div class="fitem">
						<label>注册地址</label>
						<input onclick="inInput(this)" name="registeraddress" type="text" maxlength="100" class="easyui-validatebox" data-options="" missingMessage="请填写注册地址" style="width:220px">
						<label>办公地址</label>
						<input onclick="inInput(this)" name="coffice" type="text" maxlength="100" class="easyui-validatebox" data-options="" missingMessage="请填写办公地址" style="width:220px">
					</div>
					<div class="fitem">
						<label>公司简介</label>
						<textarea onclick="inInput(this)" rows=2 name="cintro" maxlength="300" class="easyui-validatebox" style="width:546px;"></textarea>
					</div>
					<div class="fitem">
						<label>主营业务</label>
						<textarea onclick="inInput(this)" rows=2 name="busscope" maxlength="300" class="easyui-validatebox" style="width:546px;"></textarea>
					</div>
					<div class="fitem">
						<label class="ui-label">股票类型:</label>
						<select name="gtype" >
						<option value="1">沪股</option>
						<option value="2">深股</option>
						<option value="3">创业板</option>
						</select>
						<label class="ui-label">股票状态:</label>
						<select name="state" >
						<option value="1">已买</option>
						<option value="2">预买</option>
						<option value="3">特别关注</option>
						<option value="4">正常关注</option>
						<option value="6">正常</option>
						<option value="7">关闭</option>
						</select>
					</div>
  			</div>
     	</form>
  	 </div>
  	 
 	 <!--弹出层开始-->
	<div id="Idiv3" class="easyui-dialog" title="地域" data-options="closed:true,iconCls:'icon-save',modal:true" style="width:400px;height:100px;">
		按省份选择： 
		<select  name="ddlProvince" id="ddlProvince" onchange="selectMoreCity(this)">
		 </select>&nbsp;&nbsp;
		 <select name="ddlCity" id="ddlCity">
		  <option selected value="">城市</option>
		 </select>&nbsp;&nbsp;
		 <input type="submit" value="确定" onclick="Idiv3_sub()"/>
	 </div>
	 <script type="text/javascript" language ="javascript">
        //BindProvince();//只初始化省份
         BindCity("杭州");//初始化，并选中洛阳市和洛阳市所在的省
     </script>
	 <!--结束-->
  	 
 	 <!--弹出层开始-->
	<div id="Idiv4" class="easyui-dialog" title="导入数据" data-options="closed:true,iconCls:'icon-save',modal:true" style="width:400px;height:100px;">
		 <form method="POST"  enctype="multipart/form-data" id="form1" action="<%=path%>/tCompany/uploadExcel.do">  
        <table>  
         <tr>  
            <td>上传文件: </td>  
            <td> <input id="upfile" type="file" name="upfile"></td>  
         </tr>  
        <tr>  
            <td><input type="submit" value="提交" onclick="return checkData()"></td>  
            <td><input type="button" value="ajax方式提交" id="btn" name="btn" ></td>  
         </tr>  
        </table>    
      </form> 
	 </div>
	 <!--结束-->
	 
	 <!--弹出层开始-->
	<div id="Idiv5" class="easyui-dialog" title="图片查看" data-options="closed:true,iconCls:'icon-save',modal:true" style="width:600px;height:450px;">
	     <div style="width:100%;" align="center">
	     <form id="Idiv5_fm" method="post">
	     <h2 id="title"></h2>
	     <h4>分时线图</h4>
	     <img id="min_pic" alt="http://image.sinajs.cn/newchart/min/n/sh601006.gif" src="http://image.sinajs.cn/newchart/min/n/sh601006.gif" ></img>
	     <hr>
	     <h4>日K线图</h4>
	     <img id="daily_pic" alt="http://image.sinajs.cn/newchart/daily/n/sh601006.gif" src="http://image.sinajs.cn/newchart/daily/n/sh601006.gif" />
	     <hr>
	     <h4>周K线图</h4>
	     <img id="weekly_pic" alt="http://image.sinajs.cn/newchart/weekly/n/sh601006.gif" src="http://image.sinajs.cn/newchart/weekly/n/sh601006.gif" />
	     <hr>
	     <h4>月K线图</h4>
	     <img id="monthly_pic" alt="http://image.sinajs.cn/newchart/monthly/n/sh601006.gif" src="http://image.sinajs.cn/newchart/monthly/n/sh601006.gif" />
	     </form>
	     <br>
	 	 </div>
	 </div>
	 <!--结束-->
	   <!--弹出层开始-->
	<div id="Idiv6" class="easyui-dialog" title="修改状态" data-options="closed:true,iconCls:'icon-save',modal:true" style="width:200px;height:160px;">
	     <div style="width:60%;" align="center">
	     <form id="Idiv6_fm" method="post">
	     	<h3 id="title"></h3>
	     	 <input id="id" name="id" type="hidden"/>
		     <select id="state" name="state" style="width:150px;">
		     	<option value="1">已买</option>
		     	<option value="2">预买</option>
		     	<option value="3">特别关注</option>
		     	<option value="4">正常关注</option>
		     	<option value="6">正常</option>
		     	<option value="7">关闭</option>
		     </select>
	     </form>
	     <br>
	     <input type="submit" value="保存" onclick="Idiv6_sub()"/>
	 	 </div>
	 </div>
	 <!--结束-->
	   <!--弹出层开始-->
	<div id="Idiv6B" class="easyui-dialog" title="修改选中行状态" data-options="closed:true,iconCls:'icon-save',modal:true" style="width:200px;height:160px;">
	     <div style="width:60%;" align="center">
	     <form id="Idiv6B_fm" method="post">
	    	 <h3 id="title">请选择状态：</h3>
	     	 <input id="gcode" name="gcode" type="hidden"/>
		     <select id="state" name="state" style="width:150px;">
		     	<option value="1">已买</option>
		     	<option value="2">预买</option>
		     	<option value="3">特别关注</option>
		     	<option value="4">正常关注</option>
		     	<option value="6">正常</option>
		     	<option value="7">关闭</option>
		     </select>
	     </form>
	     <br>
	     <input type="submit" value="保存" onclick="Idiv6B_sub()"/>
	 	 </div>
	 </div>
	 <!--结束-->
	  <!--弹出层开始-->
	<div id="Idiv7" class="easyui-dialog" title="图片查看" data-options="closed:true,iconCls:'icon-save',modal:true" style="width:900px;height:650px;">
	     <div style="width:100%;" align="center">
	     <form id="Idiv7_fm" method="post">
	     		<input type="hidden" id="gcode"/>
	    	    <input type="hidden" id="gname"/>
	     		<span>
	     		<a href="#" onclick="seePic()">新浪线图</a>&emsp;
	     		<a id="toSinaUrl" href="" target='_blank'>新浪链接</a>&emsp;
	     		<a href='#' class="easyui-linkbutton" onclick="changeStateBefore()">状态</a>
	     		</span>
				<div id="main" class="main" style='height:230px;padding-bottom:0;border-bottom-width:0;margin-bottom:-5px;'></div>
				<div id="main4" class="main" style='height:125px;padding-top:1px;border-top-width:0;margin-bottom:-20px;'></div>
                <div id="main2" class="main" style='height:145px;padding:1px 0px;border-width:0 1px;margin-bottom:-2px;'></div>
                <div id="main3" class="main" style='height:105px;padding-top:1px;border-top-width:0;'></div>
	     </form>
	     <br>
	 	 </div>
	 </div>
	 <!--结束-->
  	 <script type="text/javascript" src="<%=basePath%>/view/stocks/company/page-tCompany.js"></script>
  </body>
</html>
<script type="text/javascript">
//功能：将浮点数四舍五入，取小数点后y位  
        function toDecimal(x,y) {  
            var f = parseFloat(x);  
            if (isNaN(f)) {  
                return;  
            }  
            f = Math.round(x*Math.pow(10,y))/Math.pow(10,y);  
            return f;  
        } 
//echarts
		var echarts ='<%=basePath%>'+'/echarts';
		//路径配置
		require.config({
		    paths: {
		        echarts: echarts
		    }
		});
		
		//一年 220天左右股票
		var dates,traAmounts,tRates,diffs,deas,macds;
		var ks=new Array();
		function seeEcharts(a,b,c,d){
			$('#Idiv6_fm')[0].reset();
	    	$("#Idiv6_fm #id").val(d);
	    	$("#Idiv6_fm #state").val(c);
	    	$("#Idiv6_fm #title").text(b+":"+a);
			$('#Idiv7_fm')[0].reset();
			$("#Idiv7_fm #gcode").val(a);
			$("#Idiv7_fm #gname").val(b);
			$("#Idiv7_fm #toSinaUrl").attr("href","http://finance.sina.com.cn/realstock/company/"+a+"/nc.shtml")
			$('#Idiv7').dialog({title:a+"  "+b})
			$("#Idiv7").dialog('open');
			//使用
			require(
			    [
			        'echarts',
			        'echarts/chart/bar', // 使用柱状图就加载bar模块，按需加载
			        'echarts/chart/line', // 使用柱状图就加载bar模块，按需加载
			        'echarts/chart/k' // 使用柱状图就加载bar模块，按需加载
			    ],
			    function (ec) {
					 $.ajax({
			                cache: true,
			                type: "POST",
			                url:"<%=path%>/tDayData/echartsList.do?gcode="+a,
			                async: false,
			               // dataType : "json",设置需要返回的数据类型
			                error: function(request) {
			                    alert("操作失败了！");
			                },
			                //data没有指定json的话默认string
			                success: function(data) {
			                	//var dataJson = eval("(" + data + ")");  
			                	var k=data.total;
			                	if(k>0){
			                		dates=data.dates;
			                		for(var i=0;i<k;i++){
			                			ks[i]=new Array();
			                			ks[i][0]=parseFloat((data.li[i].split(","))[0]);
			                			ks[i][1]=parseFloat((data.li[i].split(","))[1]);
			                			ks[i][2]=parseFloat((data.li[i].split(","))[2]);
			                			ks[i][3]=parseFloat((data.li[i].split(","))[3]);
			                		}
			                		traAmounts=data.traAmounts;
			                		tRates=data.tRates;
			                		diffs=data.diffs;
			                		deas=data.deas;
			                		macds=data.macds;
			                	}
			                }
			   		  });
   		  
					// 基于准备好的dom，初始化echarts实例
						option = {
						    /* title : {
						        text: '新浪线图'
						    },  */
						    tooltip : {
						        trigger: 'axis',
						        showDelay: 0,             // 显示延迟，添加显示延迟可以避免频繁切换，单位ms
						        formatter: function (params) {
						            var res = params[0].name;
						            res += '&emsp;&emsp;涨幅 : ' + toDecimal(((params[0].value[1]-params[0].value[0])*100/params[0].value[0]),1)+'%';
						            //res += '<br/>' + params[0].seriesName;
						            res += '<br/>  开盘 : ' + params[0].value[0] + '  收盘 : ' + params[0].value[1];
						            res += '<br/>  最高 : ' + params[0].value[3] + '  最低 : ' + params[0].value[2];
						            return res;
						        }
						    },
						    legend: {
						        data:['日K','diff','dea','macd','成交金额(万)','换手率(%)']
						        //color:['#00448a','#0580b9','#28c6b9','#84e6f1','#dddddd','#dddddd']
						    },
						    toolbox: {
						        show : true,
						        feature : {
						            mark : {show: true},
						            dataZoom : {show: true},
						            magicType : {show: true, type: ['line', 'bar']},
						            restore : {show: true},
						            saveAsImage : {show: true}
						        }
						    },
						    dataZoom : {
						        y: 250,
						        show : true,
						        realtime: true,
						        start : 50,
						        end : 100
						    },
						    grid: {
						        x: 80,
						        y: 40,
						        x2:20,
						        y2:25
						    },
						    xAxis : [
						        {
						            type : 'category',
						            boundaryGap : true,
						            axisTick: {onGap:false},
						            splitLine: {show:false},
						            data : dates
						        }
						    ],
						    yAxis : [
						        {
						            type : 'value',
						            scale:true,
						            boundaryGap: [0.05, 0.05],
						            splitArea : {show : true}
						        }
						    ],
						    series : [
						        {
						            name:'日K',
						            type:'k',
						            itemStyle: {
							            normal: {
							            	color:'red'
							            }
						            },
						            data:ks   //开盘，收盘，最低，最高  格式[[1.1,2,3,4],[1.1,2,3,4]],里面是float类型，js没有多维数组
						        },
						        {
						            name:'diff',
						            type:'line',
						            symbol: 'none',
						            itemStyle: {
							            normal: {
							            	color:'#84C1FF'
							            }
						            },
						            data:[]
						        },
						        {
						            name:'dea',
						            type:'line',
						            symbol: 'none',
						            itemStyle: {
							            normal: {
							            	color:'#FF79BC'
							            }
						            },
						            data:[]
						        },
						        {
						            name:'macd',
						            type:'bar',data:[],
						            itemStyle: {
							            normal: {
							            	color:'red'
							            }
						            }
						        },
						        {
						            name:'成交金额(万)',
						            type:'line',
						            symbol: 'none',
						            data:[]
						        },
						        {
						            name:'换手率(%)',
						            type:'bar',data:[]
						        }
						        
						    ]
						};
						myChart = ec.init(document.getElementById('main'));
						myChart.setOption(option);
						
						option2 = {
						    tooltip : {
						        trigger: 'axis',
						        showDelay: 0,            // 显示延迟，添加显示延迟可以避免频繁切换，单位ms
						        formatter: function (params) {
						            var res = "成交金额(万):"+params[0].value;
						            return res;
						        }
						    },
						    //标题，可改变颜色
						    legend: {
						        y : -30,
						        data:['日K','diff','dea','macd','成交金额(万)','换手率(%)']
						    },
						    //操作工具
						     /*toolbox: {
						        y : -30,
						        show : true,
						        feature : {
						            mark : {show: true},
						            dataZoom : {show: true},
						            dataView : {show: true, readOnly: false},
						            magicType : {show: true, type: ['line', 'bar']},
						            restore : {show: true},
						            saveAsImage : {show: true}
						        }
						    }, */
						    dataZoom : {
						        show : true,
						        realtime: true,
						        start : 50,
						        end : 100
						    },
						    grid: {
						        x: 80,
						        y:5,
						        x2:20,
						        y2:40
						    },
						    xAxis : [
						        {
						            type : 'category',
						            position:'top',
						            boundaryGap : true,
						            axisLabel:{show:false},
						            axisTick: {onGap:false},
						            splitLine: {show:false},
						            data : dates
						        }
						    ],
						    yAxis : [
						        {
						            type : 'value',
						            scale:true,
						            splitNumber: 3,
						            boundaryGap: [0.05, 0.05],
						            axisLabel: {
						                formatter: function (v) {
						                    return Math.round(v/1000) + ' 千万'
						                }
						            },
						            splitArea : {show : true}
						        }
						    ],
						    series : [
						        {
						            name:'成交金额(万)',
						            type:'line',
						            symbol: 'none',
						            data:traAmounts,//数据类型算平均值
						            markLine : {
						                symbol : 'none',
						                itemStyle : {
						                    normal : {
						                        color:'#1e90ff',
						                        label : {
						                            show:false
						                        }
						                    }
						                },
						                data : [
						                    {type : 'average', name: '平均值'}
						                ]
						            }
						        }
						    ]
						};
						myChart2 = ec.init(document.getElementById('main2'));
						myChart2.setOption(option2);
						
						option3 = {
						    tooltip : {
						        trigger: 'axis',
						        showDelay: 0,            // 显示延迟，添加显示延迟可以避免频繁切换，单位ms
						         formatter: function (params) {
						            var res = "换手率:"+params[0].value+"%";
						            return res;
						        }
						    },
						    legend: {
						        y : -30,
						        data:['日K','diff','dea','macd','成交金额(万)','换手率(%)']
						    },
						    /* toolbox: {
						        y : -30,
						        show : true,
						        feature : {
						            mark : {show: true},
						            dataZoom : {show: true},
						            dataView : {show: true, readOnly: false},
						            magicType : {show: true, type: ['line', 'bar']},
						            restore : {show: true},
						            saveAsImage : {show: true}
						        }
						    }, */
						    dataZoom : {
						        y:200,
						        show : true,
						        realtime: true,
						        start : 50,
						        end : 100
						    },
						    grid: {
						        x: 80,
						        y:5,
						        x2:20,
						        y2:30
						    },
						    xAxis : [
						        {
						            type : 'category',
						            position:'bottom',
						            boundaryGap : true,
						            axisTick: {onGap:false},
						            splitLine: {show:false},
						            data : dates
						        }
						    ],
						    yAxis : [
						        {
						            type : 'value',
						            scale:true,
						            splitNumber:3,
						            boundaryGap: [0.05, 0.05],
						            axisLabel: {
						                formatter: function (v) {
						                    return toDecimal(v,2) + ' %'
						                }
						            },
						            splitArea : {show : true}
						        }
						    ],
						    series : [
						        {
						            name:'换手率(%)',
						            type:'bar',
						            symbol: 'none',
						            barWidth:3,
						            data:tRates,//数据类型算平均值
						            markLine : {
						                symbol : 'none',
						                itemStyle : {
						                    normal : {
						                        color:'#1e90ff',
						                        label : {
						                            show:false
						                        }
						                    }
						                },
						                data : [
						                    {type : 'average', name: '平均值'}
						                ]
						            }
						        }
						    ]
						};
						myChart3 = ec.init(document.getElementById('main3'));
						myChart3.setOption(option3);
						
						
						
						
						// option
						option4 = {
						    //backgroundColor: '#0f375f',
						    tooltip: {
						    	trigger: 'axis',
						        showDelay: 0,            // 显示延迟，添加显示延迟可以避免频繁切换，单位ms
						        formatter: function (params) {
						            var res = "diff:"+toDecimal(params[0].value,2)+"&emsp;dea:"+toDecimal(params[1].value,2)+"&emsp;macd:"+toDecimal(params[2].value,2);
						            return res;
						        }
						    },
						    legend: {
						        y : -30,
						        data:['日K','diff','dea','macd','成交金额(万)','换手率(%)']
						    },
						   /*  legend: {
						        data: ['diff','dea','macd'],
						        textStyle: {
						            color: '#ccc'
						        }
						    }, */
						     dataZoom : {
						        show : false,
						        realtime: true,
						        start : 50,
						        end : 100
						    },
						    grid: {
						        x: 80,
						        y:5,
						        x2:20,
						        y2:40
						    },
						    xAxis: {
						   		type : 'category',
						   		position:'bottom',
					            boundaryGap : true,
					            axisTick: {onGap:false},
					            splitLine: {show:false},
						        data : dates,
						        /* axisLine: {
						            lineStyle: {
						                color: '#ccc'
						            }
						        } */
						    },
						    yAxis: {
						    	type : 'value',
						        splitLine: {show: false},
						        axisLine: {
						            lineStyle: {
						                color: '#ccc'
						            }
						        },
						        axisLabel: {
						                formatter: function (v) {
						                    return toDecimal(v,2)
						                }
						        }
						    },
						    series: [{
						        name: 'diff',
						        type: 'line',
						        smooth: true,
						        showAllSymbol: true,
						        symbol: 'emptyCircle',
						        symbolSize: 0,
						        itemStyle: {
						            normal: {
						            	color:'#84C1FF'
						            }
					            },
						        data: diffs
						    },{
						        name: 'dea',
						        type: 'line',
						        smooth: true,
						        showAllSymbol: true,
						        symbol: 'emptyCircle',
						        symbolSize: 0,
						        itemStyle: {
						            normal: {
						            	color:'#FF79BC'
						            }
					            },
						        data: deas
						    }, {
						        name: 'macd',
						        type: 'bar',
						        barWidth: 2,
						        itemStyle: {
						            normal: {
						            	color:'red'
						            }
					            },
						        /* itemStyle: {
						            normal: {
						                barBorderRadius: 5,
						                color: new echarts.graphic.LinearGradient(
						                    0, 0, 0, 1,
						                    [
						                        {offset: 0, color: '#14c8d4'},
						                        {offset: 1, color: '#43eec6'}
						                    ]
						                )
						            }
						        }, */
						        data: macds,
						        color:['#00448a','#0580b9','#28c6b9','#84e6f1','#dddddd','#dddddd','red','red','red','red','red']
						    }]
						};
						myChart4 = ec.init(document.getElementById('main4'));
						myChart4.setOption(option4);


						myChart.connect([myChart2, myChart3,myChart4]);
						myChart2.connect([myChart, myChart3,myChart4]);
						myChart3.connect([myChart, myChart2,myChart4]);
						myChart4.connect([myChart, myChart2,myChart3]);
						
						setTimeout(function (){
						    window.onresize = function () {
						        myChart.resize();
						        myChart2.resize();
						        myChart3.resize();
						        myChart4.resize();
						    }
						},200)
                    
					/* function eConsole(param) {  
						if (typeof param.seriesIndex == 'undefined') {  
						return;  
						}  
						if (param.type == 'click') {
                           var k=(param.name).split("|")[0];
                           checkJs3(k);
						}  
					}  
					var ecConfig = require('echarts/config');
					myChart2.on(ecConfig.EVENT.CLICK, eConsole); */
			    }
			    );
			};
</script>
