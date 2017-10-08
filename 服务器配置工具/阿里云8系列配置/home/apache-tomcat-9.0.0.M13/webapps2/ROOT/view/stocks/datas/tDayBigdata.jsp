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
       function backBigDate(c){
  		   $.ajax({
                cache: true,
                type: "POST",
                url:"<%=path%>/tDayBigdata/backDayBigdate.do?flag="+c,
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
                		jeecg.tDayBigdata.init();
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
		$("#searchForm #swingmin").val($("#Idiv1_form #swingmin").val());
		$("#searchForm #swingmax").val($("#Idiv1_form #swingmax").val());
			$("#searchForm #swingorder").val($("#Idiv1_form #swingorder").val());
		$("#searchForm #tranumbermin").val($("#Idiv1_form #tranumbermin").val());
		$("#searchForm #tranumbermax").val($("#Idiv1_form #tranumbermax").val());
			$("#searchForm #tranumberorder").val($("#Idiv1_form #tranumberorder").val());
		$("#searchForm #traamountmin").val($("#Idiv1_form #traamountmin").val());
		$("#searchForm #traamountmax").val($("#Idiv1_form #traamountmax").val());
			$("#searchForm #traamountorder").val($("#Idiv1_form #traamountorder").val());
		$("#searchForm #datemin").datetimebox("setValue",$("#Idiv1_form #datemin").datebox("getValue")); //后台只认可yyyy-MM-dd HH:mm:ss为Date类型
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
                		var swingmin=row.data.swingmin;
                		var swingmax=row.data.swingmax;
                		var swingorder=row.data.swingorder;
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
                		if(!datenum&&datenum!=0){
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
  </script>
  </head>
  <body class="easyui-layout">
 	 <!-- Search panel start -->
 	 <div class="ui-search-panel" region="north" style="height: 80px;" title="过滤条件" data-options="striped: true,collapsible:false,iconCls:'icon-search',border:false" >  
 	 <div style="float:left">
 	 <form id="searchForm">
        <p class="ui-fields">
			<label class="ui-label">大盘类型:</label>
			<select name="gtype">
			<option value=""></option>
			<option value="1">上证指数</option>
			<option value="2">深证指数</option>
			<option value="3">创业板指数</option>
			</select>&emsp;
			<input name="datemin" id="datemin" class="easyui-datetimebox" type="hidden">&emsp;
			<a href="#" onclick="IdivOpen(1,1)">更多</a>&emsp;
			<input name="increpermin" id="increpermin" type="hidden">
		  	<input name="increpermax" id="increpermax" type="hidden">
		  	<input name="increperorder" id="increperorder" type="hidden">
		  	<input name="swingmin" id="swingmin" type="hidden">
		  	<input name="swingmax" id="swingmax" type="hidden">
		  	<input name="swingorder" id="swingorder" type="hidden">
		  	<input name="tranumbermin" id="tranumbermin" type="hidden">
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
	    <a href="#" id="btn-search" class="easyui-linkbutton" iconCls="icon-search">查询</a>&emsp;
      </form>
     </div>
      <div style="float:left">
      <a href="#"  class="easyui-linkbutton" onclick="restSearch()">重置</a>&emsp;
      <a href="http://finance.sina.com.cn/realstock/company/sh000001/nc.shtml" target="_blank" class="easyui-linkbutton">上证新浪链接</a>&emsp;
      </div>
      <div style="float:right">
      <a href="#" id="btn-search" class="easyui-linkbutton" iconCls="icon-add" onclick="backBigDate('0')">自动加最新大盘日K</a>
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
				    url: '<%=path%>/tSearchs/queryAll.do?typeflag=1',
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
					<td><label class="ui-label">振幅:</label><input name="swingmin" id="swingmin" class="easyui-numberbox" data-options="precision:1" style="width:50px;">%
				  	—&nbsp;<input name="swingmax" id="swingmax" class="easyui-numberbox" data-options="precision:1" style="width:50px;">%</td>
				  	<td><label class="ui-label">振幅排序:</label>
						<select name="swingorder" id="swingorder">
						<option value=""></option>
						<option value="1">升序</option>
						<option value="2">降序</option>
						</select>
					</td>
				  </tr>
				  <tr>
				  	<td><label class="ui-label">成交量/手:</label><input name="tranumbermin"  id="tranumbermin" class="easyui-numberbox" data-options="precision:0" style="width:50px;">
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
					<td><label class="ui-label">最近几天数据:</label><input name="datenum" id="datenum" class="easyui-numberbox" data-options="precision:0" style="width:50px;">天</td>
				  </tr>
				  <tr>
				  	<td colspan="2"><label class="ui-label">日期:</label><input name="datemin"  id="datemin" class="easyui-datebox" style="width:100px;">
				  	—&nbsp;<input name="datemax" id="datemax" class="easyui-datebox" style="width:100px;">
				  	</td>
				  	<td><label class="ui-label">日期排序:</label>
						<select name="dateorder" id="dateorder">
						<option value=""></option>
						<option value="1">升序</option>
						<option value="2">降序</option>
						</select>
					</td>
					<td></td>
				  </tr>
				  <tr><td colspan="4"></td></tr>
				  <tr>
				  	<td colspan="4"><font color="red">注意：1，</font>当用到最近几天升降则用不到日期范围了,特别是最小日期。
				  	<font color="red">2，</font>没有diff,dea,macd查询时的排序顺序为：日期，涨幅，换手率，振幅，成交量，成交金额。
				  	<font color="red">3，</font>当有diff,dea,macd查询时的排序顺序为：股票代码升序，日期降序（因为第一条数据放到新的list），涨幅，换手率，振幅，成交量，成交金额。
				  	<font color="red">4，</font>当有diff,dea,macd查询时,最近几天数据是必填的（不填日期范围太大）且大于1（1天没法跟自己比较）否则他们的条件没用其他有用。
				  	<font color="red">5，</font>当有diff,dea,macd查询时,建议用更大的翻页数值，因为按照gcode排序，查到最后一条要3000*datenum左右（3天就1W翻页，10天就3W左右翻页），最好查到全部，这样更准确。
				  	<font color="red">6，</font>如果前一日的diff,dea,macd与后一日的diff,dea,macd相等我们算正确的，毕竟这种概率也很小。
				  	<font color="red">7，</font>大盘类型少，查所有
				  	</td>
				  </tr>
				</table>
				</form>
			</div>
		 </div>
	  <!--结束-->
	  
	  
	  
  	 <script type="text/javascript" src="<%=basePath%>/view/stocks/datas/page-tDayBigdata.js"></script>
  </body>
</html>
