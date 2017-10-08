<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
<title>SOZO登录</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="<%=basePath%>images/headSoZo/favicon.ico" rel="shortcut icon" type="image/x-icon" />
<script src="<%=basePath%>js/jquery-3.1.1.min.js" type="text/javascript"></script>
<STYLE>
body {
	background: #ebebeb;
	font-family: "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei",
		"\9ED1\4F53", Arial, sans-serif;
	color: #222;
	font-size: 12px;
}

* {
	padding: 0px;
	margin: 0px;
}

.top_div {
	background: #008ead;
	width: 100%;
	height: 400px;
}

.ipt {
	border: 1px solid #d3d3d3;
	padding: 10px 10px;
	width: 290px;
	border-radius: 4px;
	padding-left: 35px;
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
	-webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow
		ease-in-out .15s;
	-o-transition: border-color ease-in-out .15s, box-shadow ease-in-out
		.15s;
	transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s
}

.ipt:focus {
	border-color: #66afe9;
	outline: 0;
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px
		rgba(102, 175, 233, .6);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px
		rgba(102, 175, 233, .6)
}

.u_logo {
	background: url("<%=basePath%>images/login/username.png") no-repeat;
	padding: 10px 10px;
	position: absolute;
	top: 43px;
	left: 40px;
}

.p_logo {
	background: url("<%=basePath%>images/login/password.png") no-repeat;
	padding: 10px 10px;
	position: absolute;
	top: 12px;
	left: 40px;
}

a {
	text-decoration: none;
}

.tou {
	background: url("<%=basePath%>images/login/tou.png") no-repeat;
	width: 97px;
	height: 92px;
	position: absolute;
	top: -87px;
	left: 140px;
}

.left_hand {
	background: url("<%=basePath%>images/login/left_hand.png") no-repeat;
	width: 32px;
	height: 37px;
	position: absolute;
	top: -38px;
	left: 150px;
}

.right_hand {
	background: url("<%=basePath%>images/login/right_hand.png") no-repeat;
	width: 32px;
	height: 37px;
	position: absolute;
	top: -38px;
	right: -64px;
}

.initial_left_hand {
	background: url("<%=basePath%>images/login/hand.png") no-repeat;
	width: 30px;
	height: 20px;
	position: absolute;
	top: -12px;
	left: 100px;
}

.initial_right_hand {
	background: url("<%=basePath%>images/login/hand.png") no-repeat;
	width: 30px;
	height: 20px;
	position: absolute;
	top: -12px;
	right: -112px;
}

.left_handing {
	background: url("<%=basePath%>images/login/left-handing.png") no-repeat;
	width: 30px;
	height: 20px;
	position: absolute;
	top: -24px;
	left: 139px;
}

.right_handinging {
	background: url("<%=basePath%>images/login/right_handing.png") no-repeat;
	width: 30px;
	height: 20px;
	position: absolute;
	top: -21px;
	left: 210px;
}
/* 验证码.start */
  
.code {  
    background: url(code_bg.jpg) repeat;  
    color: #ff0000;  
    font-family: Tahoma, Geneva, sans-serif;  
    font-style: italic;  
    font-weight: bold;  
    text-align: center;  
    width: 100px;  
    height: 25px;  
    cursor: pointer;  
}  
  
  .input {
	border: 1px solid #d3d3d3;
	padding: 3px 0px;
	width: 80px;
	border-radius: 4px;
	margin-left:90px;
	margin-top:6px;
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
	-webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow
		ease-in-out .15s;
	-o-transition: border-color ease-in-out .15s, box-shadow ease-in-out
		.15s;
	transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s
}

.input:focus {
	border-color: #66afe9;
	outline: 0;
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px
		rgba(102, 175, 233, .6);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px
		rgba(102, 175, 233, .6)
}
.y_logo {
	background: url("<%=basePath%>images/login/yzm.jpg") no-repeat;
	padding: 10px 23px;
	position: absolute;
	top: 12px;
	left: 35px;
}
</style>
<script type="text/javascript">
 var code = 9999;  
