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
                    <span class="four">40,000$</span>
                </a>
                <div class="most-1">
                    <h5><a href="single.html">Contrary to popular</a></h5>
                    <p>Lorem ipsum</p>
                </div>
            </div>
            <div class="col-md-4 box_2">
                <a href="single.html" class="mask">
                    <img class="img-responsive zoom-img" src="${ctx}/staticfile/images/pc5.jpg" alt="">
                    <span class="four">40,000$</span>
                </a>
                <div class="most-1">
                    <h5><a href="single.html">Contrary to popular</a></h5>
                    <p>Lorem ipsum</p>
                </div>

            </div>
            <div class="col-md-4 box_2">
                <a href="single.html" class="mask">
                    <img class="img-responsive zoom-img" src="${ctx}/staticfile/images/pc3.jpg" alt="" >
                    <span class="four">40,000$</span>
                </a>
                <div class="most-1">
                    <h5><a href="single.html">Contrary to popular</a></h5>
                    <p>Lorem ipsum</p>
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
                        <a href="buy_single.html">
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
                        <a href="buy_single.html">
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
                                <a href="buy_single.html">
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
                                <a href="buy_single.html">
                                    <figure class="effect-layla">
                                        <img class=" img-responsive" src="${ctx}/staticfile/images/ce3.jpg" alt="img06">
                                        <figcaption>
                                            <h4 class="effect2">大兴区</h4>

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
                                <a href="buy_single.html">
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
                                <a href="buy_single.html">
                                    <figure class="effect-layla">
                                        <img class="img-responsive" src="${ctx}/staticfile/images/ce5.jpg" alt="img06">
                                        <figcaption>
                                            <h4 class="effect3">通州区</h4>

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
                <h3>the best features</h3>
                <p>Contrary to popular belief
                    , Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>
                <a class="hvr-sweep-to-right more-in" href="single.html">Read More</a>
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
                    <h5>Custom Location Tracker</h5>
                    <p>There are many variations of passages of Lorem Ipsum available, but the majorit</p>
                </div>
                <div class="text-1">
                    <h5>Map Search</h5>
                    <p>There are many variations of passages of Lorem Ipsum available, but the majorit</p>
                </div>
                <div class="text-1">
                    <h5>Quick Details</h5>
                    <p>There are many variations of passages of Lorem Ipsum available, but the majorit</p>
                </div>
                <a href="mobile_app.html" class="hvr-sweep-to-right more">Download the App</a>
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
                        <a href="single.html" class="mask"><img src="${ctx}/staticfile/images/ga.jpg" class="img-responsive zoom-img" alt=""/></a>
                        <div class="col-md1">
                            <div class="col-md2">
                                <div class="col-md3">
                                    <span class="star"> 4.5</span>
                                </div>
                                <div class="col-md4">
                                    <strong>Venice</strong>
                                    <small>50 Reviews</small>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <p>2, 3, 4 BHK Flats</p>
                            <p class="cost">$65,000</p>
                            <a href="single.html" class="hvr-sweep-to-right more">See Details</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 project-grid">
                    <div class="project-grid-top">
                        <a href="single.html" class="mask"><img src="${ctx}/staticfile/images/ga1.jpg" class="img-responsive zoom-img" alt=""/></a>
                        <div class="col-md1">
                            <div class="col-md2">
                                <div class="col-md3">
                                    <span class="star"> 4.5</span>
                                </div>
                                <div class="col-md4">
                                    <strong>Venice</strong>
                                    <small>50 Reviews</small>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <p>2, 3, 4 BHK Flats</p>
                            <p class="cost">$65,000</p>
                            <a href="single.html" class="hvr-sweep-to-right more">See Details</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 project-grid">
                    <div class="project-grid-top">
                        <a href="single.html" class="mask"><img src="${ctx}/staticfile/images/ga2.jpg" class="img-responsive zoom-img" alt=""/></a>
                        <div class="col-md1">
                            <div class="col-md2">
                                <div class="col-md3">
                                    <span class="star"> 4.5</span>
                                </div>
                                <div class="col-md4">
                                    <strong>Venice</strong>
                                    <small>50 Reviews</small>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <p>2, 3, 4 BHK Flats</p>
                            <p class="cost">$65,000</p>
                            <a href="single.html" class="hvr-sweep-to-right more">See Details</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 project-grid">
                    <div class="project-grid-top">
                        <a href="single.html" class="mask"><img src="${ctx}/staticfile/images/ga3.jpg" class="img-responsive zoom-img" alt=""/></a>
                        <div class="col-md1">
                            <div class="col-md2">
                                <div class="col-md3">
                                    <span class="star"> 4.5</span>
                                </div>
                                <div class="col-md4">
                                    <strong>Venice</strong>
                                    <small>50 Reviews</small>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <p>2, 3, 4 BHK Flats</p>
                            <p class="cost">$65,000</p>
                            <a href="single.html" class="hvr-sweep-to-right more">See Details</a>
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
                    <p class="para-in">Duis aute irure dolor in reprehenderit in voluptate
                        velit esse cillum dolore eu fugiat nulla pariatur.</p>
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
                    <p class="para-in">Duis aute irure dolor in reprehenderit in voluptate
                        velit esse cillum dolore eu fugiat nulla pariatur.</p>
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
                    <p class="para-in">Duis aute irure dolor in reprehenderit in voluptate
                        velit esse cillum dolore eu fugiat nulla pariatur.</p>
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
