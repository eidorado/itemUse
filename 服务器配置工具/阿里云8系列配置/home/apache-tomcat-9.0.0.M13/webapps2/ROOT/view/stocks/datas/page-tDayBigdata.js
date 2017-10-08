$package('jeecg.tDayBigdata');
jeecg.tDayBigdata = function(){
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
  				title:'大盘日K数据',
	   			url:'dataList.do',
	   			columns:[[
					{field:'gcode',title:'股票编号',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.gcode;
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
					{field:'tranumber',title:'成交量/万手',align:'center',sortable:true,
							formatter:function(value,row,index){
								return parseInt(row.tranumber/10000);
							}
						},
					{field:'traamount',title:'成交金额/亿',align:'center',sortable:true,
							formatter:function(value,row,index){
								return parseInt(row.traamount/10000);
							}
						},
					{field:'date',title:'日期',align:'center',sortable:true,
							formatter:function(value,row,index){
								return validationDate(row.date);
							}
						},
					{field:'ema12',title:'EMA12',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.ema12;
							}
						},
					{field:'ema26',title:'EMA26',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.ema26;
							}
						},
					{field:'diff',title:'DIFF',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.diff;
							}
						},
					{field:'dea',title:'DEA',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.dea;
							}
						},
					{field:'macd',title:'MACD',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.macd;
							}
						},
					{field:'swing',title:'振幅%',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.swing;
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
	jeecg.tDayBigdata.init();
});