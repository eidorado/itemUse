<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/jqueryMaster.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>服务范围统计</title>
<script type="text/javascript" src="<%=basePath%>echarts/echarts.js"></script>
</head>
<body>
	<div id="contractTab" class="easyui-tabs"  fit="true" border="false" >
		<div title="全部">
			<div  style="text-align:left;">
				  <form id="querySearchFrom" method="post" style="margin-left:5px;margin-top:5px;">
						<table style="margin-bottom: 5px">
							<tr>
								<td>发起日期：</td>
								<td>
									<input class="easyui-datebox" id="startDate" name="requestServer.startDate" style="width:150px">
								--
									<input class="easyui-datebox" id="endDate" name="requestServer.endDate" style="width:150px">
								</td>
								<td>
									<a href="#" class="easyui-linkbutton" onclick="querySearch()" iconcls="icon-search">查询</a>
									<a href="#" class="easyui-linkbutton" onclick="clearForm1()" iconcls="icon-remove">清空</a>
								</td>
							</tr>
						</table>
					</form>
				</div>
			<div  style="text-align:left;margin:5px;">
						<table border="1" cellspacing="0">
						  <tr bgcolor="#CECEFF">
						    <th width="125px">工单数量</th>
						    <th width="125px">合同内</th>
						    <th width="125px">合同外</th>
						    <th width="125px">合同外占比</th>
						  </tr>
						  <tr>
						    <td><b><font id="id1"></font></b></td>
						    <td><b><font id="id2"></font></b></td>
						    <td><b><font id="id3"></font></b></td>
						    <td><b><font id="id4"></font></b></td>
						  </tr>
						</table>
			</div>
			<!-- <div id="grid" class="easyui-panel" style="border: 0px" title="全部"> -->
					<!-- 为 ECharts 准备一个具备大小（宽高）的 DOM -->
   				 <div id="main" style="width: 800px;height:500px;margin-top:20px;margin-left:20px;"></div>
			<!-- </div> -->
		</div>
		<div title="按业主">
			<div id="contractTab2" class="easyui-tabs"  fit="true" border="false" >
			<form id="querySearchFrom2" method="post" style="margin-left:5px;margin-top:5px;">
					<table style="margin-bottom: 5px">
						<tr>
							<td>发起日期：</td>
							<td>
								<input class="easyui-datebox" id="startDate" name="requestServer.startDate" style="width:150px">
							--
								<input class="easyui-datebox" id="endDate" name="requestServer.endDate" style="width:150px">
							</td>
							<td>展示数量：</td>
							<td>
								<input class="easyui-numberbox" id="level" name="requestServer.level" style="width:60px" data-options="min:0,max:50,precision:0">
							</td>
							<td>
								<a href="#" class="easyui-linkbutton" onclick="querySearch2()" iconcls="icon-search">查询</a>
								<a href="#" class="easyui-linkbutton" onclick="clearForm2()" iconcls="icon-remove">清空</a>
							</td>
						</tr>
					</table>
			</form>
			<div title="按业主图形">
				<div  style="text-align:left;">
				<div id="main2" style="width: 800px;height:500px;margin-top:20px;margin-left:20px;"></div>
				</div>
			</div>
			<div title="按业主表格">
					<div id="grid" class="easyui-panel">
				    <table id="dg2" title="服务范围统计列表" >
				    </table>
			   		</div>
			</div>
			</div>
		</div>
		<div title="按项目">
		<div id="contractTab3" class="easyui-tabs"  fit="true" border="false" >
			<form id="querySearchFrom3" method="post" style="margin-left:5px;margin-top:5px;">
					<table style="margin-bottom: 5px">
							<tr>
								<td>
								年度：
									<input class="easyui-numberbox" id="yearS" name="requestServer.yearS" style="width:60px" data-options="min:1000,max:9999,precision:0">
								月度：
									<input class="easyui-numberbox" id="monthS" name="requestServer.monthS" style="width:60px" data-options="min:1,max:12,precision:0">
								&emsp;发起日期：
									<input class="easyui-datebox" id="startDate" name="requestServer.startDate" style="width:150px">
								--
									<input class="easyui-datebox" id="endDate" name="requestServer.endDate" style="width:150px">
								</td>
							</tr>
							<tr>
								<td>
								业主：
									<select id="ownerCode" name="requestServer.ownerCode" class="easyui-combogrid" style="width:250px" data-options="
							            panelWidth: 250,
							            multiple: false,
							            idField: 'companyCode',
				       						textField: 'serverName',
							            url: 'getServerInfoList.htm?serverInfo.type=1',
							            method: 'get',
							            columns: [[
							                {field:'companyCode',checkbox:true},
							                {field:'serverName',title:'业主名称',width:250}
							            ]],
							            fitColumns: true,
							            onShowPanel:function(){
							           	 $('#querySearchFrom3 #ownerCode').combogrid('grid').datagrid('load'); 
							            }
							        ">
						    		</select>
								&emsp;展示数量：
									<input class="easyui-numberbox" id="level" name="requestServer.level" style="width:60px" data-options="min:0,max:50,precision:0">
									<a href="#" class="easyui-linkbutton" onclick="querySearch3()" iconcls="icon-search">查询</a>
									<a href="#" class="easyui-linkbutton" onclick="clearForm3()" iconcls="icon-remove">清空</a>
								</td>
							</tr>
						</table>
			</form>
			<div title="按项目图形">
				<div  style="text-align:left;">
				<div id="main3" style="width: 800px;height:500px;margin-top:20px;margin-left:20px;"></div>
				</div>
			</div>
			<div title="按项目表格">
					<div id="grid2" class="easyui-panel">
				    <table id="dg3" title="服务范围统计列表" >
				    </table>
			   		</div>
			</div>
			</div>
		</div>
	</div>
