<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <%@include file="/view/resource.jsp" %>
    <script type="text/javascript">
    function restSearch(){
    	$("#searchForm")[0].reset();
    }
    function changeGname(c){
   	   if(c&&c.length==8){
   	   		var t=c.substring(0,5);
   	   		if(t=='sz300'){
   	   			$("#editForm #gtype").val("3");
   	   		}else{
   	   			t=t.substring(0,2);
   	   			if(t=='sh'){
   	   				$("#editForm #gtype").val("1");
   	   			}else if(t=='sz'){
   	   				$("#editForm #gtype").val("2");
   	   			}else{
   	   				alert("请输入正确的股票代码如：sh600000")
    				$("#editForm #gcode").val("");
    				return false;
   	   			}
   	   		}
	    	$.ajax({
	                cache: true,
	                type: "POST",
	                url:"<%=path%>/tCompany/getGnameByGcode.do?gcode="+c,
	                async: false,
	               // dataType : "json",设置需要返回的数据类型
	                error: function(request) {
	                    alert("操作失败了！");
	                },
	                //data没有指定json的话默认string
	                success: function(data) {
                		$("#editForm #gname").val(data);
               		 }
	   		  });
    	}else{
    		alert("请输入正确的股票代码如：sh600000")
    		$("#editForm #gcode").val("");
    	}
    }
    function changeGainmoney(){
    	if($("#editForm #sellmoney").val()&&$("#editForm #totalmoney").val()){
    		var c=parseFloat($("#editForm #sellmoney").val())-parseFloat($("#editForm #totalmoney").val());
    		$("#editForm #gainmoney").val(c.toFixed(2));
    	}else{
    		alert("请填写买入和卖出数据！");
    	}
    }
    </script>
  </head>
  <body class="easyui-layout">
 	 <!-- Search panel start -->
 	 <div class="ui-search-panel" region="north" style="height: 80px;" title="过滤条件" data-options="striped: true,collapsible:false,iconCls:'icon-search',border:false" >  
 	 <div style="float:left">
 	 <form id="searchForm">
        <p class="ui-fields">
			<label class="ui-label">股票代码:</label><input name="gcode" class="easyui-box ui-text" style="width:80px;">
			<label>股票类型:</label>
			<select name="gtype" style="width:100px;">
				<option value=""></option>
				<option value="1">上证股sh</option>
				<option value="2">深圳股sz</option>
				<option value="3">创业板sz300</option>
			</select>
			<label class="ui-label">证券公司:</label>
			<select name="securitycompany" style="width:100px;">
				<option value=""></option>
				<option value="1">财通证券</option>
			</select>
			<label>年份:</label>
			<input name="buyyear" type="text" maxlength="4" style="width:50px;">
			<label>月份:</label>
			<input name="buymonth" type="text" maxlength="2" style="width:25px;">
			<label>单次盈利:</label>
			<select name="gainmoneyorder" style="width:50px;">
				<option value=""></option>
				<option value="1">升序</option>
				<option value="2">降序</option>
			</select>
			<label>单股总盈利:</label><!-- (注意：单次盈利有排序则总盈利和和总次数排序无效) -->
			<select name="summoneyorder" style="width:50px;">
				<option value=""></option>
				<option value="1">升序</option>
				<option value="2">降序</option>
			</select>
			<label>单股总次数:</label>
			<select name="countnumorder" style="width:50px;">
				<option value=""></option>
				<option value="1">升序</option>
				<option value="2">降序</option>
			</select>
	    </p>
	    <a href="#" id="btn-search" class="easyui-linkbutton" iconCls="icon-search">查询</a>
      </form> 
      </div> 
       <div style="float:left">
      	&emsp;<a href="#"  class="easyui-linkbutton" onclick="restSearch()">重置</a>&emsp;
      </div>
     </div> 
     <!--  Search panel end -->

     <!-- Data List -->
     <div region="center" border="false" >
     <table id="data-list"></table>
	 </div>
	 
     <!-- Edit Win&Form -->
     <div id="edit-win" class="easyui-dialog" title="Basic window" data-options="closed:true,iconCls:'icon-save',modal:true" style="width:400px;height:470px;">  
     	<form id="editForm" class="ui-form" method="post">  
     		 <input class="hidden" name="id">
     		 <div class="ui-edit">
		     	   <div class="ftitle">购买数据</div>
					<div class="fitem">
						<label>股票代码</label>
						<input name="gcode" type="text" maxlength="10" class="easyui-validatebox" data-options="required:true" missingMessage="请填写股票代码" onblur="changeGname(this.value)">
					</div>
					<div class="fitem">
						<label>股票名称</label>
						<input id="gname" name="gname" type="text" maxlength="10" class="easyui-validatebox" readonly="readonly">
					</div>
					<div class="fitem">
						<label>股票类型</label>
						<select id="gtype" name="gtype" style="width:145px;">
							<option value="1">上证股sh</option>
							<option value="2">深圳股sz</option>
							<option value="3">创业板sz300</option>
						</select>
					</div>
					<div class="fitem">
						<label>证券公司</label>
						<select name="securitycompany" style="width:145px;">
							<option value="1">财通证券</option>
						</select>
					</div>
					<div class="fitem">
						<label>账户</label>
						<select name="account" style="width:145px;">
							<option value="27053782">27053782</option>
						</select>
					</div>
					<div class="fitem">
						<label>购买数量/手</label>
						<input name="num" type="text" maxlength="" class="easyui-numberbox" precision="0" min="0" data-options="required:true" missingMessage="请填写购买数量">
					</div>
					<div class="fitem">
						<label>购买总金额/元</label>
						<input id="totalmoney" name="totalmoney" type="text" maxlength="" class="easyui-numberbox" data-options="min:0,max:999999999,precision:2,required:true" missingMessage="请填写购买总金额">
					</div>
					<div class="fitem">
						<label>卖出总金额/元</label>
						<input id="sellmoney" name="sellmoney" type="text" maxlength="" class="easyui-numberbox" data-options="min:0,max:999999999,precision:2" onblur="changeGainmoney()">
					</div>
					<div class="fitem">
						<label>盈利/元</label>
						<input id="gainmoney" name="gainmoney" type="text" maxlength="" class="easyui-validatebox" readonly="readonly">
					</div>
					<div class="fitem">
						<label>购买时间</label>
						<input name="buydate" type="text" maxlength="" class="easyui-datetimebox" data-options="required:true" missingMessage="请填写购买时间">
					</div>
					<div class="fitem">
						<label>结束时间</label>
						<input name="enddate" type="text" maxlength="" class="easyui-datetimebox" data-options="" missingMessage="请填写购买时间">
					</div>
					<div class="fitem">
						<label>购买状态</label>
	     		 	  	<select name="state" >
						<option value="1">进行中</option>
						<option value="2">已结束</option>
						</select>
					</div>
  			</div>
     	</form>
  	 </div>
  	 <script type="text/javascript" src="<%=basePath%>/view/stocks/datas/page-tBuyData.js"></script>
  </body>
</html>
