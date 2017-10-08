$package('jeecg.tDayData');
jeecg.tDayData = function(){
	var _box = null;
	var _this = {
		config:{
			event:{
				add:function(){
					$('#typeIds_combobox').combobox('reload');
					_box.handler.add();
				},
				edit:function(){
					$('#typeIds_combobox').combobox('reload');
					_box.handler.edit();
				}
			},
  			dataGrid:{
  				title:'日K数据',
	   			url:'dataList.do',
	   			columns:[[
					{field:'操作',title:'操作',align:'center',sortable:true,
						formatter:function(value,row,index){
							var gc=row.gname+":"+row.gcode;
							var re="";
							re="<a href='#' onclick=changeState('"+row.gcode+"','"+gc+"')>状态</a>";
							re+="&emsp;<a href='#' onclick=seeEcharts('"+row.gcode+"','"+row.gname+"',"+row.circulatemoney+","+row.ratio+","+row.lyr+","+row.ttm+","+row.swing+")>线图</a>";
							return re;
						}
					},
					{field:'gname',title:'股票名称',align:'center',sortable:true,
							formatter:function(value,row,index){
								var e=row.gname;
								if(row.increase>0){
									e="<font color='red'>"+row.gname+"</font>";
								}else if(row.increase<0){
									e="<font color='green'>"+row.gname+"</font>";
								}
								return e;
							}
						},
					{field:'gcode',title:'股票代码',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.gcode;
							}
						},
					{field:'increper',title:'涨跌%',align:'center',sortable:true,
							formatter:function(value,row,index){
								var e=row.increper;
								if(row.increase>0){
									e="<font color='red'>"+row.increper+"</font>";
								}else if(row.increase<0){
									e="<font color='green'>"+row.increper+"</font>";
								}
								return e;
							}
						},
					{field:'increase',title:'涨跌额',align:'center',sortable:true,
							formatter:function(value,row,index){
								var e=row.increase;
								if(row.increase>0){
									e="<font color='red'>"+row.increase+"</font>";
								}else if(row.increase<0){
									e="<font color='green'>"+row.increase+"</font>";
								}
								return e;
							}
						},
					{field:'todaystartpri',title:'今日开盘价',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.todaystartpri;
							}
						},
					{field:'yestodendpri',title:'昨日收盘价',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.yestodendpri;
							}
						},
					{field:'nowpri',title:'当前价格',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.nowpri;
							}
						},
					{field:'todaymax',title:'今日最高价',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.todaymax;
							}
						},
					{field:'todaymin',title:'今日最低价',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.todaymin;
							}
						},
					{field:'tranumber',title:'成交量/手',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.tranumber;
							}
						},
					{field:'traamount',title:'成交金额/万',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.traamount;
							}
						},
					{field:'circulatemoney',title:'流通市值/亿',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.circulatemoney/10;
						}
					},
					{field:'ratio',title:'流通占比%',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.ratio;
						}
					},
					{field:'lyr',title:'市净率',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.lyr;
						}
					},
					{field:'ttm',title:'市盈率TTM',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.ttm;
						}
					},
					{field:'trate',title:'换手率%',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.trate;
						}
					},
					{field:'swing',title:'振幅%',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.swing;
						}
					},
					{field:'date',title:'日期',align:'center',sortable:true,
							formatter:function(value,row,index){
								return validationDate(row.date);
							}
						},
					{field:'gcodenum',title:'条数',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.gcodenum;
						}
					},
					]]
			}
		},
		init:function(){
			_box = new YDataGrid(_this.config); 
			_box.init();
		}
	}
	return _this;
}();

$(function(){
	jeecg.tDayData.init();
});