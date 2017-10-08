$package('jeecg.tNews');
jeecg.tNews = function(){
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
  				title:'股市新闻消息',
	   			url:'dataList.do',
	   			columns:[[
					{field:'id',checkbox:true},
					{field:'newstitle',title:'新闻标题',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.newstitle;
							}
						},
					{field:'newscontent',title:'新闻内容',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.newscontent;
							}
						},
					{field:'bpids',title:'行业ID集',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.bpids;
							}
						},
					{field:'bpnames',title:'行业名集',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.bpnames;
							}
						},
					{field:'cpids',title:'概念ID集',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.cpids;
							}
						},
					{field:'cpnames',title:'概念名集',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.cpnames;
							}
						},
					{field:'rpids',title:'地域ID集',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.rpids;
							}
						},
					{field:'rpnames',title:'地域名集',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.rpnames;
							}
						},
					{field:'createtime',title:'创建时间',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.createtime;
							}
						},
					{field:'publishtime',title:'发布时间',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.publishtime;
							}
						},
					{field:'publisher',title:'发布者',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.publisher;
							}
						},
					{field:'starttime',title:'开始时间',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.starttime;
							}
						},
					{field:'endtime',title:'结束时间',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.endtime;
							}
						},
					{field:'gnames',title:'相关股名集',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.gnames;
							}
						},
					{field:'gcodes',title:'相关股CODE集',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.gcodes;
							}
						},
					{field:'important',title:'重要程度，默认0，依次上升1-9',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.important;
							}
						},
					{field:'newstype',title:'消息类型，0证券要闻，1公司要闻，2名家看市（热门博客），3板块个股，4实时解盘，5证券评论,6独家爆料，7行情要闻，8个股掘金，9精选问答，10主力-基金，11公司-行业，12宏观分析，13策略研究，14股吧精选，15个股传闻',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.newstype;
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
	jeecg.tNews.init();
});