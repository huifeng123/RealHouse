<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/base.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>List</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Real Home Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />

</head>
<body>
<!--header-->
<%@include file="/WEB-INF/_head.jsp"%>
<!--//-->
<div class=" banner-buying">
    <div class=" container">
        <h3>恋家</h3>
        <!---->
        <div class="menu-right">
            <ul class="menu">
                <li class="item1"><a href="#"> 菜单<i class="glyphicon glyphicon-menu-down"> </i> </a>
                    <ul class="cute">
                        <li class="subitem1"><a href="/toindex">主页</a></li>
                        <li class="subitem2"><a href="/toBuy">租房</a></li>
                        <li class="subitem3"><a href="/toMap">按图找房</a></li>
                        <li class="subitem1"><a href="/toBuy">买房</a></li>
                        <li class="subitem2"><a href="/toImpress">印象搜房</a></li>
                        <li class="subitem3"><a href="/about">关于我们</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="clearfix"> </div>
        <!--initiate accordion-->
        <script type="text/javascript">
            $(function() {
                var menu_ul = $('.menu > li > ul'),
                        menu_a  = $('.menu > li > a');
                menu_ul.hide();
                menu_a.click(function(e) {
                    e.preventDefault();
                    if(!$(this).hasClass('active')) {
                        menu_a.removeClass('active');
                        menu_ul.filter(':visible').slideUp('normal');
                        $(this).addClass('active').next().stop(true,true).slideDown('normal');
                    } else {
                        $(this).removeClass('active');
                        $(this).next().stop(true,true).slideUp('normal');
                    }
                });

            });
        </script>

    </div>
