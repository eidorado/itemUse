/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.0.M13
 * Generated at: 2017-01-25 21:41:43 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.view.stocks.datas;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import java.util.*;

public final class tSearchs_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(1);
    _jspx_dependants.put("/view/resource.jsp", Long.valueOf(1485375411000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("java.util");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n");
      out.write("<html>\r\n");
      out.write("  <head>\r\n");
      out.write("   ");
      out.write('\r');
      out.write('\n');

	String basePath = request.getScheme() + "://" +request.getServerName() + ":" + request.getServerPort() + request.getContextPath();
	String path=request.getContextPath();

      out.write("\r\n");
      out.write("<!-- 公共资源CSS,JS  -->\r\n");
      out.write("<!--Css -->\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.print(basePath);
      out.write("/js/jquery-easyui-1.3.2/themes/bootstrap/easyui.css\">\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.print(basePath);
      out.write("/js/jquery-easyui-1.3.2/themes/icon.css\">\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.print(basePath);
      out.write("/css/base.css\">\r\n");
      out.write("<!-- ** Javascript ** -->\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(basePath);
      out.write("/js/commons/jquery.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(basePath);
      out.write("/js/commons/jquery.form.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(basePath);
      out.write("/js/commons/package.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(basePath);
      out.write("/js/jquery-easyui-1.3.2/jquery.easyui.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(basePath);
      out.write("/js/commons/urls.js?v=11\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(basePath);
      out.write("/js/commons/base.js?v=11\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(basePath);
      out.write("/js/commons/YDataGrid.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(basePath);
      out.write("/js/jquery-easyui-1.3.2/locale/easyui-lang-zh_CN.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(basePath);
      out.write("/js/stock/turnDate.js\"></script>");
      out.write("\r\n");
      out.write("  <style type=\"text/css\">\r\n");
      out.write("\t   #Idiv1_table tr td{\r\n");
      out.write("\t   \t\twidth:200px;height:25px;\r\n");
      out.write("\t   }\r\n");
      out.write("   </style>\r\n");
      out.write("   <script type=\"text/javascript\">\r\n");
      out.write("   //page-tSearchs.js改变成功数等。。\r\n");
      out.write("   \tfunction addWin(a,b,c,d,e){\r\n");
      out.write("   \t\tvar wn=\"成功\";\r\n");
      out.write("   \t\tif(a=='2'){\r\n");
      out.write("   \t\t\twn=\"失败\";\r\n");
      out.write("   \t\t}\r\n");
      out.write("   \t\tif(confirm('是否对 '+e+' 查询条件增加一次 '+wn+' 操作?')) \r\n");
      out.write("\t     { \r\n");
      out.write("\t\t         $.ajax({\r\n");
      out.write("\t               cache: true,\r\n");
      out.write("\t               type: \"POST\",\r\n");
      out.write("\t               url:\"");
      out.print(path);
      out.write("/tSearchs/updateWin.do?id=\"+b+\"&winnum=\"+c+\"&defeatnum=\"+d,\r\n");
      out.write("\t               // data:$('#fm').serialize(),你的formid或者 { id: idIndex, name: nameIndex },//提交参数\r\n");
      out.write("\t               async: false,\r\n");
      out.write("\t              // dataType : \"json\",设置需要返回的数据类型\r\n");
      out.write("\t               error: function(request) {\r\n");
      out.write("\t                   alert(\"操作失败了！\");\r\n");
      out.write("\t               },\r\n");
      out.write("\t               //data没有指定json的话默认string\r\n");
      out.write("\t               success: function(data) {\r\n");
      out.write("\t               \t  if(data.success){\r\n");
      out.write("\t               \t \t jeecg.tSearchs.init();\r\n");
      out.write("\t               \t  }else{\r\n");
      out.write("\t               \t  \t alert(\"操作失败,刷新重试下！\");\r\n");
      out.write("\t               \t  }\r\n");
      out.write("\t               \t//var dataJson = eval(\"(\" + data + \")\");  \r\n");
      out.write("\t               }\r\n");
      out.write("\t  \t\t  });\r\n");
      out.write("\t         return true; \r\n");
      out.write("\t     }\r\n");
      out.write("\t     return false; \r\n");
      out.write("\t   \t}\r\n");
      out.write("   </script>\r\n");
      out.write("  </head>\r\n");
      out.write("  <body class=\"easyui-layout\">\r\n");
      out.write(" \t <!-- Search panel start -->\r\n");
      out.write(" \t <div class=\"ui-search-panel\" region=\"north\" style=\"height: 80px;\" title=\"过滤条件\" data-options=\"striped: true,collapsible:false,iconCls:'icon-search',border:false\" >  \r\n");
      out.write(" \t <form id=\"searchForm\">\r\n");
      out.write("        <p class=\"ui-fields\">\r\n");
      out.write("\t\t\t<label class=\"ui-label\">查询标题:</label><input name=\"searchtitle\" class=\"easyui-box ui-text\" style=\"width:100px;\">\r\n");
      out.write("\t\t\t<label class=\"ui-label\">查询类别:</label>\r\n");
      out.write("\t\t\t<select name=\"typeflag\" style=\"width:100px;\">\r\n");
      out.write("\t\t\t<option value=\"\"></option>\r\n");
      out.write("\t\t\t<option value=\"2\">个股</option>\r\n");
      out.write("\t\t\t<option value=\"1\">大盘</option>\r\n");
      out.write("\t\t\t</select>\r\n");
      out.write("\t\t\t<label class=\"ui-label\">是否正在用:</label>\r\n");
      out.write("\t\t\t<select name=\"useflag\" style=\"width:50px;\">\r\n");
      out.write("\t\t\t<option value=\"\"></option>\r\n");
      out.write("\t\t\t<option value=\"1\">是</option>\r\n");
      out.write("\t\t\t<option value=\"2\">否</option>\r\n");
      out.write("\t\t\t</select>\r\n");
      out.write("\t\t\t<label class=\"ui-label\">是否启用:</label>\r\n");
      out.write("\t\t\t<select name=\"stateflag\" style=\"width:50px;\">\r\n");
      out.write("\t\t\t<option value=\"\"></option>\r\n");
      out.write("\t\t\t<option value=\"1\">是</option>\r\n");
      out.write("\t\t\t<option value=\"2\">否</option>\r\n");
      out.write("\t\t\t</select>\r\n");
      out.write("\t\t\t<label class=\"ui-label\">成功次数》:</label><input name=\"winnum\" class=\"easyui-box ui-text\" style=\"width:50px;\">\r\n");
      out.write("\t\t\t<label class=\"ui-label\">成功率》:</label><input name=\"winper\" class=\"easyui-box ui-text\" style=\"width:50px;\">%\r\n");
      out.write("\t    </p>\r\n");
      out.write("\t    <a href=\"#\" id=\"btn-search\" class=\"easyui-linkbutton\" iconCls=\"icon-search\">查询</a>\r\n");
      out.write("      </form>  \r\n");
      out.write("     </div> \r\n");
      out.write("     <!--  Search panel end -->\r\n");
      out.write("\r\n");
      out.write("     <!-- Data List -->\r\n");
      out.write("     <div region=\"center\" border=\"false\" >\r\n");
      out.write("     <table id=\"data-list\"></table>\r\n");
      out.write("\t </div>\r\n");
      out.write("\t \r\n");
      out.write("     <!-- Edit Win&Form -->\r\n");
      out.write("     <div id=\"edit-win\" class=\"easyui-dialog\" title=\"查询条件\" data-options=\"closed:true,iconCls:'icon-save',modal:true\" style=\"width:840px;height:450px;\">  \r\n");
      out.write("     \t<form id=\"editForm\" class=\"ui-form\" method=\"post\">  \r\n");
      out.write("     \t\t <input class=\"hidden\" name=\"id\">\r\n");
      out.write("     \t\t <table id=\"Idiv1_table\">\r\n");
      out.write("     \t\t \t  <tr>\r\n");
      out.write("     \t\t \t  \t<td colspan=\"2\">\r\n");
      out.write("     \t\t \t  \t<label>查询标题:</label>\r\n");
      out.write("     \t\t \t  \t<input name=\"searchtitle\" type=\"text\" maxlength=\"50\" class=\"easyui-validatebox\" data-options=\"required:true\" missingMessage=\"请填写查询标题\" style=\"width:220px;\">\r\n");
      out.write("     \t\t \t  \t</td>\r\n");
      out.write("     \t\t \t  \t<td colspan=\"2\">\r\n");
      out.write("     \t\t \t  \t<label class=\"ui-label\">查询类别:</label>\r\n");
      out.write("\t     \t\t \t  \t<select name=\"typeflag\" >\r\n");
      out.write("\t\t\t\t\t\t<!-- <option value=\"\"></option> -->\r\n");
      out.write("\t\t\t\t\t\t<option value=\"2\">个股</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"1\">大盘</option>\r\n");
      out.write("\t\t\t\t\t\t</select>\r\n");
      out.write("     \t\t \t  \t</td>\r\n");
      out.write("     \t\t \t  </tr>\r\n");
      out.write("\t\t\t\t  <tr>\r\n");
      out.write("\t\t\t\t  \t<td><label class=\"ui-label\">涨幅:</label><input name=\"increpermin\"  maxlength=\"7\" class=\"easyui-box ui-text\" style=\"width:50px;\">%\r\n");
      out.write("\t\t\t\t  \t—&nbsp;<input name=\"increpermax\" maxlength=\"7\" class=\"easyui-box ui-text\" style=\"width:50px;\">%\r\n");
      out.write("\t\t\t\t  \t</td>\r\n");
      out.write("\t\t\t\t  \t<td><label class=\"ui-label\">涨幅排序:</label>\r\n");
      out.write("\t\t\t\t\t\t<select name=\"increperorder\" >\r\n");
      out.write("\t\t\t\t\t\t<option value=\"\"></option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"1\">升序</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"2\">降序</option>\r\n");
      out.write("\t\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t  \t<td><label class=\"ui-label\">换手率:</label><input name=\"tratemin\" maxlength=\"5\" class=\"easyui-box ui-text\" style=\"width:50px;\">%\r\n");
      out.write("\t\t\t\t  \t—&nbsp;<input name=\"tratemax\" maxlength=\"5\" class=\"easyui-box ui-text\" style=\"width:50px;\">%</td>\r\n");
      out.write("\t\t\t\t  \t<td><label class=\"ui-label\">换手率排序:</label>\r\n");
      out.write("\t\t\t\t\t\t<select name=\"trateorder\" >\r\n");
      out.write("\t\t\t\t\t\t<option value=\"\"></option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"1\">升序</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"2\">降序</option>\r\n");
      out.write("\t\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t  </tr>\r\n");
      out.write("\t\t\t\t  <tr>\r\n");
      out.write("\t\t\t\t  \t<td><label class=\"ui-label\">振幅:</label><input name=\"swingmin\" maxlength=\"5\" class=\"easyui-box ui-text\" style=\"width:50px;\">%\r\n");
      out.write("\t\t\t\t  \t—&nbsp;<input name=\"swingmax\" maxlength=\"5\" class=\"easyui-box ui-text\" style=\"width:50px;\">%</td>\r\n");
      out.write("\t\t\t\t  \t<td><label class=\"ui-label\">振幅排序:</label>\r\n");
      out.write("\t\t\t\t\t\t<select name=\"swingorder\" >\r\n");
      out.write("\t\t\t\t\t\t<option value=\"\"></option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"1\">升序</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"2\">降序</option>\r\n");
      out.write("\t\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t  \t<td><label class=\"ui-label\">流通市值《</label><input name=\"circulatemoney\" maxlength=\"8\" class=\"easyui-box ui-text\" style=\"width:50px;\">千万</td>\r\n");
      out.write("\t\t\t\t  \t<td><label class=\"ui-label\">流通占比》</label><input name=\"ratio\" maxlength=\"3\" class=\"easyui-box ui-text\" style=\"width:50px;\">%</td>\r\n");
      out.write("\t\t\t\t  </tr>\r\n");
      out.write("\t\t\t\t  <tr>\r\n");
      out.write("\t\t\t\t  \t<td><label class=\"ui-label\">成交量/手:</label><input name=\"tranumbermin\"  maxlength=\"20\" class=\"easyui-box ui-text\" style=\"width:50px;\" value=\"2000\">\r\n");
      out.write("\t\t\t\t  \t—&nbsp;<input name=\"tranumbermax\" maxlength=\"20\" class=\"easyui-box ui-text\" style=\"width:50px;\">\r\n");
      out.write("\t\t\t\t  \t</td>\r\n");
      out.write("\t\t\t\t  \t<td><label class=\"ui-label\">成交量排序:</label>\r\n");
      out.write("\t\t\t\t\t\t<select name=\"tranumberorder\" >\r\n");
      out.write("\t\t\t\t\t\t<option value=\"\"></option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"1\">升序</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"2\">降序</option>\r\n");
      out.write("\t\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t  \t<td><label class=\"ui-label\">成交金额/万:</label><input name=\"traamountmin\" maxlength=\"20\" class=\"easyui-box ui-text\" style=\"width:50px;\">\r\n");
      out.write("\t\t\t\t  \t—&nbsp;<input name=\"traamountmax\" maxlength=\"20\" class=\"easyui-box ui-text\" style=\"width:50px;\"></td>\r\n");
      out.write("\t\t\t\t  \t<td><label class=\"ui-label\">成交金额排序:</label>\r\n");
      out.write("\t\t\t\t\t\t<select name=\"traamountorder\" >\r\n");
      out.write("\t\t\t\t\t\t<option value=\"\"></option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"1\">升序</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"2\">降序</option>\r\n");
      out.write("\t\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t  </tr>\r\n");
      out.write("\t\t\t\t  <tr>\r\n");
      out.write("\t\t\t\t  \t<td><label class=\"ui-label\">diff连续升降:</label>\r\n");
      out.write("\t\t\t\t\t\t<select name=\"difforder\" >\r\n");
      out.write("\t\t\t\t\t\t<option value=\"\"></option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"1\">升</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"2\">降</option>\r\n");
      out.write("\t\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t  \t<td><label class=\"ui-label\">dea连续升降:</label>\r\n");
      out.write("\t\t\t\t\t\t<select name=\"deaorder\" >\r\n");
      out.write("\t\t\t\t\t\t<option value=\"\"></option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"1\">升</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"2\">降</option>\r\n");
      out.write("\t\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t  \t<td><label class=\"ui-label\">macd连续升降:</label>\r\n");
      out.write("\t\t\t\t\t\t<select name=\"macdorder\" >\r\n");
      out.write("\t\t\t\t\t\t<option value=\"\"></option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"1\">升</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"2\">降</option>\r\n");
      out.write("\t\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td><label class=\"ui-label\">最近几天数据:</label><input name=\"datenum\" maxlength=\"5\" class=\"easyui-box ui-text\" style=\"width:50px;\">天</td>\r\n");
      out.write("\t\t\t\t  </tr>\r\n");
      out.write("\t\t\t\t  <tr>\r\n");
      out.write("\t\t\t\t  \t<td colspan=\"2\"><label class=\"ui-label\">日期:</label><input name=\"datemin\"   class=\"easyui-datetimebox\" style=\"width:100px;\">\r\n");
      out.write("\t\t\t\t  \t—&nbsp;<input name=\"datemax\" class=\"easyui-datetimebox\" style=\"width:100px;\">\r\n");
      out.write("\t\t\t\t  \t</td>\r\n");
      out.write("\t\t\t\t  \t<td><label class=\"ui-label\">日期排序:</label>\r\n");
      out.write("\t\t\t\t\t\t<select name=\"dateorder\" >\r\n");
      out.write("\t\t\t\t\t\t<option value=\"\"></option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"1\">升序</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"2\">降序</option>\r\n");
      out.write("\t\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t  \t<td><label class=\"ui-label\">市净率《</label><input name=\"lyr\" maxlength=\"10\" class=\"easyui-box ui-text\" style=\"width:50px;\"></td>\r\n");
      out.write("\t\t\t\t  </tr>\r\n");
      out.write("\t\t\t\t  <tr>\r\n");
      out.write("\t\t\t\t  \t<td><label class=\"ui-label\">市盈率TTM《</label><input name=\"ttm\" maxlength=\"10\" class=\"easyui-box ui-text\" style=\"width:50px;\"></td>\r\n");
      out.write("\t\t\t\t  \t<td>\r\n");
      out.write("\t\t\t\t  \t<label class=\"ui-label\">股票类型:</label>\r\n");
      out.write("\t\t\t\t\t\t<select name=\"gtype\" >\r\n");
      out.write("\t\t\t\t\t\t<option value=\"\"></option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"12\">沪深股</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"1\">沪股</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"2\">深股</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"3\">创业板</option>\r\n");
      out.write("\t\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t  \t<td><label class=\"ui-label\">股票代码</label><input name=\"gcode\" maxlength=\"10\" class=\"easyui-box ui-text\" style=\"width:80px;\"></td>\r\n");
      out.write("\t\t\t\t  \t<td></td>\r\n");
      out.write("\t\t\t\t  </tr>\r\n");
      out.write("\t\t\t\t  <tr><td colspan=\"4\" bgcolor=\"blue\" style=\"height:2px;\"></td></tr>\r\n");
      out.write("\t\t\t\t  <tr><td colspan=\"4\"><font color=\"red\">以下非查询条件,是本条数据的状态描述</font></td></tr>\r\n");
      out.write("\t\t\t\t  <tr>\r\n");
      out.write("\t\t\t\t  \t<td><label class=\"ui-label\">这个查询条件成功次数:</label><input name=\"winnum\" maxlength=\"10\" class=\"easyui-box ui-text\" style=\"width:50px;\" disabled=\"disabled\"></td>\r\n");
      out.write("\t\t\t\t  \t<td><label class=\"ui-label\">失败次数:</label><input name=\"defeatnum\" maxlength=\"10\" class=\"easyui-box ui-text\" style=\"width:50px;\" disabled=\"disabled\"></td>\r\n");
      out.write("\t\t\t\t  \t<td><label class=\"ui-label\">成功率:</label><input name=\"winper\" maxlength=\"10\" class=\"easyui-box ui-text\" style=\"width:50px;\" disabled=\"disabled\">%</td>\r\n");
      out.write("\t\t\t\t  \t<td></td>\r\n");
      out.write("\t\t\t\t  </tr>\r\n");
      out.write("\t\t\t\t  <tr>\r\n");
      out.write("\t\t\t\t  \t<td>\r\n");
      out.write("\t\t\t\t  \t<label class=\"ui-label\">是否启用:</label>\r\n");
      out.write("\t\t\t\t\t\t<select name=\"stateflag\" >\r\n");
      out.write("\t\t\t\t\t\t<option value=\"1\">是</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"2\">否</option>\r\n");
      out.write("\t\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t  \t<td>\r\n");
      out.write("\t\t\t\t  \t<label class=\"ui-label\">是否正在用:</label>\r\n");
      out.write("\t\t\t\t\t\t<select name=\"useflag\" >\r\n");
      out.write("\t\t\t\t\t\t<option value=\"2\">否</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"1\">是</option>\r\n");
      out.write("\t\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t  \t<td colspan=\"2\"><label class=\"ui-label\">在用股票集\",\"隔开:</label><input name=\"usecodes\" maxlength=\"50\" class=\"easyui-box ui-text\" style=\"width:200px;\"></td>\r\n");
      out.write("\t\t\t\t  </tr>\r\n");
      out.write("\t\t\t\t  <tr>\r\n");
      out.write("\t\t\t\t  \t<td colspan=\"4\"><label class=\"ui-label\">备注:</label>\r\n");
      out.write("\t\t\t\t  \t\t<textarea name=\"remark\" rows=\"20\" cols=\"20\" style=\"width:660px;height:50px;\" maxlength=\"100\"></textarea>\r\n");
      out.write("\t\t\t\t    </td>\r\n");
      out.write("\t\t\t\t  </tr>\r\n");
      out.write("\t\t\t\t  <tr><td colspan=\"4\" bgcolor=\"blue\" style=\"height:2px;\"></td></tr>\r\n");
      out.write("\t\t\t\t  <tr>\r\n");
      out.write("\t\t\t\t  \t<td colspan=\"4\"><font color=\"red\">注意：1，</font>成交量2000手以内一般为新股，买不到。\r\n");
      out.write("\t\t\t\t  \t<font color=\"red\">2，</font>当用到最近几天升降则用不到日期范围了,特别是最小日期。\r\n");
      out.write("\t\t\t\t  \t<font color=\"red\">3，</font>没有diff,dea,macd查询时的排序顺序为：日期，涨幅，换手率，振幅，成交量，成交金额。\r\n");
      out.write("\t\t\t\t  \t<font color=\"red\">4，</font>当有diff,dea,macd查询时的排序顺序为：股票代码升序，日期降序（因为第一条数据放到新的list），涨幅，换手率，振幅，成交量，成交金额。\r\n");
      out.write("\t\t\t\t  \t<font color=\"red\">5，</font>当有diff,dea,macd查询时,最近几天数据是必填的（不填日期范围太大）且大于1（1天没法跟自己比较）否则他们的条件没用其他有用。\r\n");
      out.write("\t\t\t\t  \t<font color=\"red\">6，</font>当有diff,dea,macd查询时,建议用更大的翻页数值，因为按照gcode排序，查到最后一条要3000*datenum左右（3天就1W翻页，10天就3W左右翻页），最好查到全部，这样更准确。\r\n");
      out.write("\t\t\t\t  \t<font color=\"red\">7，</font>如果前一日的diff,dea,macd与后一日的diff,dea,macd相等我们算正确的，毕竟这种概率也很小。\r\n");
      out.write("\t\t\t\t  \t<font color=\"red\">8，</font>一进来是不包括成交量2000以内的，如果需要可以在成交量输入0-2001。\r\n");
      out.write("\t\t\t\t  \t<font color=\"red\">9，</font>在没日期查询，没有最近几天数据查询下，只查最新一天数据。\r\n");
      out.write("\t\t\t\t  \t</td>\r\n");
      out.write("\t\t\t\t  </tr>\r\n");
      out.write("\t\t\t\t</table>\r\n");
      out.write("     \t</form>\r\n");
      out.write("  \t </div>\r\n");
      out.write("  \t <script type=\"text/javascript\" src=\"");
      out.print(basePath);
      out.write("/view/stocks/datas/page-tSearchs.js\"></script>\r\n");
      out.write("  </body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
