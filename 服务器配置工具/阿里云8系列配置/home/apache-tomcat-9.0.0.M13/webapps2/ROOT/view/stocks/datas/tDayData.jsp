<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <%@include file="/view/resource.jsp" %>
   <style type="text/css">
   #Idiv1_table tr td{
   		width:200px;height:25px;
   }
   </style>
   <script type="text/javascript" src="<%=basePath%>/echarts/echarts.js"></script>
  <script type="text/javascript">
    $(function(){
    	 $("#Idiv1").dialog({
           /*  resizable: false,
            height: "auto",
            width: 400,
            modal: true, */
            buttons:[
							{
								text:'确定',
								handler:function (){Idiv1_sub()}
							},{
								text:'重置',
								handler:function (){Idiv1_rest()}
							}
							/* ,{
								text:'关闭',
								handler:function (){$("#Idiv2").dialog("close");}
							} */
						]
        });
    })
       function backDate(c){
  		   $.ajax({
                cache: true,
                type: "POST",
                url:"<%=path%>/tDayData/backDayDate.do?flag="+c,
                // data:$('#fm').serialize(),你的formid或者 { id: idIndex, name: nameIndex },//提交参数
                async: false,
               // dataType : "json",设置需要返回的数据类型
                error: function(request) {
                    alert("操作失败了！");
                },
                //data没有指定json的话默认string
                success: function(data) {
                	var flag =data.msg;  
                	if(flag=='1'){
                		jeecg.tDayData.init();
                	}else if(flag=='2'){
                		if(confirm('是否替换原先数据?')) 
					     { 
					         backDate('1');
					         return true; 
					     }
					     return false; 
                	}
                	//var dataJson = eval("(" + data + ")");  
                }
   		  });
    }
    function IdivOpen(c,d){
    	if(d=='1'){
    		$("#Idiv"+c).dialog('open');
    	}else{
    		$("#Idiv"+c).dialog('close');
    	}
    }
    function Idiv1_sub(){
		$("#searchForm #increpermin").val($("#Idiv1_form #increpermin").val());
		$("#searchForm #increpermax").val($("#Idiv1_form #increpermax").val());
			$("#searchForm #increperorder").val($("#Idiv1_form #increperorder").val());
		$("#searchForm #nowprimin").val($("#Idiv1_form #nowprimin").val());
		$("#searchForm #nowprimax").val($("#Idiv1_form #nowprimax").val());
			$("#searchForm #nowpriorder").val($("#Idiv1_form #nowpriorder").val());
		$("#searchForm #tratemin").val($("#Idiv1_form #tratemin").val());
		$("#searchForm #tratemax").val($("#Idiv1_form #tratemax").val());
			$("#searchForm #trateorder").val($("#Idiv1_form #trateorder").val());
		$("#searchForm #swingmin").val($("#Idiv1_form #swingmin").val());
		$("#searchForm #swingmax").val($("#Idiv1_form #swingmax").val());
			$("#searchForm #swingorder").val($("#Idiv1_form #swingorder").val());
		$("#searchForm #circulatemoney").val($("#Idiv1_form #circulatemoney").val());
		$("#searchForm #ratio").val($("#Idiv1_form #ratio").val());
		$("#searchForm #lyr").val($("#Idiv1_form #lyr").val());
		$("#searchForm #ttm").val($("#Idiv1_form #ttm").val());
		$("#searchForm #tranumbermin").val($("#Idiv1_form #tranumbermin").val());
		$("#searchForm #tranumbermax").val($("#Idiv1_form #tranumbermax").val());
			$("#searchForm #tranumberorder").val($("#Idiv1_form #tranumberorder").val());
		$("#searchForm #traamountmin").val($("#Idiv1_form #traamountmin").val());
		$("#searchForm #traamountmax").val($("#Idiv1_form #traamountmax").val());
			$("#searchForm #traamountorder").val($("#Idiv1_form #traamountorder").val());
		$("#searchForm #datemin").datetimebox("setValue",$("#Idiv1_form #datemin").datebox("getValue"));
		$("#searchForm #datemax").datetimebox("setValue",$("#Idiv1_form #datemax").datebox("getValue"));
		$("#searchForm #datenum").val($("#Idiv1_form #datenum").val());
			$("#searchForm #dateorder").val($("#Idiv1_form #dateorder").val());
			$("#searchForm #difforder").val($("#Idiv1_form #difforder").val());
			$("#searchForm #deaorder").val($("#Idiv1_form #deaorder").val());
			$("#searchForm #macdorder").val($("#Idiv1_form #macdorder").val());
		$("#searchForm #macdmin").val($("#Idiv1_form #macdmin").val());
		$("#searchForm #macdmax").val($("#Idiv1_form #macdmax").val());
    	$("#Idiv1").dialog('close');
    }
    function Idiv1_rest(){
    	$("#Idiv1_form")[0].reset();
    }
    function restSearch(){
    	$("#searchForm")[0].reset();
    	$("#Idiv1_form")[0].reset();
    }
    
    
    //$('#cc2').combobox('reload', url);
     function findById(c){
  		   $.ajax({
                cache: true,
                type: "POST",
                url:"<%=path%>/tSearchs/getId.do?id="+c,
                // data:$('#fm').serialize(),你的formid或者 { id: idIndex, name: nameIndex },//提交参数
                async: false,
               // dataType : "json",设置需要返回的数据类型
                error: function(request) {
                    alert("操作失败了！");
                },
                //data没有指定json的话默认string
                success: function(row) {
                	var sflag =row.success;  
                	if(row.success){
                		var increpermin=row.data.increpermin;
                		var increpermax=row.data.increpermax;
                		var increperorder=row.data.increperorder;
                		var nowprimin=row.data.nowprimin;
                		var nowprimax=row.data.nowprimax;
                		var nowpriorder=row.data.nowpriorder;
                		var tratemin=row.data.tratemin;
                		var tratemax=row.data.tratemax;
                		var trateorder=row.data.trateorder;
                		var swingmin=row.data.swingmin;
                		var swingmax=row.data.swingmax;
                		var swingorder=row.data.swingorder;
                		var circulatemoney=row.data.circulatemoney;
                		var ratio=row.data.ratio;
                		var lyr=row.data.lyr;
                		var ttm=row.data.ttm;
                		var tranumbermin=row.data.tranumbermin;
                		var tranumbermax=row.data.tranumbermax;
                		var tranumberorder=row.data.tranumberorder;
                		var traamountmin=row.data.traamountmin;
                		var traamountmax=row.data.traamountmax;
                		var traamountorder=row.data.traamountorder;
                		var datemin=row.data.datemin;
                		var datemax=row.data.datemax;
                		var datenum=row.data.datenum;
                		var dateorder=row.data.dateorder;
                		var difforder=row.data.difforder;
                		var deaorder=row.data.deaorder;
                		var macdorder=row.data.macdorder;
                		var macdmin=row.data.macdmin;
                		var macdmax=row.data.macdmax;
                		var gtype=row.data.gtype;
                		
                		if(!gtype){
                			gtype="";
                		}
                		$("#searchForm #gtype").val(gtype);
                		if(!increpermin&&increpermin!=0){
                			increpermin="";
                		}
                		$("#Idiv1_form #increpermin").val(increpermin);
                		if(!increpermax&&increpermax!=0){
                			increpermax="";
                		}
                		$("#Idiv1_form #increpermax").val(increpermax);
                		if(!increperorder){
                			increperorder="";
                		}
                		$("#Idiv1_form #increperorder").val(increperorder);
                		if(!nowprimin&&nowprimin!=0){
                			nowprimin="";
                		}
                		$("#Idiv1_form #nowprimin").val(nowprimin);
                		if(!nowprimax&&nowprimax!=0){
                			nowprimax="";
                		}
                		$("#Idiv1_form #nowprimax").val(nowprimax);
                		if(!nowpriorder){
                			nowpriorder="";
                		}
                		$("#Idiv1_form #nowpriorder").val(nowpriorder);
                		if(!tratemin&&tratemin!=0){
                			tratemin="";
                		}
                		$("#Idiv1_form #tratemin").val(tratemin);
                		if(!tratemax&&tratemax!=0){
                			tratemax="";
                		}
                		$("#Idiv1_form #tratemax").val(tratemax);
                		if(!trateorder){
                			trateorder="";
                		}
                		$("#Idiv1_form #trateorder").val(trateorder);
                		if(!swingmin&&swingmin!=0){
                			swingmin="";
                		}
                		$("#Idiv1_form #swingmin").val(swingmin);
                		if(!swingmax&&swingmax!=0){
                			swingmax="";
                		}
                		$("#Idiv1_form #swingmax").val(swingmax);
                		if(!swingorder){
                			swingorder="";
                		}
                		$("#Idiv1_form #swingorder").val(swingorder);
                		if(!circulatemoney&&circulatemoney!=0){
                			circulatemoney="";
                		}
                		$("#Idiv1_form #circulatemoney").val(circulatemoney);
                		if(!ratio&&ratio!=0){
                			ratio="";
                		}
                		$("#Idiv1_form #ratio").val(ratio);
                		if(!lyr&&lyr!=0){
                			lyr="";
                		}
                		$("#Idiv1_form #lyr").val(lyr);
                		if(!ttm&&ttm!=0){
                			ttm="";
                		}
                		$("#Idiv1_form #ttm").val(ttm);
                		if(!tranumbermin&&tranumbermin!=0){
                			tranumbermin="";
                		}
                		$("#Idiv1_form #tranumbermin").val(tranumbermin);
                		if(!tranumbermax&&tranumbermax!=0){
                			tranumbermax="";
                		}
                		$("#Idiv1_form #tranumbermax").val(tranumbermax);
                		if(!tranumberorder){
                			tranumberorder="";
                		}
                		$("#Idiv1_form #tranumberorder").val(tranumberorder);
                		if(!traamountmin&&traamountmin!=0){
                			traamountmin="";
                		}
                		$("#Idiv1_form #traamountmin").val(traamountmin);
                		if(!traamountmax&&traamountmax!=0){
                			traamountmax="";
                		}
                		$("#Idiv1_form #traamountmax").val(traamountmax);
                		if(!traamountorder){
                			traamountorder="";
                		}
                		$("#Idiv1_form #traamountorder").val(traamountorder);
                		if(!datemin){
                			datemin="";
                		}
                		$("#Idiv1_form #datemin").datebox("setValue",datemin);
                		if(!datemax){
                			datemax="";
                		}
                		$("#Idiv1_form #datemax").datebox("setValue",datemin);
                		if(!datenum){
                			datenum="";
                		}
                		$("#Idiv1_form #datenum").val(datenum);
                		if(!dateorder){
                			dateorder="";
                		}
                		$("#Idiv1_form #dateorder").val(dateorder);
                		if(!difforder){
                			difforder="";
                		}
                		$("#Idiv1_form #difforder").val(difforder);
                		if(!deaorder){
                			deaorder="";
                		}
                		$("#Idiv1_form #deaorder").val(deaorder);
                		if(!macdorder){
                			macdorder="";
                		}
                		$("#Idiv1_form #macdorder").val(macdorder);
                		if(!macdmin&&macdmin!=0){
                			macdmin="";
                		}
                		$("#Idiv1_form #macdmin").val(macdmin);
                		if(!macdmax&&macdmax!=0){
                			macdmax="";
                		}
                		$("#Idiv1_form #macdmax").val(macdmax);
                	}
                	//var dataJson = eval("(" + data + ")");  
                }
   		  });
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
                            url:'<%=path%>/tDayData/uploadExcel.do',  
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
     /* 修改状态 */
    function changeStateBefore(){
    	changeState($("#Idiv7_fm #gcode").val(),$("#Idiv7_fm #gname").val());
    }
    function changeState(d,e){
    	$('#Idiv6_fm')[0].reset();
    	var c=1;
    	$.ajax({
                cache: true,
                type: "POST",
                url:"<%=path%>/tCompany/getStateGcode.do?gcode="+d,
                async: false,
               // dataType : "json",设置需要返回的数据类型
                error: function(request) {
                    alert("操作失败了！");
                },
                //data没有指定json的话默认string
                success: function(data) {
                	c=data.msg;
                }
   		  });
    	$("#Idiv6_fm #gcode").val(d);
    	$("#Idiv6_fm #state").val(c);
    	$("#Idiv6_fm #title").text(e);
    	$("#Idiv6").dialog('open');
    }
    function Idiv6_sub(){
  		   $.ajax({
                cache: true,
                type: "POST",
                url:"<%=path%>/tCompany/updateByGcode.do",
                data:$('#Idiv6_fm').serialize(),// 你的formid或者 { id: idIndex, name: nameIndex },//提交参数
                async: false,
               // dataType : "json",设置需要返回的数据类型
                error: function(request) {
                    alert("操作失败了！");
                },
                //data没有指定json的话默认string
                success: function(data) {
                	if(data.msg=='1'){
                		//jeecg.tDayData.init();
                		$("#Idiv6").dialog('close');
                	}else{
                		alert("修改状态失败！");
                	}
                }
   		  });
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
                		//jeecg.tCompany.init();
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
			<label class="ui-label">股票名称:</label><input name="gname" class="easyui-box ui-text" style="width:100px;">
			<label class="ui-label">股票代码:</label><input name="gcode" class="easyui-box ui-text" style="width:100px;">
			<label class="ui-label">股票类型:</label>
			<select name="gtype" id="gtype">
			<option value=""></option>
			<option value="12">沪深股</option>
			<option value="1">沪股</option>
			<option value="2">深股</option>
			<option value="3">创业板</option>
			</select>&emsp;
			<input name="datemin" id="datemin" class="easyui-datetimebox" type="hidden">&emsp;
			<a href="#" onclick="IdivOpen(1,1)">更多</a>&emsp;
			<input name="increpermin" id="increpermin" type="hidden">
		  	<input name="increpermax" id="increpermax" type="hidden">
		  	<input name="increperorder" id="increperorder" type="hidden">
		  	<input name="nowprimin" id="nowprimin" type="hidden">
		  	<input name="nowprimax" id="nowprimax" type="hidden">
		  	<input name="nowpriorder" id="nowpriorder" type="hidden">
		  	<input name="tratemin" id="tratemin" type="hidden">
		  	<input name="tratemax" id="tratemax" type="hidden">
		  	<input name="trateorder" id="trateorder" type="hidden">
		  	<input name="swingmin" id="swingmin" type="hidden">
		  	<input name="swingmax" id="swingmax" type="hidden">
		  	<input name="swingorder" id="swingorder" type="hidden">
		  	<input name="circulatemoney" id="circulatemoney" type="hidden">
		  	<input name="ratio" id="ratio" type="hidden">
		  	<input name="lyr" id="lyr" type="hidden">
		  	<input name="ttm" id="ttm" type="hidden">
		  	<input name="tranumbermin" id="tranumbermin" type="hidden" value="2000">
		  	<input name="tranumbermax" id="tranumbermax" type="hidden">
		  	<input name="tranumberorder" id="tranumberorder" type="hidden">
		  	<input name="traamountmin" id="traamountmin" type="hidden">
		  	<input name="traamountmax" id="traamountmax" type="hidden">
		  	<input name="traamountorder" id="traamountorder" type="hidden">
		  	<input name="datemax" id="datemax" class="easyui-datetimebox" type="hidden">
		  	<input name="datenum" id="datenum" type="hidden">
		  	<input name="dateorder" id="dateorder" type="hidden">
		  	<input name="difforder" id="difforder" type="hidden">
		  	<input name="deaorder" id="deaorder" type="hidden">
		  	<input name="macdorder" id="macdorder" type="hidden">
		  	<input name="macdmin" id="macdmin" type="hidden">
		  	<input name="macdmax" id="macdmax" type="hidden">
	    </p>
	    <a href="#" id="btn-search" class="easyui-linkbutton" iconCls="icon-search">查询</a>&nbsp;
      </form>  
   	 </div>
      <div style="float:left">
      <a href="#"  class="easyui-linkbutton" onclick="restSearch()">重置</a>&nbsp;
      <a href="#"  class="easyui-linkbutton" onclick="openState()">修改选中行状态</a>&nbsp;
      <a href="http://finance.sina.com.cn/realstock/company/sh000001/nc.shtml" target="_blank" class="easyui-linkbutton">上证新浪链接</a>
      </div>
      <div style="float:right">
      <a href="#" id="btn-search" class="easyui-linkbutton" iconCls="icon-add" onclick="backDate('0')">自动加最新3000股日K</a>
      <a href="#" id="btn-search" class="easyui-linkbutton" iconCls="icon-add" onclick="addOpen4()">导入更新MACD等</a>
      </div>
     </div> 
     <!--  Search panel end -->

     <!-- Data List -->
     <div region="center" border="false" >
     <table id="data-list"></table>
	 </div>
  	 
  	 
  	 
  	  <!--弹出层开始单选-->
		<div id="Idiv1" class="easyui-dialog" title="更多查询条件" data-options="closed:true,iconCls:'icon-save',modal:true" style="width:840px;height:450px;">
			<div id="Idiv1_1" style="margin:10px;">
			<form id="Idiv1_form">
				<table id="Idiv1_table">
				  <tr>
				  <td colspan="4"><label class="ui-label">已有查询条件选择:</label>
				  <input class="easyui-combobox" data-options="
				    valueField: 'id',
				    textField: 'searchtitle',
				    url: '<%=path%>/tSearchs/queryAll.do?typeflag=2',
				    onSelect: function(rec){
				 	  	 findById(rec.id);
				    }" style="width:570px;">
				  </td>
				  </tr>
				  <tr>
				  	<td><label class="ui-label">涨幅:</label><input name="increpermin"  id="increpermin" class="easyui-numberbox" data-options="precision:1" style="width:50px;">%
				  	—&nbsp;<input name="increpermax" id="increpermax" class="easyui-numberbox" data-options="precision:1" style="width:50px;">%
				  	</td>
				  	<td><label class="ui-label">涨幅排序:</label>
						<select name="increperorder" id="increperorder">
						<option value=""></option>
						<option value="1">升序</option>
						<option value="2">降序</option>
						</select>
					</td>
				  	<td><label class="ui-label">换手率:</label><input name="tratemin" id="tratemin" class="easyui-numberbox" data-options="precision:1" style="width:50px;">%
				  	—&nbsp;<input name="tratemax" id="tratemax" class="easyui-numberbox" data-options="precision:1" style="width:50px;">%</td>
				  	<td><label class="ui-label">换手率排序:</label>
						<select name="trateorder" id="trateorder">
						<option value=""></option>
						<option value="1">升序</option>
						<option value="2">降序</option>
						</select>
					</td>
				  </tr>
				  <tr>
				  	<td><label class="ui-label">振幅:</label><input name="swingmin" id="swingmin" class="easyui-numberbox" data-options="precision:1" style="width:50px;">%
				  	—&nbsp;<input name="swingmax" id="swingmax" class="easyui-numberbox" data-options="precision:1" style="width:50px;">%</td>
				  	<td><label class="ui-label">振幅排序:</label>
						<select name="swingorder" id="swingorder">
						<option value=""></option>
						<option value="1">升序</option>
						<option value="2">降序</option>
						</select>
					</td>
				  	<td><label class="ui-label">流通市值《</label><input name="circulatemoney" id="circulatemoney" class="easyui-numberbox" data-options="precision:0" style="width:50px;">千万</td>
				  	<td><label class="ui-label">流通占比》</label><input name="ratio" id="ratio" class="easyui-numberbox" data-options="precision:0" style="width:50px;">%</td>
				  </tr>
				  <tr>
				  	<td><label class="ui-label">成交量/手:</label><input name="tranumbermin"  id="tranumbermin" class="easyui-numberbox" data-options="precision:0" style="width:50px;" value="2000">
				  	—&nbsp;<input name="tranumbermax" id="tranumbermax" class="easyui-numberbox" data-options="precision:0" style="width:50px;">
				  	</td>
				  	<td><label class="ui-label">成交量排序:</label>
						<select name="tranumberorder" id="tranumberorder">
						<option value=""></option>
						<option value="1">升序</option>
						<option value="2">降序</option>
						</select>
					</td>
				  	<td><label class="ui-label">成交金额/万:</label><input name="traamountmin" id="traamountmin" class="easyui-numberbox" data-options="precision:0" style="width:50px;">
				  	—&nbsp;<input name="traamountmax" id="traamountmax" class="easyui-numberbox" data-options="precision:0" style="width:50px;"></td>
				  	<td><label class="ui-label">成交金额排序:</label>
						<select name="traamountorder" id="traamountorder">
						<option value=""></option>
						<option value="1">升序</option>
						<option value="2">降序</option>
						</select>
					</td>
				  </tr>
				  <tr>
				  	<td><label class="ui-label">diff连续升降:</label>
						<select name="difforder" id="difforder">
						<option value=""></option>
						<option value="1">升</option>
						<option value="2">降</option>
						</select>
					</td>
				  	<td><label class="ui-label">dea连续升降:</label>
						<select name="deaorder" id="deaorder">
						<option value=""></option>
						<option value="1">升</option>
						<option value="2">降</option>
						</select>
					</td>
				  	<td>
				  	<label class="ui-label">macd:</label><input name="macdmin"  id="macdmin"  class="easyui-numberbox" data-options="precision:1" style="width:40px;">
				  	—&nbsp;<input name="macdmax" id="macdmax" class="easyui-numberbox" data-options="precision:1" style="width:40px;">
						<select name="macdorder" id="macdorder">
						<option value=""></option>
						<option value="1">升</option>
						<option value="2">降</option>
						</select>
					</td>
					<td><label class="ui-label">最近几天数据:</label><input name="datenum" id="datenum" class="easyui-numberbox" data-options="min:2,max:10,precision:0" style="width:50px;">天</td>
				  </tr>
				  <tr>
				  	<td><label class="ui-label">日期:</label><input name="datemin"  id="datemin" class="easyui-datebox" style="width:100px;">
				  	—&nbsp;<input name="datemax" id="datemax" class="easyui-datebox" style="width:100px;">
				  	</td>
				  	<td><label class="ui-label">日期排序:</label>
						<select name="dateorder" id="dateorder">
						<option value=""></option>
						<option value="1">升序</option>
						<option value="2">降序</option>
						</select>
					</td>
				  	<td><label class="ui-label">市净率《</label><input name="lyr" id="lyr" class="easyui-numberbox" data-options="precision:1" style="width:50px;"></td>
				 	<td><label class="ui-label">市盈率TTM《</label><input name="ttm" id="ttm" class="easyui-numberbox" data-options="precision:1" style="width:50px;"></td>
				  </tr>
				  <tr>
				  	<td><label class="ui-label">当前价格:</label><input name="nowprimin"  id="nowprimin" class="easyui-numberbox" data-options="precision:1" style="width:50px;">
				  	—&nbsp;<input name="nowprimax" id="nowprimax" class="easyui-numberbox" data-options="precision:1" style="width:50px;">
				  	</td>
				  	<td><label class="ui-label">当前价格排序:</label>
						<select name="nowpriorder" id="nowpriorder">
						<option value=""></option>
						<option value="1">升序</option>
						<option value="2">降序</option>
						</select>
					</td>
				  	<td></td>
				  	<td></td>
				  </tr>
				  <tr><td colspan="4"></td></tr>
				  <tr>
				  	<td colspan="4"><font color="red">注意：1，</font>成交量2000手以内一般为新股，买不到。
				  	<font color="red">2，</font>当用到最近几天升降则用不到日期范围了,特别是最小日期。
				  	<font color="red">3，</font>没有diff,dea,macd查询时的排序顺序为：日期，涨幅，换手率，振幅，成交量，成交金额。
				  	<font color="red">4，</font>当有diff,dea,macd查询时的排序顺序为：股票代码升序，日期降序（因为第一条数据放到新的list），涨幅，换手率，振幅，成交量，成交金额。
				  	<font color="red">5，</font>当有diff,dea,macd查询时,最近几天数据是必填的（不填日期范围太大）且大于1（1天没法跟自己比较）否则他们的条件没用其他有用。
				  	<font color="red">6，</font>当有diff,dea,macd查询时,建议用更大的翻页数值，因为按照gcode排序，查到最后一条要3000*datenum左右（3天就1W翻页，10天就3W左右翻页），最好查到全部，这样更准确。
				  	<font color="red">7，</font>如果前一日的diff,dea,macd与后一日的diff,dea,macd相等我们算正确的，毕竟这种概率也很小。
				  	<font color="red">8，</font>一进来是不包括成交量2000以内的，如果需要可以在成交量输入0-2001。
				  	<font color="red">9，</font>在没日期查询，没有最近几天数据查询下，只查最新一天数据。
				  	</td>
				  </tr>
				</table>
				</form>
			</div>
		 </div>
	  <!--结束-->
			 
	<!--弹出层开始-->
	<div id="Idiv4" class="easyui-dialog" title="导入数据" data-options="closed:true,iconCls:'icon-save',modal:true" style="width:400px;height:100px;">
		 <form method="POST"  enctype="multipart/form-data" id="form1" action="<%=path%>/tDayData/uploadExcel.do">  
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
	 
	 
  	 <script type="text/javascript" src="<%=basePath%>/view/stocks/datas/page-tDayData.js"></script>
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
		function seeEcharts(a,b,c,d,e,f,g){
			$('#Idiv7_fm')[0].reset();
			$("#Idiv7_fm #gcode").val(a);
			$("#Idiv7_fm #gname").val(b);
			$("#Idiv7_fm #toSinaUrl").attr("href","http://finance.sina.com.cn/realstock/company/"+a+"/nc.shtml")
			$('#Idiv7').dialog({title:a+"  "+b+"  流通市值"+c+"亿  流通占比"+d+"%  市净率"+e+"  市盈率"+f+"  今日振幅"+g+"%"})
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
