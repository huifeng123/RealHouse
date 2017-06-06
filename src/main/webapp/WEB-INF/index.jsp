<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/base.jsp" %>
<!DOCTYPE html>
<html >
<head>
    <title>Home</title>
    <!-- slide -->
    <script src="${ctx}/staticfile/js/responsiveslides.min.js"></script>
    <script>
        $(function () {
            $("#slider").responsiveSlides({
                auto: true,
                speed: 500,
                namespace: "callbacks",
                pager: true,
            });
        });
    </script>
</head>
<body>
<%@include file="/WEB-INF/_head.jsp"%>
<!--//-->
<!--//-->
<div class=" header-right">
    <div class=" banner">
        <div class="slider">
            <div class="callbacks_container">
                <ul class="rslides" id="slider">
                    <li>
                        <div class="banner1">
                            <div class="caption">
                                <h3><span> 高大上的</span>装修风格</h3>
                                <p>等待有品味的你……</p>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="banner2">
                            <div class="caption">
                                <h3><span> 高大上的</span>装修风格</h3>
                                <p>等待有品味的你……</p>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="banner3">
                            <div class="caption">
                                <h3><span> 高大上的</span>装修风格</h3>
                                <p>等待有品味的你……</p>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>

        <%@ include file="/serch.jsp"%>

    </div>

</div>

<!--header-bottom-->
<div class="banner-bottom-top">
    <div class="container">
        <div class="bottom-header">
            <div class="header-bottom">
                <div class=" bottom-head">
                    <a href="buy.html">
                        <div class="buy-media">
                            <i class="buy"> </i>
                            <h6>买房</h6>
                        </div>
                    </a>
                </div>
                <div class=" bottom-head">
                    <a href="${ctx}/toBuy">
                        <div class="buy-media">
                            <i class="rent"> </i>
                            <h6>租房</h6>
                        </div>
                    </a>
                </div>
                <div class=" bottom-head">
                    <a href="${ctx}/tosingle">
                        <div class="buy-media">
                            <i class="pg"> </i>
                            <h6>single</h6>
                        </div>
                    </a>
                </div>
                <div class=" bottom-head">
                    <a href="${ctx}/toMap">
                        <div class="buy-media">
                            <i class="sell"> </i>
                            <h6>找房</h6>
                        </div>
                    </a>
                </div>
                <div class=" bottom-head">
                    <a href="loan.html">
                        <div class="buy-media">
                            <i class="loan"> </i>
                            <h6>Home Loans</h6>
                        </div>
                    </a>
                </div>
                <div class=" bottom-head">
                    <a href="${ctx}/toImpress">
                        <div class="buy-media">
                            <i class="apart"> </i>
                            <h6>印象搜房</h6>
                        </div>
                    </a>
                </div>
                <div class=" bottom-head">
                    <a href="dealers.html">
                        <div class="buy-media">
                            <i class="deal"> </i>
                            <h6>Dealers</h6>
                        </div>
                    </a>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
</div>
<!--//-->

<!--//header-bottom-->


