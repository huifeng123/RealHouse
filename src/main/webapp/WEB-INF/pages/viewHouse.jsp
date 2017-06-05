<%--
  Created by IntelliJ IDEA.
  User: bigjsd
  Date: 2017/6/2
  Time: 11:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/base.jsp" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%@include file="/WEB-INF/_head.jsp"%>



    <form class="form-horizontal" enctype="multipart/form-data" role="form" method="post">
        <div style="width: 70%;margin: auto">
            <%--<input type="button" value="查看评价">
            <input type="button" value="添加">
            <input type="button" value="删除">
            <input type="button" value="修改">--%>
            <ul class="nav nav-tabs">

                <%--<li id="save"><a class="btn btn-info" href="#" onclick="formSubmit('userSaveHouse','_self');this.blur();">保存</a></li>--%>
                <%--<li style="margin-left: 10px" id="back">--%>
                <a class="btn btn-info" href="#" onclick="window.history.go(-1);this.blur();">返回</a></li>
            </ul>
        </div>





            <div >


                <div class="eXtremeTable" >
    <%--width="500"--%>
    <div style="width: 70%;margin: auto">

        <input name="hid" value="${house.hid}" hidden="hidden" />

        <table id="ec_table" class="table table-hover table-bordered" >
            <tr class="warning">
                <td colspan="4" class="tableHeader" style="text-align: center;font-size: 20px;font-family: 微软雅黑">查 看 房 源 信 息</td>

            </tr>

            <tr class="warning">
                <td class="tableHeader">房屋名称</td>
                <td>${house.hname}</td>
                <td class="tableHeader">地域</td>
                <td>北京</td>
            </tr>


            <tr class="warning">
                <td class="tableHeader">地区</td>
                <td>${house.hcountry}</td>
                <td class="tableHeader">小区</td>
                <td>${house.village}</td>
            </tr>



            <tr class="warning">
                <td class="tableHeader">户型</td>
                <td>${house.hstructure}</td>
                <td class="tableHeader">朝向</td>
                <td>${house.face}</td>






            </tr>

            <tr class="warning">
                <td class="tableHeader">房屋面积</td>
                <td>${house.harea}</td>
                <td class="tableHeader">楼层</td>
                <td>${house.hfloor}</td>
            </tr>

            <tr class="warning">
                <td class="tableHeader">出租方式</td>
                <td>${house.lend}</td>
                <td class="tableHeader">房屋价格</td>
                <td>${house.price}</td>
            </tr>

            <tr class="warning">
                <td class="tableHeader">房屋地址</td>
                <td>${house.haddress}</td>
                <td class="tableHeader">装修情况</td>
                <td>${house.hrepair}</td>
            </tr>

            <tr class="warning">
                <td class="tableHeader">有效期</td>
                <td>${house.validate}</td>
                <td class="tableHeader">发布日期</td>

                <td>${house.publishtime}</td>
            </tr>

            <tr class="warning">
                <td class="tableHeader">联系人</td>
                <td>${house.contact}</td>
                <td class="tableHeader">联系电话</td>
                <td>${house.tel}</td>
            </tr>


            <tr class="warning">
                <td class="tableHeader">状态</td>
                <td colspan="3">
                    <c:if test="${house.state==1}">待出租</c:if>
                    <c:if test="${house.state==0}">已出租</c:if>
                </td>

            </tr>




            <tr class="warning">
                <td class="tableHeader">床</td>
                <td>
                    <c:if test="${house.houseInfo.hasbed==1}">有</c:if>
                    <c:if test="${house.houseInfo.hasbed==0}">无</c:if>
                </td>
                <td class="tableHeader">电视</td>
                <td>
                    <c:if test="${house.houseInfo.hastv==1}">有</c:if>
                    <c:if test="${house.houseInfo.hastv==0}">无</c:if>
                </td>
            </tr>

            <tr class="warning">
                <td class="tableHeader">冰箱</td>
                <td>
                    <c:if test="${house.houseInfo.hasfridge==1}">有</c:if>
                    <c:if test="${house.houseInfo.hasfridge==0}">无</c:if>
                </td>
                <td class="tableHeader">洗衣机</td>
                <td>
                    <c:if test="${house.houseInfo.haswasher==1}">有</c:if>
                    <c:if test="${house.houseInfo.haswasher==0}">无</c:if>
                </td>
            </tr>

            <tr class="warning">
                <td class="tableHeader">空调</td>
                <td>
                    <c:if test="${house.houseInfo.haskt==1}">有</c:if>
                   <c:if test="${house.houseInfo.haskt==0}">无</c:if>
                </td>
                <td class="tableHeader">暖气</td>
                <td>
                    <c:if test="${house.houseInfo.hasnq==1}">有</c:if>
                    <c:if test="${house.houseInfo.hasnq==0}">无</c:if>
                </td>
            </tr>

            <tr class="warning">
                <td class="tableHeader">宽带</td>
                <td>
                    <c:if test="${house.houseInfo.hasnet==1}">有</c:if>
                    <c:if test="${house.houseInfo.hasnet==0}">无</c:if>
                </td>
                <td class="tableHeader">家具</td>
                <td>
                    <c:if test="${house.houseInfo.hasfurniture==1}">有</c:if>
                    <c:if test="${house.houseInfo.hasfurniture==0}">无</c:if>
                </td>
            </tr>

            <tr class="warning">
                <td class="tableHeader">天然气</td>
                <td>
                   <c:if test="${house.houseInfo.hasgas==1}">有</c:if>
                   <c:if test="${house.houseInfo.hasgas==0}">无</c:if>
                </td>
                <td class="tableHeader">热水器</td>
                <td>
                    <c:if test="${house.houseInfo.hasrsq==1}">有</c:if>
                    <c:if test="${house.houseInfo.hasrsq==1}">无</c:if>
                </td>
            </tr>
            <tr class="warning" >
                <td class="tableHeader">房屋图片</td>
                <td colspan="3" style="height:80px">
                    <img src="${ctx}/staticfile/images/${house.imgurl}" style="width: 80px;height: 80px"/>
                </td>
            </tr>
            <tr class="warning" >
                <td class="tableHeader">说明</td>
                <td colspan="3" style="height:80px">
                    <textarea style="width:100%;height:80px" name="remark" >${house.remarks}</textarea>
                </td>
            </tr>

        </table>


    </div>

    </div>

    </div>





    </form>



    </div>

    <%@include file="/WEB-INF/_foot.jsp"%>
</body>
</html>
