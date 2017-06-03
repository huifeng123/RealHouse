<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="base_style.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>用户中心</title>
</head>

<body>
<div class="nav navbar-default navbar-mystyle navbar-fixed-top">
  <div class="navbar-header">
    <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"> 
     <span class="icon-bar"></span> 
     <span class="icon-bar"></span> 
     <span class="icon-bar"></span> 
    </button>
    <a class="navbar-brand mystyle-brand"><span class="glyphicon glyphicon-home"></span></a> </div>
  <div class="collapse navbar-collapse">
    <ul class="nav navbar-nav">
      <li class="li-border"><a class="mystyle-color" href="#">管理控制台</a></li>
    </ul>
    
    <ul class="nav navbar-nav pull-right">
       <li class="li-border dropdown"><a href="#" class="mystyle-color" data-toggle="dropdown">
      <span class="glyphicon glyphicon-search"></span> 搜索</a>
         <div class="dropdown-menu search-dropdown">
            <div class="input-group">
                <input type="text" class="form-control">
                 <span class="input-group-btn">
                   <button type="button" class="btn btn-default">搜索</button>
                </span>
            </div>
         </div>
      </li>
    </ul>
  </div>
</div>
<div class="down-main">
  <div class="left-main left-full">
    <div class="sidebar-fold"><span class="glyphicon glyphicon-menu-hamburger"></span></div>
    <div class="subNavBox">
      <div class="sBox">
       <div class="subNav sublist-down"><span class="title-icon glyphicon glyphicon-chevron-down"></span><span class="sublist-title">用户中心</span>
        </div>
          <%@include file="base_jsp.jsp"%>
      </div>
    </div>
  </div>
  <div class="right-product view-product right-full">
     <div class="container-fluid">
				<div class="manage account-manage info-center">
					<div class="page-header">
                        <div class="pull-left">
						   <h4>添加用户</h4>
					    </div>
                    </div>


                    <form method="post">
					<div class="form-group">
                        <input class="btn btn-primary" type="submit" value="添加" formaction="${ctx}/back/userAdd"/>
                        <a href="#" onclick="window.history.go(-1);"><input class="btn btn-primary" type="button"value="返回"> </a>
                        <table id="ec_table" class="table" width="50%" >
                            <tr class="odd">
                                <td>用户昵称:</td>
                                <td><input  id="uname"  type="text" name="uname"></td>
                            </tr>
                            <tr class="odd">
                                <td>真实姓名</td><td><input type="text" name="urname"></td>
                            </tr>
                            <tr class="odd">
                                <td>邮箱</td><td><input type="text" name="uemail"></td>
                            </tr>
                            <tr class="odd">
                                <td>用户名</td><td><input type="text" name="uuser"></td>
                            </tr>
                            <tr class="odd">
                                <td>登录密码</td><td><input type="text" name="upassword"></td>
                            </tr>
                            <tr class="odd">
                                <td>性别</td><td><input type="text" name="sex"></td>
                            </tr>
                            <tr class="odd">
                                <td>电话</td><td><input type="text" name="tel"></td>
                            </tr>
                            <tr class="odd">
                                <td>邮编</td><td><input type="text" name="post"></td>
                            </tr>
                            <tr class="odd">
                                <td>地址</td><td><input type="text" name="uaddress"></td>
                            </tr>
                            <tr class="odd">
                                <td>QQ</td><td><input type="text" name="qq"></td>
                            </tr>
                            <tr class="odd">
                                <td>角色</td>
                                <td><input type="radio" name="upower" value="1">房东
                                <input type="radio" name="upower" value="0">租客</td>
                            </tr>
                        </table>
					</div>
                    </form>
				</div>
		</div>
  </div>
</div>
<script type="text/javascript">
$(function(){
/*换肤*/
$(".dropdown .changecolor li").click(function(){
	var style = $(this).attr("id");
    $("link[title!='']").attr("disabled","disabled"); 
	$("link[title='"+style+"']").removeAttr("disabled"); 

	$.cookie('mystyle', style, { expires: 7 }); // 存储一个带7天期限的 cookie 
})
var cookie_style = $.cookie("mystyle"); 
if(cookie_style!=null){ 
    $("link[title!='']").attr("disabled","disabled"); 
	$("link[title='"+cookie_style+"']").removeAttr("disabled"); 
} 
/*左侧导航栏显示隐藏功能*/
$(".subNav").click(function(){				
			/*显示*/
			if($(this).find("span:first-child").attr('class')=="title-icon glyphicon glyphicon-chevron-down")
			{
				$(this).find("span:first-child").removeClass("glyphicon-chevron-down");
			    $(this).find("span:first-child").addClass("glyphicon-chevron-up");
			    $(this).removeClass("sublist-down");
				$(this).addClass("sublist-up");
			}
			/*隐藏*/
			else
			{
				$(this).find("span:first-child").removeClass("glyphicon-chevron-up");
				$(this).find("span:first-child").addClass("glyphicon-chevron-down");
				$(this).removeClass("sublist-up");
				$(this).addClass("sublist-down");
			}	
		// 修改数字控制速度， slideUp(500)控制卷起速度
	    $(this).next(".navContent").slideToggle(300).siblings(".navContent").slideUp(300);
	})
/*左侧导航栏缩进功能*/
$(".left-main .sidebar-fold").click(function(){

	if($(this).parent().attr('class')=="left-main left-full")
	{
		$(this).parent().removeClass("left-full");
		$(this).parent().addClass("left-off");
		
		$(this).parent().parent().find(".right-product").removeClass("right-full");
		$(this).parent().parent().find(".right-product").addClass("right-off");
		
		}
	else
	{
		$(this).parent().removeClass("left-off");
		$(this).parent().addClass("left-full");
		
		$(this).parent().parent().find(".right-product").removeClass("right-off");
		$(this).parent().parent().find(".right-product").addClass("right-full");
		
		}
	})	
 
  /*左侧鼠标移入提示功能*/
		$(".sBox ul li").mouseenter(function(){
			if($(this).find("span:last-child").css("display")=="none")
			{$(this).find("div").show();}
			}).mouseleave(function(){$(this).find("div").hide();})	
})
</script>
</body>
</html>
