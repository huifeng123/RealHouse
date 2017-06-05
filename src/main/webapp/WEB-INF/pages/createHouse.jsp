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

                <li id="save"><a class="btn btn-info" href="#" onclick="formSubmit('saveHouse','_self');this.blur();">发布</a></li>
                <li style="margin-left: 10px" id="back"><a class="btn btn-info" href="#" onclick="window.history.go(-1);this.blur();">返回</a></li>
            </ul>
        </div>





            <div >


                <div class="eXtremeTable" >
    <%--width="500"--%>
    <div style="width: 70%;margin: auto">
        <input name="uid" value="${session_user.uid}" hidden="hidden"/>
        <input name="state" value="${state}" hidden="hidden"/>

        <table id="ec_table" class="table table-hover table-bordered" >
            <tr class="warning">
                <td colspan="4" class="tableHeader" style="text-align: center;font-size: 20px;font-family: 微软雅黑">发 布 房 源 信 息</td>

            </tr>

            <tr class="warning">
                <td class="tableHeader">房屋名称</td>
                <td><input type="text"  name="hname" /></td>
                <td class="tableHeader">地域</td>
                <td><select name="hcountry" style="width:120px">
                    <option value="">---请选择---</option>
                    <option value="北京">北京</option>
                </select></td>
            </tr>


            <tr class="warning">
                <td class="tableHeader">地区</td>
                <td><select name="area" style="width:120px">
                    <option value="">---请选择---</option>
                    <c:forEach items="${countrySet}" var="h">
                        <option value="${h}">${h}</option>
                    </c:forEach>
                </select></td>
                <td class="tableHeader">小区</td>
                <td><input type="text"  name="village"/></td>
            </tr>



            <tr class="warning">
                <td class="tableHeader">户型</td>
                <td><select name="hstructure" style="width:120px">
                    <option value="">---请选择---</option>

                    <c:forEach items="${hstructureSet}" var="h">
                        <option value="${h}">${h}</option>
                    </c:forEach>
                </select></td>
                <td class="tableHeader">朝向</td>
                <td><select name="face" style="width:120px">
                    <option value="">---请选择---</option>

                    <c:forEach items="${faceSet}" var="h">
                        <option value="${h}">${h}</option>
                    </c:forEach>

                </select></td>






            </tr>

            <tr class="warning">
                <td class="tableHeader">房屋面积</td>
                <td><input type="text"  name="harea"/></td>
                <td class="tableHeader">楼层</td>
                <td><input type="text" name="hfloor"/></td>
            </tr>

            <tr class="warning">
                <td class="tableHeader">出租方式</td>
                <td><input type="text"  name="lend"/></td>
                <td class="tableHeader">房屋价格</td>
                <td><input type="text" name="price"/></td>
            </tr>

            <tr class="warning">
                <td class="tableHeader">房屋地址</td>
                <td><input type="text"  name="haddress"/></td>
                <td class="tableHeader">装修情况</td>
                <td><select name="hrepair" style="width:120px">
                    <option value="">---请选择---</option>

                    <c:forEach items="${hrepairSet}" var="h">
                        <option value="${h}">${h}</option>
                    </c:forEach>
                </select></td>
            </tr>

            <tr class="warning">
                <td class="tableHeader">有效期</td>
                <td><input type="text"  name="validate"/></td>
                <td class="tableHeader">发布日期</td>

                <td><input type="text" style="width:120px;" name="publishtime"
                           onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM-dd'});"/></td>
            </tr>

            <tr class="warning">
                <td class="tableHeader">联系人</td>
                <td><input type="text"  name="contact"/></td>
                <td class="tableHeader">联系电话</td>
                <td><input type="text" name="tel"/></td>
            </tr>



            <tr class="warning">
                <td class="tableHeader">床</td>
                <td>
                    <input type="radio" name="houseInfo.hasbed" value="1" />有
                    <input type="radio" name="houseInfo.hasbed" value="0" checked="checked"/>无
                </td>
                <td class="tableHeader">电视</td>
                <td>
                    <input type="radio" name="houseInfo.hastv" value="1" />有
                    <input type="radio" name="houseInfo.hastv" value="0"  checked="checked"/>无
                </td>
            </tr>

            <tr class="warning">
                <td class="tableHeader">冰箱</td>
                <td>
                    <input type="radio" name="houseInfo.hasfridge" value="1" />有
                    <input type="radio" name="houseInfo.hasfridge" value="0" checked="checked"/>无
                </td>
                <td class="tableHeader">洗衣机</td>
                <td>
                    <input type="radio" name="houseInfo.haswasher" value="1" />有
                    <input type="radio" name="houseInfo.haswasher" value="0" checked="checked"/>无
                </td>
            </tr>

            <tr class="warning">
                <td class="tableHeader">空调</td>
                <td>
                    <input type="radio" name="houseInfo.haskt" value="1" />有
                    <input type="radio" name="houseInfo.haskt" value="0" checked="checked"/>无
                </td>
                <td class="tableHeader">暖气</td>
                <td>
                    <input type="radio" name="houseInfo.hasnq" value="1" />有
                    <input type="radio" name="houseInfo.hasnq" value="0" checked="checked"/>无
                </td>
            </tr>

            <tr class="warning">
                <td class="tableHeader">宽带</td>
                <td>
                    <input type="radio" name="houseInfo.hasnet" value="1" />有
                    <input type="radio" name="houseInfo.hasnet" value="0" checked="checked"/>无
                </td>
                <td class="tableHeader">家具</td>
                <td>
                    <input type="radio" name="houseInfo.hasfurniture" value="1" />有
                    <input type="radio" name="houseInfo.hasfurniture" value="0" checked="checked"/>无
                </td>
            </tr>

            <tr class="warning">
                <td class="tableHeader">天然气</td>
                <td>
                    <input type="radio" name="houseInfo.hasgas" value="1" />有
                    <input type="radio" name="houseInfo.hasgas" value="0" checked="checked"/>无
                </td>
                <td class="tableHeader">热水器</td>
                <td>
                    <input type="radio" name="houseInfo.hasrsq" value="1" />有
                    <input type="radio" name="houseInfo.hasrsq" value="0" checked="checked"/>无
                </td>
            </tr>
            <tr class="warning" >
                <td class="tableHeader">上传图片</td>
                <td colspan="3" style="height:80px">
                    <input type="file" name="file">
                    <span>${msg}</span>
                </td>
            </tr>
            <tr class="warning" >
                <td class="tableHeader">说明</td>
                <td colspan="3" style="height:80px">
                    <textarea style="width:100%;height:80px" name="remark"></textarea>
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