</div>
<!--//header-->
<div class="container">

    <div>
        <%@ include file="/serch.jsp"%>
    </div>

    <!--price-->
   <%-- <form method="post">

    </form>--%>
    <form method="post"  >
    <div class="price">
        <div class="price-grid">
            <div class="col-sm-4 price-top">
                <h4>城市</h4>
                <select class="in-drop" name="city">
                    <option>---请选择城市---</option>
                    <option>北京</option>
                    <option>Tokyo</option>
                    <option>London</option>
                    <option>Paris</option>
                    <option>Dhubai</option>
                    <option>New Jerrsey</option>
                    <option>Hongkong</option>
                    <option>New York</option>
                    <option>Rome</option>
                    <option>Sydney</option>
                    <option>Florence</option>
                    <option>Istanbul</option>
                    <option>Brezil</option>
                    <option>Canda</option>
                    <option>Malaysia</option>
                    <option>Singapore</option>
                    <option>Taiwan</option>
                    <option>Spain</option>
                    <option>More</option>
                </select>
            </div>
            <div class="col-sm-4 price-top">
                <h4>区域</h4>
                <select class="in-drop" name="hcountry">
                    <option value=null>---请选择区域---</option>
                    <option>海淀</option>
                    <option>朝阳</option>
                    <option>通州</option>
                    <option>昌平</option>
                    <option>丰台</option>
                    <option>顺义</option>
                    <option>东城</option>
                    <option>西城</option>
                </select>
            </div>
            <div class="col-sm-4 price-top">
                <h4>房屋结构</h4>
                <select class="in-drop" name="hstructure">
                    <option value=null>---请选择结构---</option>
                    <option >1室1厅</option>
                    <option >2室1厅</option>
                    <option >2室2厅</option>
                    <option >3室1厅</option>
                    <option >3室2厅</option>
                    <option >6室2厅</option>
                </select>
            </div>
            <div class="clearfix"> </div>
            <div class="col-sm-6 price-top1">
                <h4>价格区间</h4>
                <ul>
                    <li>
                        <select class="in-drop" name="minPrice">
                            <option value="0">最低价</option>
                            <option value="3000">3000 元 </option>
                            <option value="5000">5000 元</option>
                            <option value="10000">10000 元</option>
                            <option value="15000">15000 元</option>
                            <option value="20000">20000 元</option>
                            <option value="30000">30000 元</option>

                        </select>
                    </li>
                    <span>-</span>
                    <li>
                        <select class="in-drop" name="maxPrice">
                            <option value=100000>最高价</option>
                            <option value="1500">1500</option>
                            <option value="3000">3000 元 </option>
                            <option value="5000">5000 元</option>
                            <option value="10000">10000 元</option>
                            <option value="15000">15000 元</option>
                            <option value="20000">20000 元</option>
                            <option value="30000">30000 元</option>
                            <option value="40000">40000 元</option>
                        </select>
                    </li>
                </ul>
            </div>
            <div class="col-sm-6 price-top1">
                <h4>面积区间</h4>
                <ul>
                    <li>
                        <select class="in-drop" name="minArea">
                            <option value="0">最小面积</option>
                            <option value="40">40平方米</option>
                            <option value="50">50平方米</option>
                            <option value="80">80平方米</option>
                            <option value="100">100平方米</option>
                            <option value="150">150平方米</option>
                            <option value="200">200平方米</option>
                            <option value="300">300平方米</option>
                            <option value="400">400平方米</option>

                        </select>
                    </li>
                    <span>-</span>
                    <li>
                        <select class="in-drop" name="maxArea">
                            <option value="1000">最大面积</option>
                            <option value="40">40平方米</option>
                            <option value="50">50平方米</option>
                            <option value="80">80平方米</option>
                            <option value="100">100平方米</option>
                            <option value="150">150平方米</option>
                            <option value="200">200平方米</option>
                            <option value="300">300平方米</option>
                            <option value="400">400平方米</option>
                            <option value="500">500平方米</option>
                        </select>
                    </li>
                </ul>
            </div>
            <div class="clearfix"> </div>
        </div>
        <div class="right-side">
            <input type="submit" class="btn btn-default" formaction="/toSearch">
        </div>


    </div>
    </form>
    <!---->
    <div class="container">

        <div class="buy-single">

            <h3>选你所选</h3>
            <div class="box-sin">
                <div class="col-md-9 single-box">

                    <c:forEach items="${houseList}" var="h" begin="0" end="5" >
                       <div class="box-col">
                           <div class=" col-sm-7 left-side ">
                               <a href="/tosingle?hid=${h.hid}"> <img class="img-responsive" src="${h.imgurl}" alt=""></a>
                           </div>
                           <div class="  col-sm-5 middle-side">

                               <h4>${h.hname}</h4>
                               <p><span class="bath">户型</span>: <span class="two">${h.hstructure}</span></p>
                               <p>  <span class="bath1">面积</span>: <span class="two">${h.harea}</span></p>
                               <p><span class="bath2">朝向</span>: <span class="two">${h.face}</span></p>
                               <p><span class="bath3">小区</span>:<span class="two"> ${h.village}</span></p>
                               <p><span class="bath4">出租</span> : <span class="two">${h.lend}</span></p>
                               <p><span class="bath5">价格</span>:<span class="two"> ${h.price} 元</span></p>
                               <div class="   right-side">
                                   <a href="/tosingle?hid=${h.hid}" class="hvr-sweep-to-right more" >更多信息</a>
                               </div>

                           </div>
                           <div class="clearfix">
                           </div>
                       </div>
                    </c:forEach>








                </div>
            </div>
            <div class="col-md-3 map-single-bottom">
               <%--地图信息--%>

                <div class="map-single">
                    <iframe src="/tomap"></iframe>
                </div>



                <div class="single-box-right">
                    <h4>特色社区</h4>
                    <c:forEach var="goodHouse" items="${goodList}" begin="0" end="8">
                    <div class="single-box-img">
                        <div class="box-img">
                            <a href="/tosingle?hid=${goodHouse.hid}"><img class="img-responsive" src="${goodHouse.imgurl}" alt=""></a>
                        </div>
                        <div class="box-text">
                            <p><a href="/tosingle?hid=${goodHouse.hid}">${goodHouse.hname}</a></p>
                            <a href="/tosingle?hid=${goodHouse.hid}" class="in-box">更多信息</a>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    </c:forEach>

                </div>
            </div>

            <div class="clearfix"> </div>

            <div class="nav-page">
                <nav>
                    <ul class="pagination">
                        <li class="disabled"><a href="/toBuy" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
                        <li class="active"><a href="/toBuy?end=5">1 <span class="sr-only">(current)</span></a></li>

                        <li><a href="/toBuy?end=10">2</a></li>
                        <li><a href="/toBuy?end=15">3</a></li>
                        <li><a href="/toBuy?end=20">4</a></li>
                        <li><a href="/toBuy?end=25">5</a></li>
                        <li><a href="/toBuy" aria-label="Next"><span aria-hidden="true">»</span></a></li>
                    </ul>
                </nav>
            </div>
        </div>

    </div>


    <!---->
<!--premium-project-->
<div class="premium">
    <div class="pre-top">
        <h5>Lorem Ipsum is simply dummy</h5>
        <p>$7.24 元-4.36 元 2-3 BHK, Lorem Ipsum</p>
    </div>
</div>

<%@include file="/WEB-INF/_foot.jsp"%>
</body>
</html>