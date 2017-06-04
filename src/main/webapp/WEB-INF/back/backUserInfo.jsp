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
						   <h4>查看具体信息</h4>
					    </div>
                    </div>
					<div>

                        <a href="#" onclick="window.history.go(-1);"><input class="btn btn-primary" type="button"value="返回"></a>
                    </div>
					<div>
                        <table id="ec_table" class="table" width="50%" >
                            <tr class="odd">
                                <td class="tableHeader">用户昵称：</td>
                                <td>${user.uname}</td>
                            </tr>
                            <tr class="odd">
                                <td class="tableHeader">真实姓名</td>
                                <td>${user.urname}</td>
                            </tr>
                            <tr class="odd">
                                <td class="tableHeader">邮箱：</td>
                                <td>${user.uemail}</td>
                            </tr>
                            <tr class="odd">
                                <td class="tableHeader">用户名</td>
                                <td>${user.uuser}</td>
                            </tr>
                            <tr class="odd">
                                <td class="tableHeader">登录密码：</td>
                                <td> <c:if test="${user.upassword!=null}">******</c:if></td>
                            </tr>
                            <tr class="odd">
                                <td class="tableHeader">性别</td>
                                <td>${user.sex}</td>
                            </tr>
                            <tr class="odd">
                                <td class="tableHeader">电话：</td>
                                <td> ${user.tel}</td>
                            </tr>
                            <tr class="odd">
                                <td class="tableHeader">邮编</td>
                                <td>${user.post}</td>
                            </tr>
                            <tr class="odd">
                                <td class="tableHeader">地址：</td>
                                <td> ${user.uaddress}</td>
                            </tr>
                            <tr class="odd">
                                <td class="tableHeader">QQ</td>
                                <td>${user.qq}</td>
                            </tr>
                            <tr class="odd">
                                <td class="tableHeader" >角色：</td>
                                <td >
                                    <c:if test="${user.upower==1}">房东</c:if>
                                    <c:if test="${user.upower==0}">租客</c:if>
                                </td>
                            </tr>
                        </table>
					</div>
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
