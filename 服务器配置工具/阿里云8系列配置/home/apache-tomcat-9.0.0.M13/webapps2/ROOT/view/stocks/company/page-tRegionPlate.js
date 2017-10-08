$package('jeecg.tRegionPlate');
jeecg.tRegionPlate = function(){
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
  				title:'每日每分钟数据沪市A股',
	   			url:'dataList.do',
	   			columns:[[
					{field:'id',checkbox:true},
					{field:'idname',title:'id',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.id;
						}
					},
					{field:'aname',title:'名称',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.aname;
							}
						},
					{field:'pid',title:'父ID',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.pid;
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
	jeecg.tRegionPlate.init();
});