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
   //page-tSearchs.js改变成功数等。。
   	function addWin(a,b,c,d,e){
   		var wn="成功";
   		if(a=='2'){
   			wn="失败";
   		}
   		if(confirm('是否对 '+e+' 查询条件增加一次 '+wn+' 操作?')) 
	     { 
		         $.ajax({
	               cache: true,
	               type: "POST",
	               url:"<%=path%>/tSearchs/updateWin.do?id="+b+"&winnum="+c+"&defeatnum="+d,
	               // data:$('#fm').serialize(),你的formid或者 { id: idIndex, name: nameIndex },//提交参数
	               async: false,
	              // dataType : "json",设置需要返回的数据类型
	               error: function(request) {
	                   alert("操作失败了！");
	               },
	               //data没有指定json的话默认string
	               success: function(data) {
	               	  if(data.success){
	               	 	 jeecg.tSearchs.init();
	               	  }else{
	               	  	 alert("操作失败,刷新重试下！");
	               	  }
	               	//var dataJson = eval("(" + data + ")");  
	               }
	  		  });
	         return true; 
	     }
	     return false; 
	   	}
   </script>
  </head>
  <body class="easyui-layout">
 	 <!-- Search panel start -->
 	 <div class="ui-search-panel" region="north" style="height: 80px;" title="过滤条件" data-options="striped: true,collapsible:false,iconCls:'icon-search',border:false" >  
 	 <form id="searchForm">
        <p class="ui-fields">
			<label class="ui-label">查询标题:</label><input name="searchtitle" class="easyui-box ui-text" style="width:100px;">
			<label class="ui-label">查询类别:</label>
			<select name="typeflag" style="width:100px;">
			<option value=""></option>
			<option value="2">个股</option>
			<option value="1">大盘</option>
			</select>
			<label class="ui-label">是否正在用:</label>
			<select name="useflag" style="width:50px;">
			<option value=""></option>
			<option value="1">是</option>
			<option value="2">否</option>
			</select>
			<label class="ui-label">是否启用:</label>
			<select name="stateflag" style="width:50px;">
			<option value=""></option>
			<option value="1">是</option>
			<option value="2">否</option>
			</select>
			<label class="ui-label">成功次数》:</label><input name="winnum" class="easyui-numberbox" data-options="precision:0" style="width:50px;">
			<label class="ui-label">成功率》:</label><input name="winper" class="easyui-numberbox" data-options="precision:0" style="width:50px;">%
	    </p>
	    <a href="#" id="btn-search" class="easyui-linkbutton" iconCls="icon-search">查询</a>
      </form>  
     </div> 
     <!--  Search panel end -->

     <!-- Data List -->
     <div region="center" border="false" >
     <table id="data-list"></table>
	 </div>
	 
     <!-- Edit Win&Form -->
     <div id="edit-win" class="easyui-dialog" title="查询条件" data-options="closed:true,iconCls:'icon-save',modal:true" style="width:840px;height:450px;">  
     	<form id="editForm" class="ui-form" method="post">  
     		 <input class="hidden" name="id">
     		 <table id="Idiv1_table">
     		 	  <tr>
     		 	  	<td colspan="2">
     		 	  	<label>查询标题:</label>
     		 	  	<input name="searchtitle" type="text" maxlength="50" class="easyui-validatebox" data-options="required:true" missingMessage="请填写查询标题" style="width:220px;">
     		 	  	</td>
     		 	  	<td colspan="2">
     		 	  	<label class="ui-label">查询类别:</label>
	     		 	  	<select name="typeflag" >
						<!-- <option value=""></option> -->
						<option value="2">个股</option>
						<option value="1">大盘</option>
						</select>
     		 	  	</td>
     		 	  </tr>
				  <tr>
				  	<td><label class="ui-label">涨幅:</label><input name="increpermin"  maxlength="7" class="easyui-numberbox" data-options="precision:1" style="width:50px;">%
				  	—&nbsp;<input name="increpermax" maxlength="7" class="easyui-numberbox" data-options="precision:1" style="width:50px;">%
				  	</td>
				  	<td><label class="ui-label">涨幅排序:</label>
						<select name="increperorder" >
						<option value=""></option>
						<option value="1">升序</option>
						<option value="2">降序</option>
						</select>
					</td>
				  	<td><label class="ui-label">换手率:</label><input name="tratemin" maxlength="5" class="easyui-numberbox" data-options="precision:1" style="width:50px;">%
				  	—&nbsp;<input name="tratemax" maxlength="5" class="easyui-numberbox" data-options="precision:1" style="width:50px;">%</td>
				  	<td><label class="ui-label">换手率排序:</label>
						<select name="trateorder" >
						<option value=""></option>
						<option value="1">升序</option>
						<option value="2">降序</option>
						</select>
					</td>
				  </tr>
				  <tr>
				  	<td><label class="ui-label">振幅:</label><input name="swingmin" maxlength="5" class="easyui-numberbox" data-options="precision:1" style="width:50px;">%
				  	—&nbsp;<input name="swingmax" maxlength="5" class="easyui-numberbox" data-options="precision:1" style="width:50px;">%</td>
				  	<td><label class="ui-label">振幅排序:</label>
						<select name="swingorder" >
						<option value=""></option>
						<option value="1">升序</option>
						<option value="2">降序</option>
						</select>
					</td>
				  	<td><label class="ui-label">流通市值《</label><input name="circulatemoney" maxlength="8" class="easyui-numberbox" data-options="precision:0" style="width:50px;">千万</td>
				  	<td><label class="ui-label">流通占比》</label><input name="ratio" maxlength="3" class="easyui-numberbox" data-options="precision:0" style="width:50px;">%</td>
				  </tr>
				  <tr>
				  	<td><label class="ui-label">成交量/手:</label><input name="tranumbermin"  maxlength="20" class="easyui-numberbox" data-options="precision:0" style="width:50px;" value="2000">
				  	—&nbsp;<input name="tranumbermax" maxlength="20" class="easyui-numberbox" data-options="precision:0" style="width:50px;">
				  	</td>
				  	<td><label class="ui-label">成交量排序:</label>
						<select name="tranumberorder" >
						<option value=""></option>
						<option value="1">升序</option>
						<option value="2">降序</option>
						</select>
					</td>
				  	<td><label class="ui-label">成交金额/万:</label><input name="traamountmin" maxlength="20" class="easyui-numberbox" data-options="precision:0" style="width:50px;">
				  	—&nbsp;<input name="traamountmax" maxlength="20" class="easyui-numberbox" data-options="precision:0" style="width:50px;"></td>
				  	<td><label class="ui-label">成交金额排序:</label>
						<select name="traamountorder" >
						<option value=""></option>
						<option value="1">升序</option>
						<option value="2">降序</option>
						</select>
					</td>
				  </tr>
				  <tr>
				  	<td><label class="ui-label">diff连续升降:</label>
						<select name="difforder" >
						<option value=""></option>
						<option value="1">升</option>
						<option value="2">降</option>
						</select>
					</td>
				  	<td><label class="ui-label">dea连续升降:</label>
						<select name="deaorder" >
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
						<option value="3">1点红</option>
						<option value="4">红V型</option>
						<option value="5">绿V型</option>
						</select>
					</td>
					<td><label class="ui-label">最近几天数据:</label><input name="datenum" maxlength="5" class="easyui-numberbox" data-options="precision:0" style="width:50px;">天</td>
				  </tr>
				  <tr>
				  	<td colspan="2"><label class="ui-label">日期:</label><input name="datemin"   class="easyui-datetimebox" style="width:100px;">
				  	—&nbsp;<input name="datemax" class="easyui-datetimebox" style="width:100px;">
				  	</td>
				  	<td><label class="ui-label">日期排序:</label>
						<select name="dateorder" >
						<option value=""></option>
						<option value="1">升序</option>
						<option value="2">降序</option>
						</select>
					</td>
				  	<td><label class="ui-label">市净率《</label><input name="lyr" maxlength="10" class="easyui-numberbox" data-options="precision:1" style="width:50px;"></td>
				  </tr>
				  <tr>
				  	<td><label class="ui-label">市盈率TTM《</label><input name="ttm" maxlength="10" class="easyui-numberbox" data-options="precision:1" style="width:50px;"></td>
				  	<td>
				  	<label class="ui-label">股票类型:</label>
						<select name="gtype" >
						<option value=""></option>
						<option value="12">沪深股</option>
						<option value="1">沪股</option>
						<option value="2">深股</option>
						<option value="3">创业板</option>
						</select>
					</td>
				  	<td><label class="ui-label">股票代码</label><input name="gcode" maxlength="10" class="easyui-box ui-text" style="width:80px;"></td>
				  	<td></td>
				  </tr>
				  <tr>
				  <td><label class="ui-label">当前价格:</label><input name="nowprimin"  maxlength="7" class="easyui-numberbox" data-options="precision:1" style="width:50px;">
				  	—&nbsp;<input name="nowprimax" maxlength="7" class="easyui-numberbox" data-options="precision:1" style="width:50px;">
				  	</td>
				  	<td><label class="ui-label">当前价格排序:</label>
						<select name="nowpriorder" >
						<option value=""></option>
						<option value="1">升序</option>
						<option value="2">降序</option>
						</select>
					</td>
					<td><label class="ui-label">K线形态:</label>
						<select name="ktype">
							<option value=""></option>
							<option value="1">底部红色一阳指</option>
							<option value="2">底部绿色一阳指</option>
							<option value="3">底部红色十字心</option>
							<option value="4">底部绿色十字心</option>
							<option value="5">V型十字心</option>
							<option value="6">V型一阳指</option>
						</select>
					</td>
					<td></td>
				  </tr>
				  <tr><td colspan="4" bgcolor="blue" style="height:2px;"></td></tr>
				  <tr><td colspan="4"><font color="red">以下非查询条件,是本条数据的状态描述</font></td></tr>
				  <tr>
				  	<td><label class="ui-label">这个查询条件成功次数:</label><input name="winnum" maxlength="10" class="easyui-numberbox" data-options="precision:0" style="width:50px;" disabled="disabled"></td>
				  	<td><label class="ui-label">失败次数:</label><input name="defeatnum" maxlength="10" class="easyui-numberbox" data-options="precision:0" style="width:50px;" disabled="disabled"></td>
				  	<td><label class="ui-label">成功率:</label><input name="winper" maxlength="10" class="easyui-numberbox" data-options="precision:0" style="width:50px;" disabled="disabled">%</td>
				  	<td></td>
				  </tr>
				  <tr>
				  	<td>
				  	<label class="ui-label">是否启用:</label>
						<select name="stateflag" >
						<option value="1">是</option>
						<option value="2">否</option>
						</select>
					</td>
				  	<td>
				  	<label class="ui-label">是否正在用:</label>
						<select name="useflag" >
						<option value="2">否</option>
						<option value="1">是</option>
						</select>
					</td>
				  	<td colspan="2"><label class="ui-label">在用股票集","隔开:</label><input name="usecodes" maxlength="50" class="easyui-box ui-text" style="width:200px;"></td>
				  </tr>
				  <tr>
				  	<td colspan="4"><label class="ui-label">备注:</label>
				  		<textarea name="remark" rows="20" cols="20" style="width:660px;height:50px;" maxlength="100"></textarea>
				    </td>
				  </tr>
				  <tr><td colspan="4" bgcolor="blue" style="height:2px;"></td></tr>
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
  	 <script type="text/javascript" src="<%=basePath%>/view/stocks/datas/page-tSearchs.js"></script>
  </body>
</html>
