$package('jeecg.tSearchs');
jeecg.tSearchs = function(){
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
  				title:'查询条件表',
	   			url:'dataList.do',
	   			columns:[[
					{field:'id',checkbox:true},
					{field:'操作',title:'操作',align:'center',sortable:true,
						formatter:function(value,row,index){
							var re="";
							re="<a href='#' onclick=addWin(1,"+row.id+","+(row.winnum+1)+","+row.defeatnum+",'"+row.searchtitle+"')>+成功</a>";
							re+="&emsp;<a href='#' onclick=addWin(2,"+row.id+","+row.winnum+","+(row.defeatnum+1)+",'"+row.searchtitle+"')>+失败</a>";
							return re;
						}
					},
					{field:'searchtitle',title:'查询标题',align:'center',sortable:true,
							formatter:function(value,row,index){
								var re=row.searchtitle;
								if(row.useflag=='1'){  //正在使用
									re="<font color='red'>"+re+"</font>";
								}
								return re;
							}
					},
					{field:'typeflag',title:'查询类别',align:'center',sortable:true,
						formatter:function(value,row,index){
							var tname="";
							if(row.typeflag=='1'){
								tname="大盘";
							}else if(row.typeflag=='2'){
								tname="个股";
							}
							return tname;
						}
					},
					{field:'gcode',title:'股票代码',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.gcode;
						}
					},
					{field:'gtype',title:'股票类型',align:'center',sortable:true,
						formatter:function(value,row,index){
								var gtypename="";
								if(row.gtype=='1'){
									gtypename="沪股";
								}else if(row.gtype=='2'){
									gtypename="深股";
								}else if(row.gtype=='12'){
									gtypename="沪深股";
								}else if(row.gtype=='3'){
									gtypename="创业股";
								}
								return gtypename;
						}
					},
					{field:'increpermin',title:'涨跌MIN%',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.increpermin;
							}
						},
					{field:'increpermax',title:'涨跌MAX%',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.increpermax;
							}
						},
					{field:'increperorder',title:'涨跌排序方式',align:'center',sortable:true,
							formatter:function(value,row,index){
								var ordername="";
								if(row.increperorder=='1'){
									ordername="升序";
								}else if(row.increperorder=='2'){
									ordername="降序";
								}
								return ordername;
							}
						},
					{field:'nowprimin',title:'当前价格MIN%',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.nowprimin;
						}
					},
					{field:'nowprimax',title:'当前价格MAX%',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.nowprimax;
						}
					},
					{field:'nowpriorder',title:'当前价格排序方式',align:'center',sortable:true,
						formatter:function(value,row,index){
							var ordername="";
							if(row.nowpriorder=='1'){
								ordername="升序";
							}else if(row.nowpriorder=='2'){
								ordername="降序";
							}
							return ordername;
						}
					},
					{field:'tratemin',title:'换手率MIN%',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.tratemin;
							}
						},
					{field:'tratemax',title:'换手率MAX%',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.tratemax;
							}
						},
					{field:'trateorder',title:'换手率排序方式',align:'center',sortable:true,
							formatter:function(value,row,index){
								var ordername="";
								if(row.trateorder=='1'){
									ordername="升序";
								}else if(row.trateorder=='2'){
									ordername="降序";
								}
								return ordername;
							}
						},
					{field:'swingmin',title:'振幅MIN%',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.swingmin;
							}
						},
					{field:'swingmax',title:'振幅MAX%',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.swingmax;
							}
						},
					{field:'swingorder',title:'振幅排序方式',align:'center',sortable:true,
							formatter:function(value,row,index){
								var ordername="";
								if(row.swingorder=='1'){
									ordername="升序";
								}else if(row.swingorder=='2'){
									ordername="降序";
								}
								return ordername;
							}
						},
					{field:'tranumbermin',title:'成交量MIN',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.tranumbermin;
							}
						},
					{field:'tranumbermax',title:'成交量MAX',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.tranumbermax;
							}
						},
					{field:'tranumberorder',title:'成交量排序方式',align:'center',sortable:true,
							formatter:function(value,row,index){
								var ordername="";
								if(row.tranumberorder=='1'){
									ordername="升序";
								}else if(row.tranumberorder=='2'){
									ordername="降序";
								}
								return ordername;
							}
						},
					{field:'traamountmin',title:'成交金额/万MIN',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.traamountmin;
							}
						},
					{field:'traamountmax',title:'成交金额/万MAX',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.traamountmax;
							}
						},
					{field:'traamountorder',title:'成交金额排序方式',align:'center',sortable:true,
							formatter:function(value,row,index){
								var ordername="";
								if(row.traamountorder=='1'){
									ordername="升序";
								}else if(row.traamountorder=='2'){
									ordername="降序";
								}
								return ordername;
							}
						},
					{field:'datemin',title:'日期MIN',align:'center',sortable:true,
							formatter:function(value,row,index){
								return validationDate(row.datemin);
							}
						},
					{field:'datemax',title:'日期MAX',align:'center',sortable:true,
							formatter:function(value,row,index){
								return validationDate(row.datemax);
							}
						},
					{field:'dateorder',title:'日期排序方式',align:'center',sortable:true,
							formatter:function(value,row,index){
								var ordername="";
								if(row.dateorder=='1'){
									ordername="升序";
								}else if(row.dateorder=='2'){
									ordername="降序";
								}
								return ordername;
							}
						},
					{field:'datenum',title:'最近几天数据',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.datenum;
							}
						},
					{field:'difforder',title:'DIFF升降',align:'center',sortable:true,
							formatter:function(value,row,index){
								var ordername="";
								if(row.difforder=='1'){
									ordername="升";
								}else if(row.difforder=='2'){
									ordername="降";
								}
								return ordername;
							}
						},
					{field:'deaorder',title:'DEA升降',align:'center',sortable:true,
							formatter:function(value,row,index){
								var ordername="";
								if(row.deaorder=='1'){
									ordername="升";
								}else if(row.deaorder=='2'){
									ordername="降";
								}
								return ordername;
							}
						},
					{field:'macdorder',title:'MACD升降',align:'center',sortable:true,
							formatter:function(value,row,index){
								var ordername="";
								if(row.macdorder=='1'){
									ordername="升";
								}else if(row.macdorder=='2'){
									ordername="降";
								}
								return ordername;
							}
						},
					{field:'macdmin',title:'MACD MIN',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.macdmin;
						}
					},
					{field:'macdmax',title:'MACD MAX',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.macdmax;
						}
					},
					{field:'circulatemoney',title:'流通市值/千万《',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.circulatemoney;
							}
						},
					{field:'ratio',title:'流通占比%》',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.ratio;
							}
						},
					{field:'lyr',title:'市净率《',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.lyr;
							}
						},
					{field:'ttm',title:'市盈率TTM《',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.ttm;
							}
					},
					{field:'stateflag',title:'本查询是否启用',align:'center',sortable:true,
						formatter:function(value,row,index){
							var re="<font color='#4A4AFF'>是</font>";
							if(row.stateflag=='2'){
								re="<font color='#B87070'>否</font>";
							}
							return re;
						}
					},
					{field:'winnum',title:'成功次数',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.winnum;
						}
					},
					{field:'defeatnum',title:'失败次数',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.defeatnum;
						}
					},
					{field:'winper',title:'成功率%',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.winper;
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
	jeecg.tSearchs.init();
});

