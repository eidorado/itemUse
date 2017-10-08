$package('jeecg.tBusinessPlate');
jeecg.tBusinessPlate = function(){
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
  				title:'证监会行业板块',
	   			url:'dataList.do',
	   			columns:[[
					{field:'id',checkbox:true},
					{field:'platename',title:'证监会行业板块名称',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.platename;
							}
						},
					{field:'plateintro',title:'简介',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.plateintro;
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
	jeecg.tBusinessPlate.init();
});