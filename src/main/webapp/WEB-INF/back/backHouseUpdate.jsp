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
                <div class="page-header">
                    <div class="pull-left">
                        <h4>用户中心</h4>
                    </div>
                </div>
                <div class="textbox-title">
                    <img src="../../../staticfile/img/column_add.png"/>
                    <font style="font-size:16pt;font-style: italic;font-weight: bolder;" color="0000a0">房屋修改</font>
                </div>
                <div align="right">
                    <ul class="nav nav-tabs">


                        <li id="back"><a class="btn btn-success" href="#" onclick="window.history.go(-1);this.blur();">返回</a></li>
                    </ul>
                </div>
                <form class="form-horizontal" role="form">
                    <div class="form-group">

                        <div id="menubar">
                            <div id="middleMenubar">
                                <div id="innerMenubar">
                                </div>
                            </div>
                        </div>



                        <div>


                            <div class="eXtremeTable" >
                                <form method="post">
                                    <input class="btn btn-primary" type="submit" value="修改" formaction="${ctx}/back/updateHouseAndInfo"/>

                                    <table id="ec_table" class="table" width="98%" >


                                        <tr class="odd" >
                                            <td class="tableHeader"><input type="text" name="hid" value="${h.hid}"/></td>

                                            <td class="tableHeader"><input type="text" name="uid" value="${user.uid}"/></td>
                                            <td class="tableHeader"><input type="text" name="itmeId" value="${h.houseInfo.itmeId}"/></td>
                                        </tr>

                                        <tr class="warning">
                                            <td class="tableHeader">房东：</td>
                                            <td><input type="text" name="uname" value="${user.uname}"/></td>
                                            <td class="tableHeader">房屋名称</td>
                                            <td><input type="text"  name="hname" value="${h.hname}"/></td>
                                        </tr>
                                        <tr class="warning">
                                            <td class="tableHeader">地域</td>
                                            <td><select name="hcountry" style="width:120px">
                                                <option>---请选择---</option>

                                                <c:forEach items="${houseList}" var="h">
                                                    <option value="${h.hcountry}">${h.hcountry}</option>
                                                </c:forEach>
                                            </select></td>

                                            <td class="tableHeader">小区</td>
                                            <td><input type="text"  name="village"/></td>
                                        </tr>

                                        <tr class="warning">

                                            <td class="tableHeader">地区</td>
                                            <td><input type="text"  name="area" value="${h.area}"/></td>
                                            <td class="tableHeader">户型</td>
                                            <td><select name="hstructure" style="width:120px">
                                                <option>---请选择---</option>

                                                <c:forEach items="${houseList}" var="h">
                                                    <option value="${h.hstructure}">${h.hstructure}</option>
                                                </c:forEach>

                                            </select></td>
                                        </tr>

                                        <tr class="warning">
                                            <td class="tableHeader">朝向</td>
                                            <td><select name="face" style="width:120px">
                                                <option>---请选择---</option>

                                                <c:forEach items="${houseList}" var="h">
                                                    <option value="${h.face}">${h.face}</option>
                                                </c:forEach>

                                            </select></td>
                                            <td class="tableHeader">房屋面积</td>
                                            <td><input type="text"  name="harea" value="${h.harea}"/></td>
                                        </tr>

                                        <tr class="warning">
                                            <td class="tableHeader">楼层</td>
                                            <td><input type="text" name="hfloor" value="${h.hfloor}"/></td>
                                            <td class="tableHeader">出租方式</td>
                                            <td><input type="text"  name="lend" value="${h.lend}"/></td>
                                        </tr>

                                        <tr class="warning">
                                            <td class="tableHeader">房屋价格</td>
                                            <td><input type="text" name="price" value="${h.price}"/></td>
                                            <td class="tableHeader">房屋地址</td>
                                            <td><input type="text"  name="haddress" value="${h.haddress}"/></td>
                                        </tr>

                                        <tr class="warning">
                                            <td class="tableHeader">装修情况</td>
                                            <td><select name="house.hrepair" style="width:120px">
                                                <option>---请选择---</option>

                                                <c:forEach items="${houseList}" var="h">
                                                    <option value="${h.hrepair}">${h.hrepair}</option>
                                                </c:forEach>
                                            </select></td>
                                            <td class="tableHeader">有效期</td>
                                            <td><input type="text"  name="validate" value="${h.validate}"/></td>
                                        </tr>

                                        <tr class="warning">
                                            <td class="tableHeader">发布日期</td>
                                            <td><input type="text" style="width:120px;" name="publishtime"
                                                       onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM-dd'});" value="${h.publishtime}"/></td>
                                            <td class="tableHeader">联系人</td>
                                            <td><input type="text"  name="contact" value="${h.contact}"/></td>
                                        </tr>

                                        <tr class="warning">
                                            <td class="tableHeader">联系电话</td>
                                            <td><input type="text" name="tel" value="${h.tel}"/></td>
                                            <td class="tableHeader">状态</td>
                                            <td><input type="text"  name="state" value="${h.state}"/></td>
                                        </tr>


                                        <tr class="warning">
                                            <td class="tableHeader">床</td>
                                            <td>
                                                <input type="radio" name="hasbed" value="1" <c:if test="${houseInfo.hasbed==1}">checked="checked"</c:if>/>有
                                                <input type="radio" name="hasbed" value="0" <c:if test="${houseInfo.hasbed==0}">checked="checked"</c:if>//>无
                                            </td>
                                            <td class="tableHeader">电视</td>
                                            <td>
                                                <input type="radio" name="hastv" value="1" <c:if test="${houseInfo.hastv==1}">checked="checked"</c:if>/>有
                                                <input type="radio" name="hastv" value="0" <c:if test="${houseInfo.hastv==0}">checked="checked"</c:if>/>无
                                            </td>
                                        </tr>

                                        <tr class="warning">
                                            <td class="tableHeader">冰箱</td>
                                            <td>
                                                <input type="radio" name="hasfridge" value="1" <c:if test="${houseInfo.hasfridge==1}">checked="checked"</c:if>/>有
                                                <input type="radio" name="hasfridge" value="0" <c:if test="${houseInfo.hasfridge==0}">checked="checked"</c:if>/>无
                                            </td>
                                            <td class="tableHeader">洗衣机</td>
                                            <td>
                                                <input type="radio" name="haswasher" value="1" <c:if test="${houseInfo.haswasher==1}">checked="checked"</c:if>/>有
                                                <input type="radio" name="haswasher" value="0" <c:if test="${houseInfo.haswasher==0}}">checked="checked"</c:if>/>无
                                            </td>
                                        </tr>

                                        <tr class="warning">
                                            <td class="tableHeader">空调</td>
                                            <td>
                                                <input type="radio" name="haskt" value="1" <c:if test="${houseInfo.haskt==1}">checked="checked"</c:if>/>有
                                                <input type="radio" name="haskt" value="0" <c:if test="${houseInfo.haskt==0}">checked="checked"</c:if>/>无
                                            </td>
                                            <td class="tableHeader">暖气</td>
                                            <td>
                                                <input type="radio" name="hasnq" value="1" <c:if test="${houseInfo.hasnq==1}">checked="checked"</c:if>/>有
                                                <input type="radio" name="hasnq" value="0" <c:if test="${houseInfo.hasnq==0}">checked="checked"</c:if>/>无
                                            </td>
                                        </tr>

                                        <tr class="warning">
                                            <td class="tableHeader">宽带</td>
                                            <td>
                                                <input type="radio" name="hasnet" value="1" <c:if test="${houseInfo.hasnet==1}">checked="checked"</c:if>/>有
                                                <input type="radio" name="hasnet" value="0" <c:if test="${houseInfo.hasnet==0}">checked="checked"</c:if>/>无
                                            </td>
                                            <td class="tableHeader">家具</td>
                                            <td>
                                                <input type="radio" name="hasfurniture" value="1" <c:if test="${houseInfo.hasfurniture==1}">checked="checked"</c:if>/>有
                                                <input type="radio" name="hasfurniture" value="0" <c:if test="${houseInfo.hasfurniture==0}">checked="checked"</c:if>/>无
                                            </td>
                                        </tr>

                                        <tr class="warning">
                                            <td class="tableHeader">天然气</td>
                                            <td>
                                                <input type="radio" name="hasgas" value="1" <c:if test="${houseInfo.haskt==1}">checked="checked"</c:if>/>有
                                                <input type="radio" name="hasgas" value="0" <c:if test="${houseInfo.haskt==0}">checked="checked"</c:if>/>无
                                            </td>
                                            <td class="tableHeader">热水器</td>
                                            <td>
                                                <input type="radio" name="hasrsq" value="1" <c:if test="${houseInfo.haskt==1}">checked="checked"</c:if>/>有
                                                <input type="radio" name="hasrsq" value="0" <c:if test="${houseInfo.haskt==0}">checked="checked"</c:if>/>无
                                            </td>
                                        </tr>

                                    </table>
                                </form>
                            </div>

                        </div>

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
