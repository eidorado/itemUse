/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.0.M13
 * Generated at: 2017-02-06 06:34:12 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.possw0rddyh0z0sfafafa;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class hzd1jgongesjgs666zqss1gdlyemianwyhohoho_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
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
      response.setContentType("text/html; charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write('\r');
      out.write('\n');

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"en\" xml:lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("<title>SOZO登录</title>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("<link href=\"");
      out.print(basePath);
      out.write("images/headSoZo/favicon.ico\" rel=\"shortcut icon\" type=\"image/x-icon\" />\r\n");
      out.write("<script src=\"");
      out.print(basePath);
      out.write("js/jquery-3.1.1.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("<STYLE>\r\n");
      out.write("body {\r\n");
      out.write("\tbackground: #ebebeb;\r\n");
      out.write("\tfont-family: \"Helvetica Neue\", \"Hiragino Sans GB\", \"Microsoft YaHei\",\r\n");
      out.write("\t\t\"\\9ED1\\4F53\", Arial, sans-serif;\r\n");
      out.write("\tcolor: #222;\r\n");
      out.write("\tfont-size: 12px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("* {\r\n");
      out.write("\tpadding: 0px;\r\n");
      out.write("\tmargin: 0px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".top_div {\r\n");
      out.write("\tbackground: #008ead;\r\n");
      out.write("\twidth: 100%;\r\n");
      out.write("\theight: 400px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".ipt {\r\n");
      out.write("\tborder: 1px solid #d3d3d3;\r\n");
      out.write("\tpadding: 10px 10px;\r\n");
      out.write("\twidth: 290px;\r\n");
      out.write("\tborder-radius: 4px;\r\n");
      out.write("\tpadding-left: 35px;\r\n");
      out.write("\t-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);\r\n");
      out.write("\tbox-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);\r\n");
      out.write("\t-webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow\r\n");
      out.write("\t\tease-in-out .15s;\r\n");
      out.write("\t-o-transition: border-color ease-in-out .15s, box-shadow ease-in-out\r\n");
      out.write("\t\t.15s;\r\n");
      out.write("\ttransition: border-color ease-in-out .15s, box-shadow ease-in-out .15s\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".ipt:focus {\r\n");
      out.write("\tborder-color: #66afe9;\r\n");
      out.write("\toutline: 0;\r\n");
      out.write("\t-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px\r\n");
      out.write("\t\trgba(102, 175, 233, .6);\r\n");
      out.write("\tbox-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px\r\n");
      out.write("\t\trgba(102, 175, 233, .6)\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".u_logo {\r\n");
      out.write("\tbackground: url(\"");
      out.print(basePath);
      out.write("images/login/username.png\") no-repeat;\r\n");
      out.write("\tpadding: 10px 10px;\r\n");
      out.write("\tposition: absolute;\r\n");
      out.write("\ttop: 43px;\r\n");
      out.write("\tleft: 40px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".p_logo {\r\n");
      out.write("\tbackground: url(\"");
      out.print(basePath);
      out.write("images/login/password.png\") no-repeat;\r\n");
      out.write("\tpadding: 10px 10px;\r\n");
      out.write("\tposition: absolute;\r\n");
      out.write("\ttop: 12px;\r\n");
      out.write("\tleft: 40px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("a {\r\n");
      out.write("\ttext-decoration: none;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".tou {\r\n");
      out.write("\tbackground: url(\"");
      out.print(basePath);
      out.write("images/login/tou.png\") no-repeat;\r\n");
      out.write("\twidth: 97px;\r\n");
      out.write("\theight: 92px;\r\n");
      out.write("\tposition: absolute;\r\n");
      out.write("\ttop: -87px;\r\n");
      out.write("\tleft: 140px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".left_hand {\r\n");
      out.write("\tbackground: url(\"");
      out.print(basePath);
      out.write("images/login/left_hand.png\") no-repeat;\r\n");
      out.write("\twidth: 32px;\r\n");
      out.write("\theight: 37px;\r\n");
      out.write("\tposition: absolute;\r\n");
      out.write("\ttop: -38px;\r\n");
      out.write("\tleft: 150px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".right_hand {\r\n");
      out.write("\tbackground: url(\"");
      out.print(basePath);
      out.write("images/login/right_hand.png\") no-repeat;\r\n");
      out.write("\twidth: 32px;\r\n");
      out.write("\theight: 37px;\r\n");
      out.write("\tposition: absolute;\r\n");
      out.write("\ttop: -38px;\r\n");
      out.write("\tright: -64px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".initial_left_hand {\r\n");
      out.write("\tbackground: url(\"");
      out.print(basePath);
      out.write("images/login/hand.png\") no-repeat;\r\n");
      out.write("\twidth: 30px;\r\n");
      out.write("\theight: 20px;\r\n");
      out.write("\tposition: absolute;\r\n");
      out.write("\ttop: -12px;\r\n");
      out.write("\tleft: 100px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".initial_right_hand {\r\n");
      out.write("\tbackground: url(\"");
      out.print(basePath);
      out.write("images/login/hand.png\") no-repeat;\r\n");
      out.write("\twidth: 30px;\r\n");
      out.write("\theight: 20px;\r\n");
      out.write("\tposition: absolute;\r\n");
      out.write("\ttop: -12px;\r\n");
      out.write("\tright: -112px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".left_handing {\r\n");
      out.write("\tbackground: url(\"");
      out.print(basePath);
      out.write("images/login/left-handing.png\") no-repeat;\r\n");
      out.write("\twidth: 30px;\r\n");
      out.write("\theight: 20px;\r\n");
      out.write("\tposition: absolute;\r\n");
      out.write("\ttop: -24px;\r\n");
      out.write("\tleft: 139px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".right_handinging {\r\n");
      out.write("\tbackground: url(\"");
      out.print(basePath);
      out.write("images/login/right_handing.png\") no-repeat;\r\n");
      out.write("\twidth: 30px;\r\n");
      out.write("\theight: 20px;\r\n");
      out.write("\tposition: absolute;\r\n");
      out.write("\ttop: -21px;\r\n");
      out.write("\tleft: 210px;\r\n");
      out.write("}\r\n");
      out.write("/* 验证码.start */\r\n");
      out.write("  \r\n");
      out.write(".code {  \r\n");
      out.write("    background: url(code_bg.jpg) repeat;  \r\n");
      out.write("    color: #ff0000;  \r\n");
      out.write("    font-family: Tahoma, Geneva, sans-serif;  \r\n");
      out.write("    font-style: italic;  \r\n");
      out.write("    font-weight: bold;  \r\n");
      out.write("    text-align: center;  \r\n");
      out.write("    width: 100px;  \r\n");
      out.write("    height: 25px;  \r\n");
      out.write("    cursor: pointer;  \r\n");
      out.write("}  \r\n");
      out.write("  \r\n");
      out.write("  .input {\r\n");
      out.write("\tborder: 1px solid #d3d3d3;\r\n");
      out.write("\tpadding: 3px 0px;\r\n");
      out.write("\twidth: 80px;\r\n");
      out.write("\tborder-radius: 4px;\r\n");
      out.write("\tmargin-left:90px;\r\n");
      out.write("\tmargin-top:6px;\r\n");
      out.write("\t-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);\r\n");
      out.write("\tbox-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);\r\n");
      out.write("\t-webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow\r\n");
      out.write("\t\tease-in-out .15s;\r\n");
      out.write("\t-o-transition: border-color ease-in-out .15s, box-shadow ease-in-out\r\n");
      out.write("\t\t.15s;\r\n");
      out.write("\ttransition: border-color ease-in-out .15s, box-shadow ease-in-out .15s\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".input:focus {\r\n");
      out.write("\tborder-color: #66afe9;\r\n");
      out.write("\toutline: 0;\r\n");
      out.write("\t-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px\r\n");
      out.write("\t\trgba(102, 175, 233, .6);\r\n");
      out.write("\tbox-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px\r\n");
      out.write("\t\trgba(102, 175, 233, .6)\r\n");
      out.write("}\r\n");
      out.write(".y_logo {\r\n");
      out.write("\tbackground: url(\"");
      out.print(basePath);
      out.write("images/login/yzm.jpg\") no-repeat;\r\n");
      out.write("\tpadding: 10px 23px;\r\n");
      out.write("\tposition: absolute;\r\n");
      out.write("\ttop: 12px;\r\n");
      out.write("\tleft: 35px;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write(" var code = 9999;  \r\n");
      out.write("$(function() {\r\n");
      out.write("\tclean();\r\n");
      out.write("    $(\".input\").focus(function(){  \r\n");
      out.write("        $(this).attr(\"value\", \"\");  \r\n");
      out.write("          \r\n");
      out.write("        var num1 = Math.floor(Math.random() * 100);  \r\n");
      out.write("        var num2 = Math.floor(Math.random() * 100);  \r\n");
      out.write("        code = num1 + num2;  \r\n");
      out.write("          \r\n");
      out.write("        $(\"#code\").html(num1 + \"+\" + num2 + \"=?\");  \r\n");
      out.write("        if ($(\"#code\").hasClass(\"nocode\")) {  \r\n");
      out.write("            $(\"#code\").removeClass(\"nocode\");  \r\n");
      out.write("            $(\"#code\").addClass(\"code\");  \r\n");
      out.write("        }  \r\n");
      out.write("    });  \r\n");
      out.write("/* 验证码.end */\r\n");
      out.write("\r\n");
      out.write("\t\t $('#username').keypress(function(e) {\r\n");
      out.write("            var key = e.which;\r\n");
      out.write("            if (key == 13) {\r\n");
      out.write("                login();\r\n");
      out.write("            }\r\n");
      out.write("        });\r\n");
      out.write("\t\t $('#password').keypress(function(e) {\r\n");
      out.write("            var key = e.which;\r\n");
      out.write("            if (key == 13) {\r\n");
      out.write("                login();\r\n");
      out.write("            }\r\n");
      out.write("        });\r\n");
      out.write("\t\t $('.input').keypress(function(e) {\r\n");
      out.write("            var key = e.which;\r\n");
      out.write("            if (key == 13) {\r\n");
      out.write("                login();\r\n");
      out.write("            }\r\n");
      out.write("        });\r\n");
      out.write("        \r\n");
      out.write("\t\t//得到焦点\r\n");
      out.write("\t\t$(\"#password\").focus(function() {\r\n");
      out.write("\t\t\t$(\"#left_hand\").animate({\r\n");
      out.write("\t\t\t\tleft : \"150\",\r\n");
      out.write("\t\t\t\ttop : \" -38\"\r\n");
      out.write("\t\t\t}, {\r\n");
      out.write("\t\t\t\tstep : function() {\r\n");
      out.write("\t\t\t\t\tif (parseInt($(\"#left_hand\").css(\"left\")) > 140) {\r\n");
      out.write("\t\t\t\t\t\t$(\"#left_hand\").attr(\"class\", \"left_hand\");\r\n");
      out.write("\t\t\t\t\t}\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t}, 2000);\r\n");
      out.write("\t\t\t$(\"#right_hand\").animate({\r\n");
      out.write("\t\t\t\tright : \"-64\",\r\n");
      out.write("\t\t\t\ttop : \"-38px\"\r\n");
      out.write("\t\t\t}, {\r\n");
      out.write("\t\t\t\tstep : function() {\r\n");
      out.write("\t\t\t\t\tif (parseInt($(\"#right_hand\").css(\"right\")) > -70) {\r\n");
      out.write("\t\t\t\t\t\t$(\"#right_hand\").attr(\"class\", \"right_hand\");\r\n");
      out.write("\t\t\t\t\t}\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t}, 2000);\r\n");
      out.write("\t\t});\r\n");
      out.write("\t\t//失去焦点\r\n");
      out.write("\t\t$(\"#password\").blur(function() {\r\n");
      out.write("\t\t\t$(\"#left_hand\").attr(\"class\", \"initial_left_hand\");\r\n");
      out.write("\t\t\t$(\"#left_hand\").attr(\"style\", \"left:100px;top:-12px;\");\r\n");
      out.write("\t\t\t$(\"#right_hand\").attr(\"class\", \"initial_right_hand\");\r\n");
      out.write("\t\t\t$(\"#right_hand\").attr(\"style\", \"right:-112px;top:-12px\");\r\n");
      out.write("\t\t});\r\n");
      out.write("\t});\r\n");
      out.write("\t\r\n");
      out.write("\tvar question;\r\n");
      out.write("\tfunction login(){\r\n");
      out.write("\t\t\tvar usernameJ=Trim($(\"#username\").val(),'g');\r\n");
      out.write("\t\t\tvar passwordJ=Trim($(\"#password\").val(),'g');\r\n");
      out.write("\t\t\tif(!username){\r\n");
      out.write("\t\t\t\talert(\"请输入账号!\");\r\n");
      out.write("\t\t\t\tclean();\r\n");
      out.write("\t\t\t\treturn;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\tif(!passwordJ){\r\n");
      out.write("\t\t\t\talert(\"请输入密码!\");\r\n");
      out.write("\t\t\t\tclean();\r\n");
      out.write("\t\t\t\treturn;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\t if ($(\".input\").val() == code && code != 9999) {  \r\n");
      out.write("\t  \t\t\t$.ajax({\r\n");
      out.write("\t\t                cache: true,\r\n");
      out.write("\t\t                type: \"POST\",\r\n");
      out.write("\t\t                url:\"login\",\r\n");
      out.write("\t\t                data:{username:usernameJ,password:passwordJ},\r\n");
      out.write("\t\t                dataType:\"json\",\r\n");
      out.write("\t\t                async: false,\r\n");
      out.write("\t\t                error: function(request) {\r\n");
      out.write("\t\t                    alert(\"出错！刷新页面或联系管理员!\");\r\n");
      out.write("\t\t                },\r\n");
      out.write("\t\t                success: function(data) {\r\n");
      out.write("\t\t\t\t             var a=data.status;\r\n");
      out.write("\t\t\t\t             if(a=='1'){\r\n");
      out.write("\t\t\t\t             \ttop.location.href=\"");
      out.print(basePath);
      out.write("sozoBack\";\r\n");
      out.write("\t\t\t\t             }else if(a=='2'){\r\n");
      out.write("\t\t\t\t             \talert(\"账号不存在!\");\r\n");
      out.write("\t\t\t\t             \tclean();\r\n");
      out.write("\t\t\t\t             \treturn;\r\n");
      out.write("\t\t\t\t             }else if(a=='3'){\r\n");
      out.write("\t\t\t\t             \talert(\"密码错误!\");\r\n");
      out.write("\t\t\t\t             \t$(\"#forgetId\").css(\"display\",\"block\");\r\n");
      out.write("\t\t\t\t             \tclean();\r\n");
      out.write("\t\t\t\t             \tquestion=data.names;\r\n");
      out.write("\t\t\t\t             \treturn;\r\n");
      out.write("\t\t\t\t             }\r\n");
      out.write("\t\t                }\r\n");
      out.write("\t\t   \t    });\r\n");
      out.write("\t\t   \t } else {  \r\n");
      out.write("\t            alert(\"请输入正确的验证码!\");\r\n");
      out.write("\t            clean();\r\n");
      out.write("\t        } \r\n");
      out.write("  \t\t}\r\n");
      out.write("  \t\t\r\n");
      out.write("  \t\t\r\n");
      out.write("\tfunction loginByQuestion(k,username){\r\n");
      out.write("\t\t\tvar usernameJ=username;\r\n");
      out.write("\t\t\tvar answerJ=k;\r\n");
      out.write("  \t\t\t$.ajax({\r\n");
      out.write("\t                cache: true,\r\n");
      out.write("\t                type: \"POST\",\r\n");
      out.write("\t                url:\"loginByQuestion\",\r\n");
      out.write("\t                data:{username:usernameJ,answer:answerJ},\r\n");
      out.write("\t                dataType:\"json\",\r\n");
      out.write("\t                async: false,\r\n");
      out.write("\t                error: function(request) {\r\n");
      out.write("\t                    alert(\"出错！刷新页面或联系管理员!\");\r\n");
      out.write("\t                },\r\n");
      out.write("\t                success: function(data) {\r\n");
      out.write("\t\t\t             var a=data.status;\r\n");
      out.write("\t\t\t             if(a=='1'){\r\n");
      out.write("\t\t\t             \ttop.location.href=\"");
      out.print(basePath);
      out.write("sozoBack\";\r\n");
      out.write("\t\t\t             }else if(a=='2'){\r\n");
      out.write("\t\t\t             \talert(\"账号不存在!\");\r\n");
      out.write("\t\t\t             \tclean();\r\n");
      out.write("\t\t\t             \treturn;\r\n");
      out.write("\t\t\t             }else if(a=='3'){\r\n");
      out.write("\t\t\t             \talert(\"回答错误!\");\r\n");
      out.write("\t\t\t             \tclean();\r\n");
      out.write("\t\t\t             \treturn;\r\n");
      out.write("\t\t\t             }\r\n");
      out.write("\t                }\r\n");
      out.write("\t   \t    });\r\n");
      out.write("  \t\t}\r\n");
      out.write("  \t\t\r\n");
      out.write("  \t\t\r\n");
      out.write("  \t\tfunction forget(){\r\n");
      out.write("  \t\t\t$(\"#answerDivId\").css(\"display\",\"block\");\r\n");
      out.write("  \t\t\t$(\"#question\").text(\"问题：\"+question);\r\n");
      out.write("  \t\t}\r\n");
      out.write("  \t\tfunction checkQuestion(){\r\n");
      out.write("  \t\t   var k=Trim($(\"#answer\").val(),'g');\r\n");
      out.write("  \t\t   var username=Trim($(\"#username\").val(),'g');\r\n");
      out.write("  \t\t   if(username){\r\n");
      out.write("  \t\t   \t\tif ($(\".input\").val() == code && code != 9999) {  \r\n");
      out.write("\t\t  \t\t   if(k&&k!=null){\r\n");
      out.write("\t\t\t  \t\t   \tloginByQuestion(k,username);\r\n");
      out.write("\t\t\t  \t   }else{\r\n");
      out.write("\t\t\t  \t   \t\talert(\"回答错误!\");\r\n");
      out.write("\t\t\t  \t   \t\tclean();\r\n");
      out.write("\t\t\t  \t   }\r\n");
      out.write("\t\t\t  \t }else{\r\n");
      out.write("\t\t\t  \t \talert(\"请输入正确的验证码!\");\r\n");
      out.write("\t\t\t  \t \tclean();\r\n");
      out.write("\t\t\t  \t }\r\n");
      out.write("\t  \t   }else{\r\n");
      out.write("\t  \t   \t\talert(\"请输入账号!\");\r\n");
      out.write("\t  \t   \t\tclean();\r\n");
      out.write("\t  \t   }\r\n");
      out.write("  \t\t}\r\n");
      out.write("  \t\t\r\n");
      out.write("  \t\tfunction clean(){\r\n");
      out.write("  \t\t\t$(\".input\").val(\"\");\r\n");
      out.write("  \t\t\t$(\"#username\").val(\"\");\r\n");
      out.write("  \t\t\t$(\"#password\").val(\"\");\r\n");
      out.write("\t\t\t$(\"#answer\").val(\"\");\r\n");
      out.write("  \t\t}\r\n");
      out.write("  \t\t\r\n");
      out.write("  \t\t function Trim(str,is_global)\r\n");
      out.write("        {\r\n");
      out.write("            var result;\r\n");
      out.write("            result = str.replace(/(^\\s+)|(\\s+$)/g,\"\");\r\n");
      out.write("            if(is_global.toLowerCase()==\"g\")\r\n");
      out.write("            {\r\n");
      out.write("                result = result.replace(/\\s/g,\"\");\r\n");
      out.write("             }\r\n");
      out.write("            return result;\r\n");
      out.write("\t\t}\r\n");
      out.write("</SCRIPT>\r\n");
      out.write("<META name=\"GENERATOR\" content=\"MSHTML 11.00.9600.17496\">\r\n");
      out.write("</head>\r\n");
      out.write("<BODY>\r\n");
      out.write("\t<DIV class=\"top_div\"></DIV>\r\n");
      out.write("\t<DIV style=\"background: rgb(255, 255, 255); margin: -100px auto auto; border: 1px solid rgb(231, 231, 231); border-image: none; width: 400px; height: 210px; text-align: center;\">\r\n");
      out.write("\t\t<DIV style=\"width: 165px; height: 96px; position: absolute;\">\r\n");
      out.write("\t\t\t<DIV class=\"tou\"></DIV>\r\n");
      out.write("\t\t\t<DIV class=\"initial_left_hand\" id=\"left_hand\"></DIV>\r\n");
      out.write("\t\t\t<DIV class=\"initial_right_hand\" id=\"right_hand\"></DIV>\r\n");
      out.write("\t\t</DIV>\r\n");
      out.write("\t\t<P style=\"padding: 30px 0px 10px; position: relative;\">\r\n");
      out.write("\t\t\t<SPAN class=\"u_logo\"></SPAN>\r\n");
      out.write("\t\t\t<INPUT id=\"username\" class=\"ipt\" type=\"text\" placeholder=\"请输入账号\" value=\"\">\r\n");
      out.write("\t\t</P>\r\n");
      out.write("\t\t<P style=\"position: relative;\">\r\n");
      out.write("\t\t\t<SPAN class=\"p_logo\"></SPAN>\r\n");
      out.write("\t\t\t<INPUT class=\"ipt\" id=\"password\" type=\"password\" placeholder=\"请输入密码\" value=\"\">\r\n");
      out.write("\t\t</P>\r\n");
      out.write("\t\t<div>\r\n");
      out.write("\t\t<div style=\"float:left\">\r\n");
      out.write("\t\t<P style=\"position: relative;\">\r\n");
      out.write("\t\t\t<SPAN class=\"y_logo\"></SPAN>\r\n");
      out.write("\t\t\t<input type=\"text\" class=\"input\" />  \r\n");
      out.write("\t\t</P>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div style=\"float:left;margin-top:8px;\" id=\"code\" class=\"nocode\"></div> \r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<DIV style=\"height: 50px; line-height: 50px; margin-top: 38px; border-top-color: rgb(231, 231, 231); border-top-width: 1px; border-top-style: solid;\">\r\n");
      out.write("\t\t\t<P style=\"margin: 0px 35px 20px 45px;\">\r\n");
      out.write("\t\t\t\t<SPAN style=\"float: left;\">\r\n");
      out.write("\t\t\t\t<A id=\"forgetId\" style=\"display:none;color: rgb(204, 204, 204);\" href=\"#\" onclick=\"forget()\">忘记密码?</A>\r\n");
      out.write("\t\t\t\t</SPAN> \r\n");
      out.write("\t\t\t\t<SPAN style=\"float: right;\">\r\n");
      out.write("\t\t\t\t\t<!-- <A style=\"color: rgb(204, 204, 204); margin-right: 10px;\" href=\"#\">注册</A> -->\r\n");
      out.write("\t\t\t\t\t<A style=\"background: rgb(0, 142, 173); padding: 7px 10px; border-radius: 4px; border: 1px solid rgb(26, 117, 152); border-image: none; color: rgb(255, 255, 255); font-weight: bold;\"\r\n");
      out.write("\t\t\t\t\thref=\"#\" onclick=\"login()\">登录</A> </SPAN>\r\n");
      out.write("\t\t\t</P>\r\n");
      out.write("\t\t</DIV>\r\n");
      out.write("\t\t<DIV id=\"answerDivId\" style=\"display:none;background:rgb(255, 255, 255);height: 150px; line-height: 50px;border-top-color: rgb(231, 231, 231); border-top-width: 1px; border-top-style: solid;\">\r\n");
      out.write("\t\t\t\t<div style=\"width:100%;\">\r\n");
      out.write("\t\t\t\t\t<SPAN id=\"question\"></SPAN>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div style=\"width:100%;\">\r\n");
      out.write("\t\t\t\t\t<INPUT id=\"answer\" class=\"ipt\" type=\"text\" placeholder=\"请输入答案\" value=\"\">\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div style=\"width:100%;\">\r\n");
      out.write("\t\t\t\t<SPAN>\r\n");
      out.write("\t\t\t\t\t\t<A style=\"background: green; padding: 7px 10px; border-radius: 4px; border: 1px solid green; border-image: none; color: rgb(255, 255, 255); font-weight: bold;\"\r\n");
      out.write("\t\t\t\t\t\thref=\"#\" onclick=\"checkQuestion()\">确定</A>\r\n");
      out.write("\t\t\t\t</SPAN>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t</DIV>\r\n");
      out.write("\t</DIV>\r\n");
      out.write("\t<div style=\"text-align:center;\"></div>\r\n");
      out.write("\t\r\n");
      out.write("\t\t \r\n");
      out.write("</body>\r\n");
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
