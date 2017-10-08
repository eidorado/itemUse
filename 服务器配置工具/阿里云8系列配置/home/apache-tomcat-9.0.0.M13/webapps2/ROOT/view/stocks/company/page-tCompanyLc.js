$package('jeecg.tCompanyLc');
jeecg.tCompanyLc = function(){
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
  				title:'公司小幅变动信息',
	   			url:'dataList.do',
	   			columns:[[
					{field:'id',checkbox:true},
					{field:'操作',title:'操作',align:'center',sortable:true,
						formatter:function(value,row,index){
							var gc=row.gname+":"+row.gcode;
							var re="";
							re="<a href='#' onclick=changeState("+row.state+","+row.id+",'"+gc+"')>状态</a>";
							re+="&emsp;<a href='#' onclick=seeDeal('"+row.gcode+"')>交易记录</a>";
							re+="&emsp;<a href='#' onclick=seePic('"+row.gcode+"','"+row.gname+"')>查看线图</a>";
							return re;
						}
					},
					{field:'gname',title:'股票名称',align:'center',sortable:true,
							formatter:function(value,row,index){
								var str=row.gname;
								if(row.state=='1'){
									str="<font color='red'>"+row.gname+"</font>";
								}else if(row.state=='2'){
									str="<font color='#C6A300'>"+row.gname+"</font>";
								}else if(row.state=='3'){
									str="<font color='#AE57A4'>"+row.gname+"</font>";
								}else if(row.state=='7'){
									str="<font color='#CEFFCE'>"+row.gname+"</font>";
								}
								return str;
							}
						},
					{field:'gcode',title:'股票代码',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.gcode;
							}
						},
					{field:'totalmoney',title:'总市值(千万)',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.totalmoney;
							}
						},
					{field:'circulatemoney',title:'流通市值(千万)',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.circulatemoney;
							}
						},
					{field:'ratio',title:'流通占比',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.ratio+"%";
						}
					},
					{field:'lyr',title:'市净率(越小越好)',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.lyr;
							}
						},
					{field:'ttm',title:'市盈率TTM',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.ttm;
							}
						},
					{field:'bpname',title:'证监会行业名',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.bpname;
							}
						},
					{field:'cpnames',title:'概念板名称集',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.cpnames;
							}
						},
					{field:'province',title:'省份',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.province;
							}
					},
					{field:'city',title:'城市',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.city;
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
	jeecg.tCompanyLc.init();
});