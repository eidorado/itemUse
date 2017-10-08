$package('jeecg.tBuyData');
jeecg.tBuyData = function(){
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
  				title:'购买数据',
	   			url:'dataList.do',
	   			columns:[[
					{field:'id',checkbox:true},
					{field:'gcode',title:'股票代码',align:'center',sortable:true,
							formatter:function(value,row,index){
								var str=row.gcode;
								if(row.state=='1'){
									str="<font color='red'>"+row.gcode+"</font>";
								}
								return str;
							}
						},
					{field:'gname',title:'股票名称',align:'center',sortable:true,
						formatter:function(value,row,index){
							var str=row.gname;
							if(row.state=='1'){
								str="<font color='red'>"+row.gname+"</font>";
							}
							return str;
						}
					},
					{field:'securitycompany',title:'证券公司',align:'center',sortable:true,
							formatter:function(value,row,index){
								var str="";
								if(row.securitycompany=='1'){
									str="财通证券";
								}
								return str;
							}
						},
					{field:'account',title:'账户',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.account;
							}
						},
					{field:'num',title:'购买数量/手(或为总手)',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.num;
							}
						},
					{field:'totalmoney',title:'购买总金额/元(有总金额或总次数查询则为次数)',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.totalmoney;
							}
						},
					{field:'sellmoney',title:'卖出总金额/元',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.sellmoney;
						}
					},
					{field:'gainmoney',title:'盈利/元(或为总盈利)',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.gainmoney;
							}
						},
					{field:'buydate',title:'购买时间',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.buydate;
							}
						},
					{field:'enddate',title:'结束时间',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.enddate;
						}
					},
					{field:'state',title:'购买状态',align:'center',sortable:true,
						formatter:function(value,row,index){
							if(row.state=='1'){
								return "<font color='red'>进行中</font>";
							}else{
								return "已结束";
							}
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
	jeecg.tBuyData.init();
});