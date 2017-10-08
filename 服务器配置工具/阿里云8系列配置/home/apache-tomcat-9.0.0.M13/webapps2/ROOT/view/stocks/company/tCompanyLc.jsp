<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <%@include file="/view/resource.jsp" %>
  </head>
  <style type="text/css">
  a:link{color: #333;text-decoration: none;}
  a:hover {color:red;} /*悬浮（鼠标经过）时颜色*/
 </style>
  <script type="text/javascript" src="<%=basePath%>/js/stock/pcity.js"></script>
    <script type="text/javascript">
    /* 查看交易记录 */
    function seeDeal(c){
    	window.open("<%=path%>/tBuyData/list.shtml?gcode="+c)  
    	<%-- window.location.href="<%=path%>/tBuyData/list.shtml?gcode="+c;  --%>
    }
    /* 修改状态 */
    function changeState(c,d,e){
    	$('#Idiv4_fm')[0].reset();
    	$("#Idiv4_fm #id").val(d);
    	$("#Idiv4_fm #state").val(c);
    	$("#Idiv4_fm #title").text(e);
    	$("#Idiv4").dialog('open');
    }
    function Idiv4_sub(){
  		   $.ajax({
                cache: true,
                type: "POST",
                url:"<%=path%>/tCompanyLc/updateForm.do",
                data:$('#Idiv4_fm').serialize(),// 你的formid或者 { id: idIndex, name: nameIndex },//提交参数
                async: false,
               // dataType : "json",设置需要返回的数据类型
                error: function(request) {
                    alert("操作失败了！");
                },
                //data没有指定json的话默认string
                success: function(data) {
                	if(data.msg=='1'){
                		jeecg.tCompanyLc.init();
                		$("#Idiv4").dialog('close');
                	}else{
                		alert("修改状态失败！");
                	}
                }
   		  });
    }
    
      /* 查看图片信息alt */
    function seePic(c,d){
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
    
    
    
    function div1Open(){
    	   $("#Idiv1_dl").html("");
  		   $.ajax({
                cache: true,
                type: "POST",
                url:"<%=path%>/tBusinessPlate/dataAll.do",
                // data:$('#fm').serialize(),你的formid或者 { id: idIndex, name: nameIndex },//提交参数
                async: false,
               // dataType : "json",设置需要返回的数据类型
                error: function(request) {
                    alert("操作失败了！");
                },
                //data没有指定json的话默认string
                success: function(data) {
                	//var dataJson = eval("(" + data + ")");  
                	var k=data.total;
                	for(var i=0;i<k;i++){
                		$("#Idiv1_dl").append("<dd style=\"width: 137px;background: url(<%=basePath%>/images/stock/hq_gif.gif) repeat-y -168px 0;float: left;position: relative;\">"
                		+"<a href=\"#\" style=\"padding-left: 15px;display: block;height: 24px;outline: none;margin: 0 1px;\" onclick=\"addIdiv1("+data.rows[i].id+",'"+data.rows[i].platename+"')\">"
                		+data.rows[i].platename+"</a></dd>");
                	}
                }
   		  });
   		$("#Idiv1 #bpnamee").val($("#editForm #bpname").val());//修改传值，新增为空
    	$("#Idiv1").dialog('open');
    }
    function addIdiv1(a,b){
   		$("#editForm #bpid").val(a);
   		$("#editForm #bpname").val(b);
   		$("#Idiv1").dialog('close');
   		//$("#Idiv1 #bpnamee").val(b);
    }
 /*    function Idiv1_sub(){
    	$("#Idiv1 #bpnamee").val("");
    	$("#Idiv1").dialog('close');
    }
    function Idiv1_rest(){
    	$("#editForm #bpid").val("");
    	$("#editForm #bpname").val("");
    	$("#Idiv1 #bpnamee").val("");
    } */
    
    
    function div2Open(){
    		$("#Idiv2").dialog({
           /*  resizable: false,
            height: "auto",
            width: 400,
            modal: true, */
            buttons:[
							{
								text:'确定',
								handler:function (){Idiv2_sub()}
							},{
								text:'重置',
								handler:function (){Idiv2_rest()}
							}
							/* ,{
								text:'关闭',
								handler:function (){$("#Idiv2").dialog("close");}
							} */
						]
        });
    	   $("#Idiv2_dl").html("");
  		   $.ajax({
                cache: true,
                type: "POST",
                url:"<%=path%>/tConceptPlate/dataAll.do",
                async: false,
               // dataType : "json",设置需要返回的数据类型
                error: function(request) {
                    alert("操作失败了！");
                },
                //data没有指定json的话默认string
                success: function(data) {
                	//var dataJson = eval("(" + data + ")");  
                	var k=data.total;
                	for(var i=0;i<k;i++){
                		$("#Idiv2_dl").append("<dd style=\"width: 137px;background: url(<%=basePath%>/images/stock/hq_gif.gif) repeat-y -168px 0;float: left;position: relative;\">"
                		+"<a href=\"#\" style=\"padding-left: 15px;display: block;height: 24px;outline: none;margin: 0 1px;\" onclick=\"addIdiv2("+data.rows[i].id+",'"+data.rows[i].platename+"')\">"
                		+data.rows[i].platename+"</a></dd>");
                	}
                }
   		  });
   		$("#Idiv2 #cpnamese").val($("#editForm #cpnames").val());
    	$("#Idiv2").dialog('open');
    }
    function addIdiv2(a,b){
    	var a1=$("#editForm #cpids").val();
    	var a2=$("#editForm #cpnames").val();
    	var a3=$("#Idiv2 #cpnamese").val();
    	if(!a3){
    		$("#editForm #cpids").val(a);
   			$("#editForm #cpnames").val(b);
   			$("#Idiv2 #cpnamese").val(b);
    	}else{
    		$("#editForm #cpids").val(a1+","+a);
   			$("#editForm #cpnames").val(a2+","+b);
   			$("#Idiv2 #cpnamese").val(a2+","+b);
    	}
    }
    function Idiv2_sub(){
    	$("#Idiv2 #cpnamese").val("");
    	$("#Idiv2").dialog('close');
    }
    function Idiv2_rest(){
    	$("#editForm #cpids").val("");
    	$("#editForm #cpnames").val("");
    	$("#Idiv2 #cpnamese").val("");
    }
    
    
    
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
    </script>
  <body class="easyui-layout">
 	 <!-- Search panel start -->
 	 <div class="ui-search-panel" region="north" style="height: 80px;" title="过滤条件" data-options="striped: true,collapsible:false,iconCls:'icon-search',border:false" >  
 	 <div style="float:left">
 	 <form id="searchForm">
        <p class="ui-fields">
			<label class="ui-label">股票名:</label><input name="gname" class="easyui-box ui-text" style="width:100px;">
			<label class="ui-label">股票代码:</label><input name="gcode" class="easyui-box ui-text" style="width:100px;">
	    </p>
	    <a href="#" id="btn-search" class="easyui-linkbutton" iconCls="icon-search">查询</a>
      </form>
      </div>
      <div style="float:left">
      &emsp;<a href='#' class="easyui-linkbutton" onclick="seePic('sh000001','上证线图')">查看上证线图</a>
      </div>
     </div> 
     <!--  Search panel end -->

     <!-- Data List -->
     <div region="center" border="false" >
     <table id="data-list"></table>
	 </div>
	 
     <!-- Edit Win&Form -->
     <div id="edit-win" class="easyui-dialog" title="公司小幅变动信息" data-options="closed:true,iconCls:'icon-save',modal:true" style="width:600px;height:380px;">  
     	<form id="editForm" class="ui-form" method="post">  
     		 <input class="hidden" name="id">
     		 <div class="ui-edit">
		     	   <div class="ftitle">公司小幅变动信息</div>
					<div class="fitem">
						<label>股票名称</label>
						<input name="gname" type="text" maxlength="50" class="easyui-validatebox" data-options="required:true" missingMessage="请填写股票名称">
						<label>股票代码</label>
						<input name="gcode" type="text" maxlength="50" class="easyui-validatebox" data-options="required:true" missingMessage="请填写股票代码">
					</div>
					<div class="fitem">
						<label>总市值(千万)</label>
						<input name="totalmoney" type="text" maxlength="" class="easyui-numberbox" data-options="" missingMessage="请填写总市值">
						<label>流通市值(千万)</label>
						<input name="circulatemoney" type="text" maxlength="" class="easyui-numberbox" data-options="" missingMessage="请填写流通值">
					</div>
					<div class="fitem">
						<label>市净率(越小越好)</label>
						<input name="lyr" type="text" maxlength="" class="easyui-numberbox" data-options="precision:2" missingMessage="请填写市净率（越小越好)">
						<label>市盈率TTM</label>
						<input name="ttm" type="text" maxlength="" class="easyui-numberbox" data-options="precision:2" missingMessage="请填写市盈率TTM">
					</div>
					<div class="fitem">
						<label>证监会行业名</label>
						<input id="bpid" name="bpid" class="easyui-validatebox" type="hidden">
						<input id="bpname" name="bpname" type="text" maxlength="" class="easyui-validatebox" readonly="readonly" style="width:400px;"><a href="#" onclick="div1Open()"/>选择</a>
					</div>
					<div class="fitem">
						<label>概念板名称集</label>
						<input id="cpids" name="cpids" class="easyui-validatebox" type="hidden">
						<input id="cpnames" name="cpnames" type="text" maxlength="" class="easyui-validatebox"  style="width:400px;" readonly="readonly"><a href="#" onclick="div2Open()"/>选择</a>
					</div>
					<div class="fitem">
						<label>地域</label>
						<input id="province" name="province" type="text" class="easyui-validatebox" style="width:200px;" readonly="readonly" placeholder="省份">
						<input id="city" name="city" type="text" class="easyui-validatebox" style="width:200px;" readonly="readonly" placeholder="城市"><a href="#" onclick="div3Open()"/>选择</a>
					</div>
  			</div>
     	</form>
  	 </div>
  	 
 	 <!--弹出层开始单选-->
	<div id="Idiv1" class="easyui-dialog" title="证监会行业" data-options="closed:true,iconCls:'icon-save',modal:true" style="width:850px;height:510px;">
	     <dl id="Idiv1_dl" style="width: 835px;/* background: url(http://www.sinaimg.cn/cj/subject/2009/0618/sd_rt.gif) repeat-y center right; border: 1px solid #c5c7d3;*/padding: 1px 0px 0;">
	     </dl>
	    <!--  <div style="width:100%;">
	     <input type="text" id="bpnamee" style="width:600px;margin-left: 40px;margin-top: 10px;"/>
	     <input type="submit" value="确定" onclick="Idiv1_sub()"/>
	     <input type="submit" value="重置" onclick="Idiv1_rest()"/>
	 	 </div> -->
	 </div>
	 <!--结束-->
  	 
 	 <!--弹出层开始-->
	<div id="Idiv2" class="easyui-dialog" title="概念板块" data-options="closed:true,iconCls:'icon-save',modal:true" style="width:850px;height:910px;">
	     <dl id="Idiv2_dl" style="width: 835px;padding: 1px 0px 0;">
	     </dl>
	     <div style="width:100%;">
	     <input type="text" id="cpnamese" style="width:600px;margin-left: 40px;margin-top: 10px;"/>
	     <!-- <input type="submit" value="确定" onclick="Idiv2_sub()"/>
	     <input type="submit" value="重置" onclick="Idiv2_rest()"/> -->
	 	 </div>
	 </div>
	 <!--结束-->
  	 
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
	<div id="Idiv4" class="easyui-dialog" title="修改状态" data-options="closed:true,iconCls:'icon-save',modal:true" style="width:200px;height:160px;">
	     <div style="width:60%;" align="center">
	     <form id="Idiv4_fm" method="post">
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
	     <input type="submit" value="保存" onclick="Idiv4_sub()"/>
	 	 </div>
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
	 
  	 
  	 <script type="text/javascript" src="<%=basePath%>/view/stocks/company/page-tCompanyLc.js"></script>
  </body>
</html>