</body>
</html>
<script type="text/javascript">
		//echarts
		var echarts ='<%=basePath%>'+'echarts';
		//路径配置
		require.config({
		    paths: {
		        echarts: echarts
		    }
		});
		 $(function() {
				$.ajax({   
					url:'getServiceScopeEcharts.htm',
					type:"post",   
					dataType:'json',
					async:true,
					success:function(result){
						if(result.message.code=='200'){
							if(result.rows){
								var inNum=result.rows.contractInNum;var outNum=result.rows.contractOutNum;
								turnJs(inNum,outNum);
								$("#id1").text(parseInt(inNum)+parseInt(outNum));
								$("#id2").text(inNum);
								$("#id3").text(outNum);
								$("#id4").text(parseInt(parseInt(outNum)*100/(parseInt(outNum)+parseInt(inNum)))+"%");
							}
						}
					}  
				});
				$.ajax({   
					url:'getServiceScopeEchartsByOwner.htm',
					type:"post",   
					dataType:'json',
					async:true,
					success:function(result){
						if(result.message.code=='200'){
							if(result.rows.serverNames){
								$("#main2").css("display","");
								turnJs2(result.rows.serverNames,result.rows.inNums2,result.rows.outNums2);
							}else{
								$("#main2").css("display","none");
							}
						}
					}  
				});
				/* $.ajax({   
					url:'getServiceScopeEchartsByItem.htm',
					type:"post",   
					dataType:'json',
					async:true,
					success:function(result){
						if(result.message.code=='200'){
							if(result.rows.itemNames){
								$("#main3").css("display","");
								turnJs3(result.rows.itemNames,result.rows.inNums2,result.rows.outNums2);
							}else{
								$("#main3").css("display","none");
							}
						}
					}  
				}); */
				
				querDate2();
			 
		});
		
		 function querDate2(){
			 $('#dg2').datagrid({
				   pageSize : 50,//默认选择的分页是每页5行数据
		           pageList : [ 50, 80, 100 ],//可以选择的分页集合
		           nowrap : true,//设置为true，当数据长度超出列宽时将会自动截取
		           striped : true,//设置为true将交替显示行背景。
		           collapsible : false,//隐藏可折叠按钮
		           height:$(document.body).height()-105, 
				    columns:[[
						{title:'业主名称',field:'ownerName',width:'200',align:'center',formatter: function(value,rec){
		                	 return "<a href=\"#\" style=\"color:blue\" onclick=\"checkJs3('"+rec.ownerCode+"')\">"+rec.ownerName+"</a>";
		                 }},
		                {title:'工单数量',field:'all1',width:'100',align:'center',formatter: function(value,rec){
		                	  return parseInt(rec.inNums)+parseInt(rec.outNums);
		                 }},
		                {title:'合同内工单数量',field:'inNums',width:'100',align:'center'},
						{title:'合同外工单数量',field:'outNums',width:'100',align:'center'},
						 {title:'合同外占比',field:'allp',width:'100',align:'center',formatter: function(value,rec){
		                	  return parseInt(parseInt(rec.outNums)*100/(parseInt(rec.outNums)+parseInt(rec.inNums)))+"%";
		                 }}
				    ]],
				    url:"getServiceScopeEchartsByOwnerList.htm?requestServer.startDate="+$("#querySearchFrom2 #startDate").datebox("getValue")+"&requestServer.endDate="+$("#querySearchFrom2 #endDate").datebox("getValue")+"&requestServer.level="+$("#querySearchFrom2 #level").val(),
				    //toolbar:'#toolbar',
				    loadMsg : '数据装载中......',
		            singleSelect:true,//为true时只能选择单行
		            fitColumns:false,//允许表格自动缩放，以适应父容器
		            remoteSort : false,
		            frozenColumns : [ [ {
		                field : 'ck',
		                checkbox : true
		            } ] ],
		            pagination : false,//分页
		            rownumbers : true
		           /*  onDblClickRow:function(rowIndex, rowData){
				    	//详情
				    	openTab(rowData.eventState,rowData.eventId,rowData.requestId);
				    	//双击接单
				    	
				    } */
			   });
		 }
		
		 function querDate3(){
			 $('#dg3').datagrid({
				   pageSize : 50,//默认选择的分页是每页5行数据
		           pageList : [ 50, 80, 100 ],//可以选择的分页集合
		           nowrap : true,//设置为true，当数据长度超出列宽时将会自动截取
		           striped : true,//设置为true将交替显示行背景。
		           collapsible : false,//隐藏可折叠按钮
		           height:$(document.body).height()-105, 
				    columns:[[
				        {title:'项目名称',field:'itemName',width:'200',align:'center'},
		                {title:'工单数量',field:'all1',width:'100',align:'center',formatter: function(value,rec){
		                	  return parseInt(rec.inNums)+parseInt(rec.outNums);
		                 }},
		                {title:'合同内工单数量',field:'inNums',width:'100',align:'center'},
						{title:'合同外工单数量',field:'outNums',width:'100',align:'center'},
						 {title:'合同外占比',field:'allp',width:'100',align:'center',formatter: function(value,rec){
		                	  return parseInt(parseInt(rec.outNums)*100/(parseInt(rec.outNums)+parseInt(rec.inNums)))+"%";
		                 }}
				    ]],
				    url:"getServiceScopeEchartsByItemList.htm?requestServer.startDate="+$("#querySearchFrom3 #startDate").datebox("getValue")+"&requestServer.endDate="+
				    	$("#querySearchFrom3 #endDate").datebox("getValue")+"&requestServer.level="+$("#querySearchFrom3 #level").val()+"&requestServer.yearS="+$("#querySearchFrom3 #yearS").val()+
				    	"&requestServer.monthS="+$("#querySearchFrom3 #monthS").val()+"&requestServer.ownerCode="+$("#querySearchFrom3 #ownerCode").combogrid("getValue"),
				    //toolbar:'#toolbar',
				    loadMsg : '数据装载中......',
		            singleSelect:true,//为true时只能选择单行
		            fitColumns:false,//允许表格自动缩放，以适应父容器
		            remoteSort : false,
		            frozenColumns : [ [ {
		                field : 'ck',
		                checkbox : true
		            } ] ],
		            pagination : false,//分页
		            rownumbers : true
		           /*  onDblClickRow:function(rowIndex, rowData){
				    	//详情
				    	openTab(rowData.eventState,rowData.eventId,rowData.requestId);
				    	//双击接单
				    	
				    } */
			   });
		 }
		 
		 function querySearch(){
			 $.ajax({   
					url:'getServiceScopeEcharts.htm',
					data:$('#querySearchFrom').serialize(),// 你的formid
					type:"post",   
					dataType:'json',
					async:true,
					success:function(result){
						if(result.message.code=='200'){
							if(result.rows){
								var inNum=result.rows.contractInNum;var outNum=result.rows.contractOutNum;
								turnJs(inNum,outNum);
								$("#id1").text(parseInt(inNum)+parseInt(outNum));
								$("#id2").text(inNum);
								$("#id3").text(outNum);
								$("#id4").text(parseInt(parseInt(outNum)*100/(parseInt(outNum)+parseInt(inNum)))+"%");
							}
						}
					}  
				})
		 }
		
		 function querySearch2(){
			 $.ajax({   
					url:'getServiceScopeEchartsByOwner.htm',
					data:$('#querySearchFrom2').serialize(),// 你的formid
					type:"post",   
					dataType:'json',
					async:true,
					success:function(result){
						if(result.message.code=='200'){
							if(result.rows.serverNames){
								$("#main2").css("display","");
								turnJs2(result.rows.serverNames,result.rows.inNums2,result.rows.outNums2);
							}else{
								$("#main2").css("display","none");
							}
						}
					}  
				});
			 querDate2();
		 }
		
		 function querySearch3(){
			 $.ajax({   
					url:'getServiceScopeEchartsByItem.htm',
					data:$('#querySearchFrom3').serialize(),// 你的formid
					type:"post",   
					dataType:'json',
					async:true,
					success:function(result){
						if(result.message.code=='200'){
							if(result.rows.itemNames){
								$("#main3").css("display","");
								turnJs3(result.rows.itemNames,result.rows.inNums2,result.rows.outNums2);
							}else{
								$("#main3").css("display","none");
							}
						}
					}  
				});
			 querDate3();
		 }
		 
		function turnJs(contractInNum,contractOutNum){
			//使用
			require(
			    [
			        'echarts',
			        'echarts/chart/pie' // 使用柱状图就加载bar模块，按需加载
			    ],
			    function (ec) {
					// 基于准备好的dom，初始化echarts实例
			        var myChart = ec.init(document.getElementById('main'));
					option = {
					    title : {
					        text: '服务范围统计-全部',
					        //subtext: '纯属虚构',
					        x:'left'
					    },
					    tooltip : {
					        trigger: 'item',
					        formatter: "{a} <br/>{b} : {c} ({d}%)"
					    },
					    legend: {
					        orient: 'vertical',
					        left: 'left',
					        data: ['合同内工单数量','合同外工单数量']
					    },
					    series : [
							        {
							            name: '访问来源',
							            type: 'pie',
							            radius : '55%',
							            center: ['50%', '60%'],
							            data:[
							                {value:contractInNum, name:'合同内工单数量'},
							                {value:contractOutNum, name:'合同外工单数量'}
							            ],
							            itemStyle: {
							                emphasis: {
							                    shadowBlur: 10,
							                    shadowOffsetX: 0,
							                    shadowColor: 'rgba(0, 0, 0, 0.5)'
							                }
							            }
							        }
						    ]
						};
						// 使用刚指定的配置项和数据显示图表。
				        myChart.setOption(option);
				    }
				);
		}
		
		
		function turnJs2(a,b,c){
			//使用
			require(
			    [
			        'echarts',
			        'echarts/chart/bar' // 使用柱状图就加载bar模块，按需加载
			    ],
			    function (ec) {
					// 基于准备好的dom，初始化echarts实例
			        var myChart2 = ec.init(document.getElementById('main2'));
					option = {
					    tooltip : {
					        trigger: 'axis',
					        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
					            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
					        }
					    },
					    legend: {
					        data: ['合同内工单数量','合同外工单数量']
					    },
					    grid: {
					    	x: 250,
				            //x2: 200,
				            //y2: 150,
					        left: '3%',
					        right: '4%',
					        bottom: '3%',
					        containLabel: true
					    },
					    xAxis:  {
					        type: 'value'
					    },
					    yAxis: {
					        type: 'category',
					        axisLabel : {  
					        	clickable:true  
				            }, 
					        data: a.split(",")//['周一','周二','周三','周四','周五','周六','周日']
					    },
					    series: [
					        {
					            name: '合同内工单数量',
					            type: 'bar',
					            stack: '总量',
					            label: {
					                normal: {
					                    show: true,
					                    position: 'insideRight'
					                }
					            },
					            data: b.split(",")
					        },
					        {
					            name: '合同外工单数量',
					            type: 'bar',
					            stack: '总量',
					            label: {
					                normal: {
					                    show: true,
					                    position: 'insideRight'
					                }
					            },
					            data: c.split(",")
					        }
					    ]
					}
					// 使用刚指定的配置项和数据显示图表。
			        myChart2.setOption(option);
					function eConsole(param) {  
						if (typeof param.seriesIndex == 'undefined') {  
						return;  
						}  
						if (param.type == 'click') {
                           var k=(param.name).split("|")[0];
                           checkJs3(k);
						}  
					}  
					var ecConfig = require('echarts/config');
					myChart2.on(ecConfig.EVENT.CLICK, eConsole);
			    }
			    );
			};
		function checkJs3(c){
			$("#querySearchFrom3 #ownerCode").combogrid("setValue",c);
			querySearch3();
			// 获取选中的标签页面板（tab panel）和它的标签页（tab）对象
			$('#contractTab').tabs('select', "按项目");
		}
			
			
			
			
		function turnJs3(a,b,c){
			//使用
			require(
			    [
			        'echarts',
			        'echarts/chart/bar' // 使用柱状图就加载bar模块，按需加载
			    ],
			    function (ec) {
					// 基于准备好的dom，初始化echarts实例
			        var myChart3 = ec.init(document.getElementById('main3'));
					option = {
					    tooltip : {
					        trigger: 'axis',
					        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
					            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
					        }
					    },
					    legend: {
					        data: ['合同内工单数量','合同外工单数量']
					    },
					    grid: {
					    	x: 250,
					        left: '3%',
					        right: '4%',
					        bottom: '3%',
					        containLabel: true
					    },
					    xAxis:  {
					        type: 'value'
					    },
					    yAxis: {
					        type: 'category',
					        data: a.split(",")
					    },
					    series: [
					        {
					            name: '合同内工单数量',
					            type: 'bar',
					            stack: '总量',
					            label: {
					                normal: {
					                    show: true,
					                    position: 'insideRight'
					                }
					            },
					            data: b.split(",")
					        },
					        {
					            name: '合同外工单数量',
					            type: 'bar',
					            stack: '总量',
					            label: {
					                normal: {
					                    show: true,
					                    position: 'insideRight'
					                }
					            },
					            data: c.split(",")
					        }
					    ]
					}
					// 使用刚指定的配置项和数据显示图表。
			        myChart3.setOption(option);
			    }
			    );
			};
		
			
			
			
		function clearForm1(){
			$('#querySearchFrom')[0].reset();
		}
		function clearForm2(){
			$('#querySearchFrom2')[0].reset();
		}
		function clearForm3(){
			$('#querySearchFrom3')[0].reset();
		}
		
		
		
</script>