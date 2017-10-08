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
			<label class="ui-label">证监会行业板块名称:</label><input name="platename" class="easyui-box ui-text" style="width:100px;">
			<label class="ui-label">简介:</label><input name="plateintro" class="easyui-box ui-text" style="width:100px;">
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
     <div id="edit-win" class="easyui-dialog" title="证监会行业板块" data-options="closed:true,iconCls:'icon-save',modal:true" style="width:400px;height:380px;">  
     	<form id="editForm" class="ui-form" method="post">  
     		 <input class="hidden" name="id">
     		 <div class="ui-edit">
		     	   <div class="ftitle">证监会行业板块</div>
					<div class="fitem">
						<label>行业板块名称:</label>
						<input name="platename" type="text" maxlength="50" class="easyui-validatebox" data-options="required:true" style="width:250px;" missingMessage="必填">
					</div>
					<div class="fitem">
						<label>简介:</label>
						<textarea rows=2 name="plateintro" maxlength="100" class="easyui-validatebox" style="width:250px;"></textarea>
					</div>
					<div class="fitem">
						<label>父ID:</label>
						<input name="pid" type="text" maxlength="" class="easyui-validatebox" data-options="" missingMessage="父ID">
					</div>
  			</div>
     	</form>
  	 </div>
  	 <script type="text/javascript" src="<%=basePath%>/view/stocks/company/page-tBusinessPlate.js"></script>
  </body>
</html>
