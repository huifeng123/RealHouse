<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/base.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Buy</title>

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
</div>
<!--//header-->
<div class="container">

    <!--price-->
    <div class="price">
        <div class="price-grid">
            <div class="col-sm-4 price-top">
                <h4>城市</h4>
                <select class="in-drop">
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
                <select class="in-drop">
                    <option>---请选择区域---</option>
                    <option>海淀区</option>
                    <option>Independent House</option>
                    <option>Row House</option>
                    <option>Villa</option>
                    <option>Builder Floor</option>
                    <option>Farm House</option>
                    <option>Penthouse</option>
                </select>
            </div>
            <div class="col-sm-4 price-top">
                <h4>房屋结构</h4>
                <select class="in-drop">
                    <option>没有要求</option>
                    <option>一居室</option>
                    <option>两居室</option>
                    <option>三居室</option>
                    <option>四居室</option>
                    <option>四+居室</option>
                </select>
            </div>
            <div class="clearfix"> </div>
        </div>
        <div class="price-grid">
            <div class="col-sm-6 price-top1">
                <h4>租金区间</h4>
                <ul>
                    <li>
                        <select class="in-drop">
                            <option>最低价</option>
                            <option>0</option>
                            <option>5 元 </option>
                            <option>10 元</option>
                            <option>15 元</option>
                            <option>20 元</option>
                            <option>25 元</option>
                            <option>30 元</option>
                            <option>35 元</option>
                            <option>40 元</option>
                            <option>45 元</option>
                            <option>50 元</option>
                            <option>55 元</option>
                            <option>60 元</option>
                            <option>65 元</option>
                            <option>70 元</option>
                            <option>75 元</option>
                            <option>80 元</option>
                            <option>85 元</option>
                            <option>90 元</option>
                            <option>95 元</option>
                        </select>
                    </li>
                    <span>-</span>
                    <li>
                        <select class="in-drop">
                            <option>最高价</option>
                            <option>5 元</option>
                            <option>10 元</option>
                            <option>15 元</option>
                            <option>20 元</option>
                            <option>25 元</option>
                            <option>30 元</option>
                            <option>35 元</option>
                            <option>40 元</option>
                            <option>45 元</option>
                            <option>50 元</option>
                            <option>55 元</option>
                            <option>60 元</option>
                            <option>65 元</option>
                            <option>70 元</option>
                            <option>75 元</option>
                            <option>80 元</option>
                            <option>85 元</option>
                            <option>90 元</option>
                            <option>95 元</option>
                            <option>100 Cr</option>
                        </select>
                    </li>
                </ul>
            </div>
            <div class="col-sm-6 price-top1">
                <h4>面积区间</h4>
                <ul>
                    <li>
                        <select class="in-drop">
                            <option>最小面积</option>
                            <option>0</option>
                            <option>5 平方米</option>
                            <option>10平方米</option>
                            <option>15平方米</option>
                            <option>20平方米</option>
                            <option>25 平方米</option>
                            <option>30平方米</option>
                            <option>35平方米</option>
                            <option>40 平方米</option>
                            <option>45平方米</option>
                        </select>
                    </li>
                    <span>-</span>
                    <li>
                        <select class="in-drop">
                            <option>最大面积</option>
                            <option>50平方米</option>
                            <option>100 平方米</option>
                            <option>150平方米</option>
                            <option>200平方米</option>
                            <option>250平方米</option>
                            <option>300 平方米</option>
                            <option>350平方米</option>
                            <option>400平方米</option>
                            <option>450平方米</option>
                            <option>500+ 平方米</option>
                        </select>
                    </li>
                </ul>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
    <!---->
    <div class="top-grid">
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
<!---->
<!--premium-project-->
<div class="premium">
    <div class="pre-top">
        <h5>Lorem Ipsum is simply dummy</h5>
        <p>$7.24 元-4.36 元 2-3 BHK, Lorem Ipsum</p>
    </div>
