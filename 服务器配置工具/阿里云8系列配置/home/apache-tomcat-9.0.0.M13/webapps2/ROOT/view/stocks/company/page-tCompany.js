$package('jeecg.tCompany');
jeecg.tCompany = function(){
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
  				title:'公司信息',
	   			url:'dataList.do',
	   			columns:[[
					{field:'id',checkbox:true},
					{field:'操作',title:'操作',align:'center',sortable:true,
						formatter:function(value,row,index){
							var gc=row.gname+":"+row.gcode;
							var re="";
							re="<a href='#' onclick=changeState("+row.state+","+row.id+",'"+gc+"')>状态</a>";
							re+="&emsp;<a href='#' onclick=seeEcharts('"+row.gcode+"','"+row.gname+"',"+row.state+","+row.id+")>线图</a>";
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
							}else if(row.state=='4'){
								str="<font color='#408080'>"+row.gname+"</font>";
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
					{field:'cname',title:'公司名称',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.cname;
							}
						},
					{field:'instockdate',title:'上市日期',align:'center',sortable:true,
							formatter:function(value,row,index){
								return validationDate(row.instockdate);
							}
						},
					{field:'startprice',title:'发行价格',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.startprice;
							}
						},
					{field:'builddate',title:'成立日期',align:'center',sortable:true,
							formatter:function(value,row,index){
								return validationDate(row.builddate);
							}
						},
					{field:'registermoney',title:'注册资本（百万元）',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.registermoney;
							}
						},
					{field:'corg',title:'组织形式',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.corg;
							}
						},
					{field:'cweb',title:'公司网址',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.cweb;
							}
						},
					/*{field:'cnewsweb',title:'信息披露网址',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.cnewsweb;
							}
						},*/
					{field:'province',title:'省-市',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.province+"-"+row.city;
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
	jeecg.tCompany.init();
});