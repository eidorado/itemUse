<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <%@include file="/view/resource.jsp" %>
  </head>
  <body class="easyui-layout">
 	 <!-- Search panel start -->
 	 <div class="ui-search-panel" region="north" style="height: 80px;" title="过滤条件" data-options="striped: true,collapsible:false,iconCls:'icon-search',border:false" >  
 	 <form id="searchForm">
        <p class="ui-fields">
			<label class="ui-label">新闻标题:</label><input name="newstitle" class="easyui-box ui-text" style="width:100px;">
			<label class="ui-label">新闻内容:</label><input name="newscontent" class="easyui-box ui-text" style="width:100px;">
	    </p>
	    <a href="#" id="btn-search" class="easyui-linkbutton" iconCls="icon-search">查询</a>
      </form>  
     </div> 
     <!--  Search panel end -->

     <!-- Data List -->
     <div region="center" border="false" >
     <table id="data-list"></table>
	 </div>
	 
     <!-- Edit Win&Form -->
     <div id="edit-win" class="easyui-dialog" title="Basic window" data-options="closed:true,iconCls:'icon-save',modal:true" style="width:400px;height:380px;">  
     	<form id="editForm" class="ui-form" method="post">  
     		 <input class="hidden" name="id">
     		 <div class="ui-edit">
		     	   <div class="ftitle">股市新闻消息</div>
					<div class="fitem">
						<label>新闻标题</label>
						<input name="newstitle" type="text" maxlength="100" class="easyui-validatebox" data-options="" missingMessage="请填写新闻标题">
					</div>
					<div class="fitem">
						<label>新闻内容</label>
						<input name="newscontent" type="text" maxlength="65535" class="easyui-validatebox" data-options="" missingMessage="请填写新闻内容">
					</div>
					<div class="fitem">
						<label>行业ID集</label>
						<input name="bpids" type="text" maxlength="50" class="easyui-validatebox" data-options="" missingMessage="请填写行业ID集">
					</div>
					<div class="fitem">
						<label>行业名集</label>
						<input name="bpnames" type="text" maxlength="100" class="easyui-validatebox" data-options="" missingMessage="请填写行业名集">
					</div>
					<div class="fitem">
						<label>概念ID集</label>
						<input name="cpids" type="text" maxlength="50" class="easyui-validatebox" data-options="" missingMessage="请填写概念ID集">
					</div>
					<div class="fitem">
						<label>概念名集</label>
						<input name="cpnames" type="text" maxlength="100" class="easyui-validatebox" data-options="" missingMessage="请填写概念名集">
					</div>
					<div class="fitem">
						<label>地域ID集</label>
						<input name="rpids" type="text" maxlength="50" class="easyui-validatebox" data-options="" missingMessage="请填写地域ID集">
					</div>
					<div class="fitem">
						<label>地域名集</label>
						<input name="rpnames" type="text" maxlength="100" class="easyui-validatebox" data-options="" missingMessage="请填写地域名集">
					</div>
					<div class="fitem">
						<label>创建时间</label>
						<input name="createtime" type="text" maxlength="" class="easyui-datetimebox" data-options="" missingMessage="请填写创建时间">
					</div>
					<div class="fitem">
						<label>发布时间</label>
						<input name="publishtime" type="text" maxlength="" class="easyui-datetimebox" data-options="" missingMessage="请填写发布时间">
					</div>
					<div class="fitem">
						<label>发布者</label>
						<input name="publisher" type="text" maxlength="50" class="easyui-validatebox" data-options="" missingMessage="请填写发布者">
					</div>
					<div class="fitem">
						<label>开始时间</label>
						<input name="starttime" type="text" maxlength="" class="easyui-datetimebox" data-options="" missingMessage="请填写开始时间">
					</div>
					<div class="fitem">
						<label>结束时间</label>
						<input name="endtime" type="text" maxlength="" class="easyui-datetimebox" data-options="" missingMessage="请填写结束时间">
					</div>
					<div class="fitem">
						<label>相关股名集</label>
						<input name="gnames" type="text" maxlength="200" class="easyui-validatebox" data-options="" missingMessage="请填写相关股名集">
					</div>
					<div class="fitem">
						<label>相关股CODE集</label>
						<input name="gcodes" type="text" maxlength="200" class="easyui-validatebox" data-options="" missingMessage="请填写相关股CODE集">
					</div>
					<div class="fitem">
						<label>重要程度，默认0，依次上升1-9</label>
						<input name="important" type="text" maxlength="2" class="easyui-validatebox" data-options="" missingMessage="请填写重要程度，默认0，依次上升1-9">
					</div>
					<div class="fitem">
						<label>消息类型，0证券要闻，1公司要闻，2名家看市（热门博客），3板块个股，4实时解盘，5证券评论,6独家爆料，7行情要闻，8个股掘金，9精选问答，10主力-基金，11公司-行业，12宏观分析，13策略研究，14股吧精选，15个股传闻</label>
						<input name="newstype" type="text" maxlength="4" class="easyui-validatebox" data-options="" missingMessage="请填写消息类型，0证券要闻，1公司要闻，2名家看市（热门博客），3板块个股，4实时解盘，5证券评论,6独家爆料，7行情要闻，8个股掘金，9精选问答，10主力-基金，11公司-行业，12宏观分析，13策略研究，14股吧精选，15个股传闻">
					</div>
  			</div>
     	</form>
  	 </div>
  	 <script type="text/javascript" src="<%=basePath%>/view/stocks/company/page-tNews.js"></script>
  </body>
</html>