</div>
<!--//premium-project-->
<!---->
<div class="container">

    <div class="future">
        <h3>热门房源展示</h3>
        <div class="content-bottom-in">
            <div class="nbs-flexisel-container"><div class="nbs-flexisel-inner">

                <ul style="left: -256.5px; display: block;" class="nbs-flexisel-ul" id="flexiselDemo1">

                <li style="width: 256.5px;" class="nbs-flexisel-item"><div class="project-fur">
                    <a href="single.html"><img class="img-responsive" src="${ctx}/staticfile/images/pi2.jpg" alt="">	</a>
                    <div class="fur">
                        <div class="fur1">
                            <span class="fur-money">$2.44 元 - 5.28 元 </span>
                            <h6 class="fur-name"><a href="single.html">Contrary to popular</a></h6>
                            <span>Paris</span>
                        </div>
                        <div class="fur2">
                            <span>2 BHK</span>
                        </div>
                    </div>
                </div></li><li style="width: 256.5px;" class="nbs-flexisel-item"><div class="project-fur">
                <a href="single.html"><img class="img-responsive" src="${ctx}/staticfile/images/pi3.jpg" alt="">	</a>
                <div class="fur">
                    <div class="fur1">
                        <span class="fur-money">$2.44 元 - 5.28 元 </span>
                        <h6 class="fur-name"><a href="single.html">Contrary to popular</a></h6>
                        <span>Paris</span>
                    </div>
                    <div class="fur2">
                        <span>2 BHK</span>
                    </div>
                </div>
            </div></li><li style="width: 256.5px;" class="nbs-flexisel-item"><div class="project-fur">
                <a href="single.html"><img class="img-responsive" src="${ctx}/staticfile/images/pi.jpg" alt="">	</a>
                <div class="fur">
                    <div class="fur1">
                        <span class="fur-money">$2.44 元 - 5.28 元 </span>
                        <h6 class="fur-name"><a href="single.html">Contrary to popular</a></h6>
                        <span>Paris</span>
                    </div>
                    <div class="fur2">
                        <span>2 BHK</span>
                    </div>
                </div>
            </div></li><li style="width: 256.5px;" class="nbs-flexisel-item"><div class="project-fur">
                <a href="single.html"><img class="img-responsive" src="${ctx}/staticfile/images/pi1.jpg" alt="">	</a>
                <div class="fur">
                    <div class="fur1">
                        <span class="fur-money">$2.44 元 - 5.28 元 </span>
                        <h6 class="fur-name"><a href="single.html">Contrary to popular</a></h6>
                        <span>Paris</span>
                    </div>
                    <div class="fur2">
                        <span>2 BHK</span>
                    </div>
                </div>
            </div></li><li style="width: 256.5px;" class="nbs-flexisel-item"><div class="project-fur">
                <a href="single.html"><img class="img-responsive" src="${ctx}/staticfile/images/pi2.jpg" alt="">	</a>
                <div class="fur">
                    <div class="fur1">
                        <span class="fur-money">$2.44 元 - 5.28 元 </span>
                        <h6 class="fur-name"><a href="single.html">Contrary to popular</a></h6>
                        <span>Paris</span>
                    </div>
                    <div class="fur2">
                        <span>2 BHK</span>
                    </div>
                </div>
            </div></li><li style="width: 256.5px;" class="nbs-flexisel-item"><div class="project-fur">
                <a href="single.html"><img class="img-responsive" src="${ctx}/staticfile/images/pi3.jpg" alt="">	</a>
                <div class="fur">
                    <div class="fur1">
                        <span class="fur-money">$2.44 元 - 5.28 元 </span>
                        <h6 class="fur-name"><a href="single.html">Contrary to popular</a></h6>
                        <span>Paris</span>
                    </div>
                    <div class="fur2">
                        <span>2 BHK</span>
                    </div>
                </div>
            </div></li><li style="width: 256.5px;" class="nbs-flexisel-item"><div class="project-fur">
                <a href="single.html"><img class="img-responsive" src="${ctx}/staticfile/images/pi.jpg" alt="">	</a>
                <div class="fur">
                    <div class="fur1">
                        <span class="fur-money">$2.44 元 - 5.28 元 </span>
                        <h6 class="fur-name"><a href="single.html">Contrary to popular</a></h6>
                        <span>Paris</span>
                    </div>
                    <div class="fur2">
                        <span>2 BHK</span>
                    </div>
                </div>
            </div></li><li style="width: 256.5px;" class="nbs-flexisel-item"><div class="project-fur">
                <a href="single.html"><img class="img-responsive" src="${ctx}/staticfile/images/pi1.jpg" alt="">	</a>
                <div class="fur">
                    <div class="fur1">
                        <span class="fur-money">$2.44 元 - 5.28 元 </span>
                        <h6 class="fur-name"><a href="single.html">Contrary to popular</a></h6>
                        <span>Paris</span>
                    </div>
                    <div class="fur2">
                        <span>2 BHK</span>
                    </div>
                </div>
            </div></li></ul><div style="top: 149px;" class="nbs-flexisel-nav-left"></div><div style="top: 149px;" class="nbs-flexisel-nav-right"></div></div></div>
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