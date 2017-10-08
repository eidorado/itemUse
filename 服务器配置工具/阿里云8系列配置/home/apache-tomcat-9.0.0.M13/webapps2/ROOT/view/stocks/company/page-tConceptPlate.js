$package('jeecg.tConceptPlate');
jeecg.tConceptPlate = function(){
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
  				title:'概念板块',
	   			url:'dataList.do',
	   			columns:[[
					{field:'id',checkbox:true},
					{field:'platename',title:'概念板块名称',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.platename;
							}
						},
					{field:'plateintro',title:'简介',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.plateintro;
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
	jeecg.tConceptPlate.init();
});