<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/base.jsp" %>
<!DOCTYPE html>

<html>
<head>
    <title>Title</title>
</head>
<body>
<%@include file="/WEB-INF/_head.jsp"%>
<div class=" banner-buying">
    <div class=" container">
        <h3><span>房屋详情</span></h3>
        <!---->
        <div class="menu-right">
            <ul class="menu">
                <li class="item1"><a href="#"> Menu<i class="glyphicon glyphicon-menu-down"> </i> </a>
                    <ul class="cute">
                        <li class="subitem1"><a href="buy.html">Buy </a></li>
                        <li class="subitem2"><a href="buy.html">Rent </a></li>
                        <li class="subitem3"><a href="buy.html">Hostels </a></li>
                        <li class="subitem1"><a href="buy.html">Resale </a></li>
                        <li class="subitem2"><a href="loan.html">Home Loan</a></li>
                        <li class="subitem3"><a href="buy.html">Apartment </a></li>
                        <li class="subitem3"><a href="dealers.html">Dealers</a></li>
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
                    if($(this).hasClass('active')) {
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
<!---->

<div class=" container">
    <h3><span></span></h3>
    <!---->
    <div class="menu-right">
        <ul class="menu">
            <li class="item1"><a href="#"> Menu<i class="glyphicon glyphicon-menu-down"> </i> </a>
                <ul class="cute">
                    <li class="subitem1"><a href="buy.html">Buy </a></li>
                    <li class="subitem2"><a href="buy.html">Rent </a></li>
                    <li class="subitem3"><a href="buy.html">Hostels </a></li>
                    <li class="subitem1"><a href="buy.html">Resale </a></li>
                    <li class="subitem2"><a href="loan.html">Home Loan</a></li>
                    <li class="subitem3"><a href="buy.html">Apartment </a></li>
                    <li class="subitem3"><a href="dealers.html">Dealers</a></li>
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

<!--//header-->
<!---->

<div class="container">

    <div class="buy-single-single">

        <div class="col-md-9 single-box">

            <div class=" buying-top">
                <div class="flexslider">
                    <ul class="slides">
                        <li data-thumb="${ctx}/staticfile/images/ss.jpg">
                            <img src="${ctx}/staticfile/images/ss.jpg" />
                        </li>
                        <li data-thumb="${ctx}/staticfile/images/ss1.jpg">
                            <img src="${ctx}/staticfile/images/ss1.jpg" />
                        </li>
                        <li data-thumb="${ctx}/staticfile/images/ss2.jpg">
                            <img src="${ctx}/staticfile/images/ss2.jpg" />
                        </li>
                        <li data-thumb="${ctx}/staticfile/images/ss3.jpg">
                            <img src="${ctx}/staticfile/images/ss3.jpg" />
                        </li>
                    </ul>
                </div>
                <!-- FlexSlider -->
                <script defer src="${ctx}/staticfile/js/jquery.flexslider.js"></script>
                <link rel="stylesheet" href="${ctx}/staticfile/css/flexslider.css" type="text/css" media="screen" />

                <script>
                    // Can also be used with $(document).ready()
                    $(window).load(function() {
                        $('.flexslider').flexslider({
                            animation: "slide",
                            controlNav: "thumbnails"
                        });
                    });
                </script>
            </div>
            <div class="buy-sin-single">
                <div class="col-sm-5 middle-side immediate">
                    <h4>房屋详情</h4>
                    <p><span class="bath">户型 </span>: <span class="two">${house.hstructure}</span></p>
                    <p><span class="bath">区域 </span>: <span class="two">${house.hcountry}</span></p>
                    <p><span class="bath">面积 </span>: <span class="two">${house.harea}</span></p>
                    <p><span class="bath">装修 </span>:<span class="two"> ${house.hrepair}</span></p>
                    <p><span class="bath">朝向</span> : <span class="two">${house.face}</span></p>
                    <p><span class="bath">价格 </span>:<span class="two"> ${house.price}</span></p>
                    <p><span class="bath">地址 </span>:<span class="two"> ${house.haddress}</span></p>
                    <p><span class="bath">出租 </span>:<span class="two"> ${house.lend}</span></p>
                    <p><span class="bath">楼层 </span>:<span class="two"> ${house.hfloor}</span></p>
                    <p><span class="bath">评价 </span>:<span class="two"> ${house.think}</span></p>
                    <div id="house_info" class="col-md-12"><span class="label label-default">冰箱</span>
                        <span class="label label-default">床</span>
                        <span class="label label-default" >电视</span>
                        <span class="label label-default">洗衣机</span>
                        <span class="label label-default">空调</span>
                        <span class="label label-default">暖气</span>
                        <span class="label label-default">宽带</span>
                        <span class="label label-default">家具</span>
                        <span class="label label-default">天然气</span>
                        <span class="label label-default">热水器</span>
                    </div>

                    <div class="   right-side">
                        <a href="contact.html" class="hvr-sweep-to-right more" >联系人</a>
                    </div>
                    <div><p><span class="bath">${house.contact}</span> : <span class="two">${house.tel}</span></p></div>
                </div>
                <div class="col-sm-7 buy-sin">
                    <h4>详情描述</h4>
                    <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature</p>
                    <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC </p>
                    <p></p>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="map-buy-single">
                <h4>地图信息</h4>
                <div class="map-buy-single1">
                    <iframe src="/tomap?village=${house.village}">

                    </iframe>

                </div>
            </div>
            <div class="video-pre">
                <h4>视频</h4>
                <iframe ></iframe>

            </div>
        </div>




        <div class="col-md-3">
            <div class="single-box-right right-immediate">
                <h4>同小区房源</h4>
                <c:forEach items="${sameVillage}" var="h" >
                    <div class="single-box-img ">
                        <div class="box-img">
                            <a href="single.action" ><img class="img-responsive" src="${h.imgurl}" alt=""></a>
                        </div>
                        <div class="box-text">
                            <p><a href="single.action">${h.hname}</a></p>
                            <a href="single.action" class="in-box">More Info</a>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </c:forEach>


            </div>

        </div>
        <div class="clearfix"> </div>
    </div>
</div>

<!---->
<div class="container">
    <div class="future">
        <h3 >精品社区</h3>
        <div class="content-bottom-in">

            <ul id="flexiselDemo1">
                <c:forEach items="${goodList}" var="goodhouse">
                    <li><div class="project-fur">
                        <a href="single.html" ><img class="img-responsive" src="${goodhouse.imgurl}" alt="" />	</a>
                        <div class="fur">
                            <div class="fur1">
                                <span class="fur-money">${goodhouse.price} 元</span>
                                <h6 class="fur-name"><a href="/tosingle?hid=${goodhouse.hid}">${goodhouse.hname}</a></h6>
                                <span>${goodhouse.village}</span>
                            </div>
                            <div class="fur2">
                                <span>${goodhouse.hstructure}</span>
                            </div>
                        </div>
                    </div></li>
                </c:forEach>


            </ul>
            <script type="text/javascript">
                $(window).load(function() {
                    $("#flexiselDemo1").flexisel({
                        visibleItems: 4,
                        animationSpeed: 1000,
                        autoPlay: true,
                        autoPlaySpeed: 3000,
                        pauseOnHover: true,
                        enableResponsiveBreakpoints: true,
                        responsiveBreakpoints: {
                            portrait: {
                                changePoint:480,
                                visibleItems: 1
                            },
                            landscape: {
                                changePoint:640,
                                visibleItems: 2
                            },
                            tablet: {
                                changePoint:768,
                                visibleItems: 3
                            }
                        }
                    });

                });
            </script>
            <script type="text/javascript" src="${ctx}/staticfile/js/jquery.flexisel.js"></script>
        </div>
    </div>

</div>
<%@include file="/WEB-INF/_foot.jsp"%>
</body>
</html>