<!--//header-->
<!--content-->
<div class="content">
    <div class="content-grid">
        <div class="container">
            <h3>热门推荐</h3>
            <div class="col-md-4 box_2">
                <a href="/toSingle/" class="mask">
                    <img class="img-responsive zoom-img" src="${ctx}/staticfile/images/pc4.jpg" alt="">
                    <span class="four">45,688￥</span>
                </a>
                <div class="most-1">
                    <h5><a href="toBuy">个性别墅</a></h5>
                    <p>点击查看</p>
                </div>
            </div>
            <div class="col-md-4 box_2">
                <a href="toBuy" class="mask">
                    <img class="img-responsive zoom-img" src="${ctx}/staticfile/images/pc5.jpg" alt="">
                    <span class="four">66,688￥</span>
                </a>
                <div class="most-1">
                    <h5><a href="toBuy">洋气小别墅</a></h5>
                    <p>点击查看</p>
                </div>

            </div>
            <div class="col-md-4 box_2">
                <a href="toBuy" class="mask">
                    <img class="img-responsive zoom-img" src="${ctx}/staticfile/images/pc3.jpg" alt="" >
                    <span class="four">55,688￥</span>
                </a>
                <div class="most-1">
                    <h5><a href="toBuy">精典复式楼</a></h5>
                    <p>点击查看</p>
                </div>

            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
    <!--热门区域-->
    <div class="container">
        <div class="top-grid"">
            <h3>热门区域</h3>
            <div class="grid-at">
                <div class="col-md-3 grid-city">
                    <div class="grid-lo">
                        <a href="/toHotArea?hcountry=朝阳">
                            <figure class="effect-layla">
                                <img class=" img-responsive" src="${ctx}/staticfile/images/ce.jpg" alt="img06">
                                <figcaption>
                                    <h4>朝阳区</h4>

                                </figcaption>
                            </figure>
                        </a>
                    </div>
                </div>
                <div class="col-md-3 grid-city">
                    <div class="grid-lo">
                        <a href="/toHotArea?hcountry=西城">
                            <figure class="effect-layla">
                                <img class=" img-responsive" src="${ctx}/staticfile/images/ce1.jpg" alt="img06">
                                <figcaption>
                                    <h4>西城区</h4>

                                </figcaption>
                            </figure>
                        </a>
                    </div>
                </div>
                <div class="col-md-6 grid-city grid-city1">
                    <div class="grid-me">
                        <div class="col-md-8 grid-lo1">
                            <div class=" grid-lo">
                                <a href="/toHotArea?hcountry=东城">
                                    <figure class="effect-layla">
                                        <img class=" img-responsive" src="${ctx}/staticfile/images/ce2.jpg" alt="img06">
                                        <figcaption>
                                            <h4 class="effect1">东城区</h4>

                                        </figcaption>
                                    </figure>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-4 grid-lo2">
                            <div class=" grid-lo">
                                <a href="//toHotArea?hcountry=延庆">
                                    <figure class="effect-layla">
                                        <img class=" img-responsive" src="${ctx}/staticfile/images/ce3.jpg" alt="img06">
                                        <figcaption>
                                            <h4 class="effect2">延庆区</h4>

                                        </figcaption>
                                    </figure>
                                </a>
                            </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="grid-me">
                        <div class="col-md-6 grid-lo3">
                            <div class=" grid-lo">
                                <a href="//toHotArea?hcountry=昌平">
                                    <figure class="effect-layla">
                                        <img class="img-responsive" src="${ctx}/staticfile/images/ce4.jpg" alt="img06">
                                        <figcaption>
                                            <h4 class="effect3">昌平区</h4>

                                        </figcaption>
                                    </figure>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-6 grid-lo4">
                            <div class=" grid-lo">
                                <a href="//toHotArea?hcountry=海淀">
                                    <figure class="effect-layla">
                                        <img class="img-responsive" src="${ctx}/staticfile/images/ce5.jpg" alt="img06">
                                        <figcaption>
                                            <h4 class="effect3">海淀区</h4>

                                        </figcaption>
                                    </figure>
                                </a>
                            </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>

                <div class="clearfix"> </div>
            </div>

        </div>
    </div>
    <!--/热门区域-->
    <!--features-->
    <div class="content-middle">
        <div class="container">
            <div class="mid-content">
                <h3>最好的功能</h3>
                <p>
                    与流行的信念相反，乱数假文不是简单的随机文本。它植根于一个古典拉丁文学从公元前45年，使它超过2000岁。</p>
                <a class="hvr-sweep-to-right more-in" href="toBuy">查看更多</a>
            </div>
        </div>
    </div>
    <!--//features-->
    <!--phone-->
    <div class="phone">
        <div class="container">
            <div class="col-md-6">
                <img src="${ctx}/staticfile/images/ph1.png" class="img-responsive" alt=""/>
            </div>
            <div class="col-md-6 phone-text">
                <h4>您可以&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;随时随地找房</h4>
                <div class="text-1">
                    <h5>附近搜房</h5>
                    <p>您可以查看您附近的房源</p>
                </div>
                <div class="text-1">
                    <h5>地图找房</h5>
                    <p>通过地图来查看指定地点的房源信息</p>
                </div>
                <div class="text-1">
                    <h5>快速检索详情信息</h5>
                    <p>您可以通过手机来快捷查看房源详情信息</p>
                </div>
                <a href="javascript:void(0)" class="hvr-sweep-to-right more">下载APP</a>
            </div>
        </div>
    </div>
    <!--//phone-->
    <!--project--->
    <div class="project">
        <div class="container">
            <h3>房源展示</h3>
            <div class="project-top">
                <div class="col-md-3 project-grid">
                    <div class="project-grid-top">
                        <a href="toBuy" class="mask"><img src="${ctx}/staticfile/images/ga.jpg" class="img-responsive zoom-img" alt=""/></a>
                        <div class="col-md1">
                            <div class="col-md2">
                                <div class="col-md3">
                                    <span class="star"> 4.6</span>
                                </div>
                                <div class="col-md4">
                                    <strong>舒适商品房</strong>
                                    <small>20平米</small>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <p>一居室，两居室，三居室</p>
                            <p class="cost">￥46,688</p>
                            <a href="toBuy" class="hvr-sweep-to-right more">查看详情</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 project-grid">
                    <div class="project-grid-top">
                        <a href="toBuy" class="mask"><img src="${ctx}/staticfile/images/ga1.jpg" class="img-responsive zoom-img" alt=""/></a>
                        <div class="col-md1">
                            <div class="col-md2">
                                <div class="col-md3">
                                    <span class="star"> 4.5</span>
                                </div>
                                <div class="col-md4">
                                    <strong>个性小楼房</strong>
                                    <small>33平米</small>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <p>二居室，三居室</p>
                            <p class="cost">$67,288</p>
                            <a href="toBuy" class="hvr-sweep-to-right more">查看详情</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 project-grid">
                    <div class="project-grid-top">
                        <a href="toBuy" class="mask"><img src="${ctx}/staticfile/images/ga2.jpg" class="img-responsive zoom-img" alt=""/></a>
                        <div class="col-md1">
                            <div class="col-md2">
                                <div class="col-md3">
                                    <span class="star"> 4.5</span>
                                </div>
                                <div class="col-md4">
                                    <strong>豪华小别墅</strong>
                                    <small>200平米</small>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <p>两居室，三居室，四居室</p>
                            <p class="cost">$65,000</p>
                            <a href="toBuy" class="hvr-sweep-to-right more">查看详情</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 project-grid">
                    <div class="project-grid-top">
                        <a href="toBuy" class="mask"><img src="${ctx}/staticfile/images/ga3.jpg" class="img-responsive zoom-img" alt=""/></a>
                        <div class="col-md1">
                            <div class="col-md2">
                                <div class="col-md3">
                                    <span class="star"> 4.5</span>
                                </div>
                                <div class="col-md4">
                                    <strong>风情小高层</strong>
                                    <small>60平米</small>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <p>两居室</p>
                            <p class="cost">￥78,180</p>
                            <a href="、toBuy" class="hvr-sweep-to-right more">查看详情</a>
                        </div>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
    <!--//project-->
    <!--test-->
    <div class="content-bottom">
        <div class="container">
            <h3>热门评论</h3>
            <div class="col-md-6 name-in">
                <div class=" bottom-in">
                    <p class="para-in">在恋家找房，我放心，服务很周到，价格也很合理</p>
                    <i class="dolor"> </i>
                    <div class="men-grid">
                        <a href="#" class="men-top"><img class="img-responsive men-top" src="${ctx}/staticfile/images/te.jpg" alt=""></a>
                        <div class="men">
                            <span>Roger V. Coates</span>
                            <p>Ut enim ad minim</p>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>
                <div class=" bottom-in">
                    <p class="para-in">恋家价格合理，服务周全，对于租户都不用考虑太多，恋家已经为我们打理好了一切。</p>
                    <i class="dolor"> </i>
                    <div class="men-grid">
                        <a href="#" class="men-top"><img class="img-responsive " src="${ctx}/staticfile/images/te2.jpg" alt=""></a>
                        <div class="men">
                            <span>Ann K. Perez</span>
                            <p>Ut enim ad minim</p>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6  name-on">
                <div class="bottom-in ">
                    <p class="para-in">每次租房都是在恋家找，一开始是朋友介绍的，后来发现恋家真实不错的网站。点个赞！！！</p>
                    <i class="dolor"> </i>
                    <div class="men-grid">
                        <a href="#" class="men-top"><img class="img-responsive " src="${ctx}/staticfile/images/te1.jpg" alt=""></a>
                        <div class="men">
                            <span>Nancy M. Picker</span>
                            <p>Ut enim ad minim</p>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
    <!--//test-->
    <!--partners-->
    <div class="content-bottom1">
        <h3>合作伙伴</h3>
        <div class="container">
            <ul>
                <li><a href="#"><img class="img-responsive" src="${ctx}/staticfile/images/lg.png" alt=""></a></li>
                <li><a href="#"><img class="img-responsive" src="${ctx}/staticfile/images/lg1.png" alt=""></a></li>
                <li><a href="#"><img class="img-responsive" src="${ctx}/staticfile/images/lg2.png" alt=""></a></li>
                <li><a href="#"><img class="img-responsive" src="${ctx}/staticfile/images/lg3.png" alt=""></a></li>
                <li><a href="#"><img class="img-responsive" src="${ctx}/staticfile/images/lg4.png" alt=""></a></li>
                <div class="clearfix"> </div>
            </ul>
            <ul>
                <li><a href="#"><img class="img-responsive" src="${ctx}/staticfile/images/lg5.png" alt=""></a></li>
                <li><a href="#"><img class="img-responsive" src="${ctx}/staticfile/images/lg6.png" alt=""></a></li>
                <li><a href="#"><img class="img-responsive" src="${ctx}/staticfile/images/lg7.png" alt=""></a></li>
                <li><a href="#"><img class="img-responsive" src="${ctx}/staticfile/images/lg8.png" alt=""></a></li>
                <li><a href="#"><img class="img-responsive" src="${ctx}/staticfile/images/lg9.png" alt=""></a></li>
                <div class="clearfix"> </div>
            </ul>
        </div>
    </div>
    <!--//partners-->
</div>
<!--//partners-->
<%@include file="_foot.jsp"%>
</div>
<%--<script type="text/javascript">
    $(document).ready(function () {
       $("figcaption").click(function () {
           alert("gaedhsrte");
       }); 
    });
</script>--%>
</body>
</html>
