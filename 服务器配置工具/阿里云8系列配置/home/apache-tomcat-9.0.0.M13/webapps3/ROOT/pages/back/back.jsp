<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>后台控制中心</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<link href="images/head/favicon.ico" rel="shortcut icon" type="image/x-icon" />
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <style type="text/css">
  #demo{ background-color:#D8D8EB;cursor:pointer;width:130px;height:68px;float:left;margin-left:10px;margin-top:10px;}
  #demo:hover{ background-color:#484891;}
  b{color:white;}
  </style>
  <script src="js/jquery-3.1.1.min.js" type="text/javascript"></script>
  <script type="text/javascript" src="js/divopen.js"></script>
  <script type="text/javascript">
  		function addOpen(c,d){
  			var username;
  			var nickname;
  			var question;
  			var answer;
  			var phone;
  			var remark;
  			var userId;
  			$.ajax({
	                cache: true,
	                type: "POST",
	                url:"findByUsername",
	                data:{username:'${username}'},                //$('#ajform').serialize(), 你的formid或者 { id: idIndex, name: nameIndex },//提交参数
	                dataType:"json",
	                async: false,
	                error: function(request) {
	                    alert("查询修改信息出错,刷新页面或联系管理员！");
	                },
	                success: function(data) {
			             var a=data.status;
			             if(a=='1'){
			             	username=data.list[0].username;
			             	nickname=data.list[0].nickname;
			             	question=data.list[0].question;
			             	answer=data.list[0].answer;
			             	phone=data.list[0].phone;
			             	remark=data.list[0].remark;
			             	userId=data.list[0].userId;
			             }else if(a=='2'){
			             	alert("账号不存在!");
			             	return;
			             }
	                }
	   	    });
  			if(d=='1'){
  				$('#fm')[0].reset();
  				$("#fm #userId").val(userId);
  				$("#fm #username").text(username);
			}else{
				$('#fm2')[0].reset();
  				$("#fm2 #userId").val(userId);
  				$("#fm2 #username").val(username);
				$("#fm2 #question").val(question);
				$("#fm2 #answer").val(answer);
				$("#fm2 #nickname").val(nickname);
				$("#fm2 #phone").val(phone);
				$("#fm2 #remark").val(remark);
			}
  			showDiv(c);
  		}
  		
  		function turnHref(c){
  			if(c=='1'){
  				location.href="picMag";
  			}else if(c=='2'){
  				location.href="tag";
  			}else if(c=='3'){
  				location.href="userMag";
  			}else if(c=='4'){
  				window.open("dataStatBack");                 
  			}else if(c=='5'){
  				window.open("showPhoto");
  			}else if(c=='6'){
  				location.href="aboutDetail?picId=1&title=关于我们";
  			}
  		}
  </script>
  <body style="margin:0">
    <div id="container"  align="center">
    	<div id="scene">
    		<!-- <img src="images/back/contact.jpg" alt="" width="100%"> -->
    		<h1 style="position:-20 0 0 0">后台控制中心<font size="5px">&nbsp;&nbsp;&nbsp;&nbsp;${nickname}</font></h1>
    	</div>
    	<div id="content" style="width:90%;">
    		<div id="demo"  onclick="turnHref(1)">
    		<br><b>TFBOYS的生活</b>
    		</div>
    		<div id="demo"  onclick="turnHref(2)">
    		<br><b>标签管理</b>
    		</div>
    		<div id="demo"  onclick="turnHref(3)">
    		<br><b>人员管理</b>
    		</div>
    		<div id="demo"  onclick="turnHref(6)">
    		<br><b>关于我们</b>
    		</div>
    		<div id="demo"  onclick="turnHref(5)">
    		<br><b>相册</b>
    		</div>
    		<div id="demo"  onclick="addOpen('Idiv1',1)">
    		<br><b>修改密码</b>
    		</div>
    		<div id="demo"  onclick="addOpen('Idiv2',2)">
    		<br><b>修改个人信息</b>
    		</div>
    		<div id="demo"  onclick="turnHref(4)">
    		<br><b>数据统计</b>
    		</div>
    	</div>
    </div>
    
     <!--弹出层开始-->
		<div id="Idiv1" style="display:none; position:absolute; z-index:1000; background:#67a3d9;">
			<div style="width:400px;height:220px;">
			 <div id="Idiv1_head" style="height:50px;z-index:1001;">
				 <div style="width:340px;float:left;">
			     <h3 style="margin-left:20px;">修改密码</h3>
			     </div>
			     <div style="float:right">
			     <input type="submit" onclick="closeDiv('Idiv1');" value="X" style="padding: .2em 0.5em;margin-top:15px;margin-right:20px;background-color:red;">
			     </div>
		     </div>
            <form id="fm" action="updatePassword" method="post" style="background-color:white;">
               <table>
                <tr>
                    <td>账号：</td>
                    <td><span id="username"></span></td>
                </tr>
                <tr>
                    <td>密码：</td>
                    <td><input type="text" id="password" name="password" style="width:300px" maxlength="20"></input></td>
                </tr>
                </table>
                <input type="hidden" name="userId" id="userId" />
                <div style="text-align:center;margin:20 auto 20px auto;"> 
		        <input name="保存" type="submit" class="button" value="保存" style="padding: .3em 1em;"/>
	    		</div>
            </form>
           <!--  <input onclick="add(fm)" name="保存" type="submit" class="button" value="保存" style="padding: .3em 1em;"/> -->
            </div>
		 </div>
		 <!--结束-->
     <!--弹出层开始-->
		<div id="Idiv2" style="display:none; position:absolute; z-index:1000; background:#67a3d9;">
			<div style="width:700px;height:370px;">
			 <div id="Idiv2_head" style="height:50px;z-index:1001;">
				 <div style="width:640px;float:left;">
			     <h3 style="margin-left:20px;">修改个人信息</h3>
			     </div>
			     <div style="float:right">
			     <input type="submit" onclick="closeDiv('Idiv2');" value="X" style="padding: .2em 0.5em;margin-top:15px;margin-right:20px;background-color:red;">
			     </div>
		     </div>
            <form id="fm2" action="updateMe" method="post" style="background-color:white;">
               <table>
                <tr>
                    <td>账号：</td>
                    <td><input type="text" id="username" name="user.username" style="width:540px" maxlength="20"></input></td>
                </tr>
                <tr>
                    <td>昵称：</td>
                    <td><input type="text" id="nickname" name="user.nickname" style="width:540px" maxlength="20"></input></td>
                </tr>
                <tr>
                    <td>电话：</td>
                    <td><input type="text" id="phone" name="user.phone" style="width:540px" maxlength="20"></input></td>
                </tr>
                <tr>
                    <td>密码问题：</td>
                    <td><input type="text" id="question" name="user.question" style="width:540px" maxlength="25"></input></td>
                </tr>
                <tr>
                    <td>密码答案：</td>
                    <td><input type="text" id="answer" name="user.answer" style="width:540px" maxlength="25" placeholder="不要含有空格和特殊字符'\'或'/'"></input></td>
                </tr>
                <tr>
                    <td>备注：</td>
                    <td><textarea id="remark" name="user.remark" rows="20" cols="20" style="width:540px;height:60px;" maxlength="100"></textarea>
                    </td>
                </tr>
                </table>
                <input type="hidden" name="user.userId" id="userId" />
                <div style="text-align:center;margin:20 auto 20px auto;"> 
		        <input name="保存" type="submit" class="button" value="保存" style="padding: .3em 1em;"/>
	    		</div>
            </form>
            </div>
		 </div>
		 <!--结束-->
		 
		 
  </body>
</html>
