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

    <a class="navbar-brand mystyle-brand"><span class="glyphicon glyphicon-home"></span></a> </div>
  <div class="collapse navbar-collapse">
    <ul class="nav navbar-nav">
      <li class="li-border"><a class="mystyle-color" href="javascript:void(0)">管理控制台</a></li>
    </ul>
    
    <ul class="nav navbar-nav pull-right">
       <li class="li-border dropdown"><a href="javascript:void(0)" class="mystyle-color" data-toggle="dropdown">
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
                    <form method="post">
					<div class="page-header">
                        <div class="pull-left">
						   <h4>用户中心</h4>      
					    </div>
                    </div>

                    <div >


                        <input class="btn btn-primary" type="submit" value="查看具体信息" formaction="${ctx}/back/houseInfo"/>
                        <input class="btn btn-primary" type="submit" value="查看评价">
                        <input class="btn btn-primary" type="submit" value="添加" formaction="${ctx}/back/houseCreate">
                        <input class="btn btn-primary" type="submit" value="删除" formaction="${ctx}/back/houseDelete">
                        <input class="btn btn-primary" type="submit" value="修改" formaction="${ctx}/back/toHouseUpdate">


                    </div>
					<div>
                        <table id="ec_table" class="table"  width="98%" >

                            <tr>
                                <td class="tableHeader"><input type="checkbox" name="selid" onclick="checkAll('hid',this)"></td>
                                <td class="tableHeader">房屋编号</td>
                                <td class="tableHeader">房屋名称</td>
                                <td class="tableHeader">房东</td>
                                <td class="tableHeader">地域</td>
                                <td class="tableHeader">小区</td>
                                <td class="tableHeader">地区</td>
                                <td class="tableHeader">户型</td>
                                <td class="tableHeader">朝向</td>
                                <td class="tableHeader">房屋面积</td>
                                <td class="tableHeader">楼层</td>


                            </tr>


                            <c:forEach items="${houseList}" var="h" varStatus="status">
                                <tr class="odd" onmouseover="this.className='highlight'" onmouseout="this.className='odd'">
                                    <td><input type="checkbox" name="hid" value="${h.hid}"/></td>
                                    <td>${status.index+1}</td>
                                    <td>${h.hname}</td>
                                    <td>${h.userHouse.uname}</td>
                                    <td>${h.hcountry}</td>
                                    <td>${h.village}</td>
                                    <td>${h.area}</td>
                                    <td>${h.hstructure}</td>
                                    <td>${h.face}</td>
                                    <td>${h.harea}</td>
                                    <td>${h.hfloor}</td>

                                </tr>
                            </c:forEach>


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