$(function() {
	clean();
    $(".input").focus(function(){  
        $(this).attr("value", "");  
          
        var num1 = Math.floor(Math.random() * 100);  
        var num2 = Math.floor(Math.random() * 100);  
        code = num1 + num2;  
          
        $("#code").html(num1 + "+" + num2 + "=?");  
        if ($("#code").hasClass("nocode")) {  
            $("#code").removeClass("nocode");  
            $("#code").addClass("code");  
        }  
    });  
/* 验证码.end */

		 $('#username').keypress(function(e) {
            var key = e.which;
            if (key == 13) {
                login();
            }
        });
		 $('#password').keypress(function(e) {
            var key = e.which;
            if (key == 13) {
                login();
            }
        });
		 $('.input').keypress(function(e) {
            var key = e.which;
            if (key == 13) {
                login();
            }
        });
        
		//得到焦点
		$("#password").focus(function() {
			$("#left_hand").animate({
				left : "150",
				top : " -38"
			}, {
				step : function() {
					if (parseInt($("#left_hand").css("left")) > 140) {
						$("#left_hand").attr("class", "left_hand");
					}
				}
			}, 2000);
			$("#right_hand").animate({
				right : "-64",
				top : "-38px"
			}, {
				step : function() {
					if (parseInt($("#right_hand").css("right")) > -70) {
						$("#right_hand").attr("class", "right_hand");
					}
				}
			}, 2000);
		});
		//失去焦点
		$("#password").blur(function() {
			$("#left_hand").attr("class", "initial_left_hand");
			$("#left_hand").attr("style", "left:100px;top:-12px;");
			$("#right_hand").attr("class", "initial_right_hand");
			$("#right_hand").attr("style", "right:-112px;top:-12px");
		});
	});
	
	var question;
	function login(){
			var usernameJ=Trim($("#username").val(),'g');
			var passwordJ=Trim($("#password").val(),'g');
			if(!username){
				alert("请输入账号!");
				clean();
				return;
			}
			if(!passwordJ){
				alert("请输入密码!");
				clean();
				return;
			}
			 if ($(".input").val() == code && code != 9999) {  
	  			$.ajax({
		                cache: true,
		                type: "POST",
		                url:"login",
		                data:{username:usernameJ,password:passwordJ},
		                dataType:"json",
		                async: false,
		                error: function(request) {
		                    alert("出错！刷新页面或联系管理员!");
		                },
		                success: function(data) {
				             var a=data.status;
				             if(a=='1'){
				             	top.location.href="<%=basePath%>sozoBack";
				             }else if(a=='2'){
				             	alert("账号不存在!");
				             	clean();
				             	return;
				             }else if(a=='3'){
				             	alert("密码错误!");
				             	$("#forgetId").css("display","block");
				             	clean();
				             	question=data.names;
				             	return;
				             }
		                }
		   	    });
		   	 } else {  
	            alert("请输入正确的验证码!");
	            clean();
	        } 
  		}
  		
  		
	function loginByQuestion(k,username){
			var usernameJ=username;
			var answerJ=k;
  			$.ajax({
	                cache: true,
	                type: "POST",
	                url:"loginByQuestion",
	                data:{username:usernameJ,answer:answerJ},
	                dataType:"json",
	                async: false,
	                error: function(request) {
	                    alert("出错！刷新页面或联系管理员!");
	                },
	                success: function(data) {
			             var a=data.status;
			             if(a=='1'){
			             	top.location.href="<%=basePath%>sozoBack";
			             }else if(a=='2'){
			             	alert("账号不存在!");
			             	clean();
			             	return;
			             }else if(a=='3'){
			             	alert("回答错误!");
			             	clean();
			             	return;
			             }
	                }
	   	    });
  		}
  		
  		
  		function forget(){
  			$("#answerDivId").css("display","block");
  			$("#question").text("问题："+question);
  		}
  		function checkQuestion(){
  		   var k=Trim($("#answer").val(),'g');
  		   var username=Trim($("#username").val(),'g');
  		   if(username){
  		   		if ($(".input").val() == code && code != 9999) {  
		  		   if(k&&k!=null){
			  		   	loginByQuestion(k,username);
			  	   }else{
			  	   		alert("回答错误!");
			  	   		clean();
			  	   }
			  	 }else{
			  	 	alert("请输入正确的验证码!");
			  	 	clean();
			  	 }
	  	   }else{
	  	   		alert("请输入账号!");
	  	   		clean();
	  	   }
  		}
  		
  		function clean(){
  			$(".input").val("");
  			$("#username").val("");
  			$("#password").val("");
			$("#answer").val("");
  		}
  		
  		 function Trim(str,is_global)
        {
            var result;
            result = str.replace(/(^\s+)|(\s+$)/g,"");
            if(is_global.toLowerCase()=="g")
            {
                result = result.replace(/\s/g,"");
             }
            return result;
		}
</SCRIPT>
<META name="GENERATOR" content="MSHTML 11.00.9600.17496">
</head>
<BODY>
	<DIV class="top_div"></DIV>
	<DIV style="background: rgb(255, 255, 255); margin: -100px auto auto; border: 1px solid rgb(231, 231, 231); border-image: none; width: 400px; height: 210px; text-align: center;">
		<DIV style="width: 165px; height: 96px; position: absolute;">
			<DIV class="tou"></DIV>
			<DIV class="initial_left_hand" id="left_hand"></DIV>
			<DIV class="initial_right_hand" id="right_hand"></DIV>
		</DIV>
		<P style="padding: 30px 0px 10px; position: relative;">
			<SPAN class="u_logo"></SPAN>
			<INPUT id="username" class="ipt" type="text" placeholder="请输入账号" value="">
		</P>
		<P style="position: relative;">
			<SPAN class="p_logo"></SPAN>
			<INPUT class="ipt" id="password" type="password" placeholder="请输入密码" value="">
		</P>
		<div>
		<div style="float:left">
		<P style="position: relative;">
			<SPAN class="y_logo"></SPAN>
			<input type="text" class="input" />  
		</P>
		</div>
		<div style="float:left;margin-top:8px;" id="code" class="nocode"></div> 
		</div>
		<DIV style="height: 50px; line-height: 50px; margin-top: 38px; border-top-color: rgb(231, 231, 231); border-top-width: 1px; border-top-style: solid;">
			<P style="margin: 0px 35px 20px 45px;">
				<SPAN style="float: left;">
				<A id="forgetId" style="display:none;color: rgb(204, 204, 204);" href="#" onclick="forget()">忘记密码?</A>
				</SPAN> 
				<SPAN style="float: right;">
					<!-- <A style="color: rgb(204, 204, 204); margin-right: 10px;" href="#">注册</A> -->
					<A style="background: rgb(0, 142, 173); padding: 7px 10px; border-radius: 4px; border: 1px solid rgb(26, 117, 152); border-image: none; color: rgb(255, 255, 255); font-weight: bold;"
					href="#" onclick="login()">登录</A> </SPAN>
			</P>
		</DIV>
		<DIV id="answerDivId" style="display:none;background:rgb(255, 255, 255);height: 150px; line-height: 50px;border-top-color: rgb(231, 231, 231); border-top-width: 1px; border-top-style: solid;">
				<div style="width:100%;">
					<SPAN id="question"></SPAN>
				</div>
				<div style="width:100%;">
					<INPUT id="answer" class="ipt" type="text" placeholder="请输入答案" value="">
				</div>
				<div style="width:100%;">
				<SPAN>
						<A style="background: green; padding: 7px 10px; border-radius: 4px; border: 1px solid green; border-image: none; color: rgb(255, 255, 255); font-weight: bold;"
						href="#" onclick="checkQuestion()">确定</A>
				</SPAN>
				</div>
		</DIV>
	</DIV>
	<div style="text-align:center;"></div>
	
		 
</body>
</html>
