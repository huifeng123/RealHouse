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
    <script>
        $(function () {
            $()
        })
        
    </script>
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

    <div>
        <%--搜索框--%>
        <!---//pop-up-box---->
        <div id="small-dialog" style="margin-top: -10%;z-index: 10000;border-radius: 20%">
            <!----- tabs-box ---->
            <div class="sap_tabs">
                <div id="horizontalTab" style="width: 100%; margin: 0px;">
                    <%--<ul class="resp-tabs-list">
                        <li class="resp-tab-item " aria-controls="tab_item-0" role="tab"><span>All Homes</span></li>
                        <li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>For Sale</span></li>
                        <li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span>For Rent</span></li>
                        <div class="clearfix"></div>
                    </ul>--%>

                    <div class="resp-tabs-container">
                        <h2 class="resp-accordion resp-tab-active" role="tab" aria-controls="tab_item-0"><span class="resp-arrow"></span>All Homes</h2><div class="tab-1 resp-tab-content resp-tab-content-active" aria-labelledby="tab_item-0" style="display:block">
                        <form method="post">
                            <div class="facts">
                                <div class="login">
                                    <input type="text" name="serch" value="查询房源 区域 小区" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '查询房源 区域 小区';}">
                                    <input type="submit" value="" formaction="/serch">
                                </div>
                            </div>
                        </form>
                    </div>

                        <h2 class="resp-accordion" role="tab" aria-controls="tab_item-1"><span class="resp-arrow"></span>For Sale</h2><div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
                        <div class="facts">
                            <div class="login">
                                <input type="text" value="Search Address, Neighborhood, City or Zip" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search Address, Neighborhood, City or Zip';}">
                                <input type="submit" value="">
                            </div>
                        </div>
                    </div>
                        <h2 class="resp-accordion" role="tab" aria-controls="tab_item-2"><span class="resp-arrow"></span>For Rent</h2><div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
                        <div class="facts">
                            <div class="login">
                                <input type="text" value="Search Address, Neighborhood, City or Zip" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search Address, Neighborhood, City or Zip';}">
                                <input type="submit" value="">
                            </div>
                        </div>
                    </div>
                    </div>
                </div>
                <script src="${ctx}/staticfile/js/easyResponsiveTabs.js" type="text/javascript"></script>
                <script type="text/javascript">
                    $(document).ready(function () {
                        $('#horizontalTab').easyResponsiveTabs({
                            type: 'default', //Types: default, vertical, accordion
                            width: 'auto', //auto or any width like 600px
                            fit: true   // 100% fit in a container
                        });
                    });
                </script>
            </div>
        </div>
        <%----------%>

    </div>

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
    <div class="container">

        <div class="buy-single">
            <h3>Residential Flats, Apartments</h3>
            <div class="box-sin">
                <div class="col-md-9 single-box">
                    <div class="box-col">
                        <div class=" col-sm-7 left-side ">
                            <a href="single.html"> <img class="img-responsive" src="images/sb.jpg" alt=""></a>
                        </div>
                        <div class="  col-sm-5 middle-side">
                            <h4>Possession: Immediate</h4>
                            <p><span class="bath">Bed </span>: <span class="two">2 BHK</span></p>
                            <p>  <span class="bath1">Baths </span>: <span class="two">2</span></p>
                            <p><span class="bath2">Built-up Area</span>: <span class="two">100 Sq.Yrds</span></p>
                            <p><span class="bath3">Plot Area </span>:<span class="two"> 150 Sq.Yrds</span></p>
                            <p><span class="bath4">Age of property</span> : <span class="two">4 - 10 Years</span></p>
                            <p><span class="bath5">Price </span>:<span class="two"> 30-40 Lacs</span></p>
                            <div class="   right-side">
                                <a href="contact.html" class="hvr-sweep-to-right more" >Contact Builder</a>
                            </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="box-col">
                        <div class=" col-sm-7 left-side ">
                            <a href="single.html"><img class="img-responsive" src="images/sb1.jpg" alt=""></a>
                        </div>
                        <div class="  col-sm-5 middle-side">
                            <h4>Possession: Immediate</h4>
                            <p><span class="bath">Bed </span>: <span class="two">2 BHK</span></p>
                            <p>  <span class="bath1">Baths </span>: <span class="two">2</span></p>
                            <p><span class="bath2">Built-up Area</span>: <span class="two">100 Sq.Yrds</span></p>
                            <p><span class="bath3">Plot Area </span>:<span class="two"> 150 Sq.Yrds</span></p>
                            <p><span class="bath4">Age of property</span> : <span class="two">4 - 10 Years</span></p>
                            <p><span class="bath5">Price </span>:<span class="two"> 30-40 Lacs</span></p>
                            <div class="   right-side">
                                <a href="contact.html" class="hvr-sweep-to-right more" >Contact Builder</a>
                            </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="box-col">
                        <div class=" col-sm-7 left-side ">
                            <a href="single.html"> <img class="img-responsive" src="images/sb2.jpg" alt=""></a>
                        </div>
                        <div class="  col-sm-5 middle-side">
                            <h4>Possession: Immediate</h4>
                            <p><span class="bath">Bed </span>: <span class="two">2 BHK</span></p>
                            <p>  <span class="bath1">Baths </span>: <span class="two">2</span></p>
                            <p><span class="bath2">Built-up Area</span>: <span class="two">100 Sq.Yrds</span></p>
                            <p><span class="bath3">Plot Area </span>:<span class="two"> 150 Sq.Yrds</span></p>
                            <p><span class="bath4">Age of property</span> : <span class="two">4 - 10 Years</span></p>
                            <p><span class="bath5">Price </span>:<span class="two"> 30-40 Lacs</span></p>
                            <div class="   right-side">
                                <a href="contact.html" class="hvr-sweep-to-right more" >Contact Builder</a>
                            </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="box-col">
                        <div class=" col-sm-7 left-side ">
                            <a href="single.html"> <img class="img-responsive" src="images/sb3.jpg" alt=""></a>
                        </div>
                        <div class="  col-sm-5 middle-side">
                            <h4>Possession: Immediate</h4>
                            <p><span class="bath">Bed </span>: <span class="two">2 BHK</span></p>
                            <p>  <span class="bath1">Baths </span>: <span class="two">2</span></p>
                            <p><span class="bath2">Built-up Area</span>: <span class="two">100 Sq.Yrds</span></p>
                            <p><span class="bath3">Plot Area </span>:<span class="two"> 150 Sq.Yrds</span></p>
                            <p><span class="bath4">Age of property</span> : <span class="two">4 - 10 Years</span></p>
                            <p><span class="bath5">Price </span>:<span class="two"> 30-40 Lacs</span></p>
                            <div class="   right-side">
                                <a href="contact.html" class="hvr-sweep-to-right more" >Contact Builder</a>
                            </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="box-col">
                        <div class=" col-sm-7 left-side ">
                            <a href="single.html"> <img class="img-responsive" src="images/sb4.jpg" alt=""></a>
                        </div>
                        <div class="  col-sm-5 middle-side">
                            <h4>Possession: Immediate</h4>
                            <p><span class="bath">Bed </span>: <span class="two">2 BHK</span></p>
                            <p>  <span class="bath1">Baths </span>: <span class="two">2</span></p>
                            <p><span class="bath2">Built-up Area</span>: <span class="two">100 Sq.Yrds</span></p>
                            <p><span class="bath3">Plot Area </span>:<span class="two"> 150 Sq.Yrds</span></p>
                            <p><span class="bath4">Age of property</span> : <span class="two">4 - 10 Years</span></p>
                            <p><span class="bath5">Price </span>:<span class="two"> 30-40 Lacs</span></p>
                            <div class="   right-side">
                                <a href="contact.html" class="hvr-sweep-to-right more" >Contact Builder</a>
                            </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="box-col">
                        <div class=" col-sm-7 left-side ">
                            <a href="single.html"><img class="img-responsive" src="images/sb5.jpg" alt=""></a>
                        </div>
                        <div class="  col-sm-5 middle-side">
                            <h4>Possession: Immediate</h4>
                            <p><span class="bath">Bed </span>: <span class="two">2 BHK</span></p>
                            <p>  <span class="bath1">Baths </span>: <span class="two">2</span></p>
                            <p><span class="bath2">Built-up Area</span>: <span class="two">100 Sq.Yrds</span></p>
                            <p><span class="bath3">Plot Area </span>:<span class="two"> 150 Sq.Yrds</span></p>
                            <p><span class="bath4">Age of property</span> : <span class="two">4 - 10 Years</span></p>
                            <p><span class="bath5">Price </span>:<span class="two"> 30-40 Lacs</span></p>
                            <div class="   right-side">
                                <a href="contact.html" class="hvr-sweep-to-right more" >Contact Builder</a>
                            </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 map-single-bottom">
                <div class="map-single">
                    <%--<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d37494223.23909492!2d103!3d55!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x453c569a896724fb%3A0x1409fdf86611f613!2sRussia!5e0!3m2!1sen!2sin!4v1415776049771"></iframe>--%>
                </div>
                <div class="single-box-right">
                    <h4>Featured Communities</h4>
                    <div class="single-box-img">
                        <div class="box-img">
                            <a href="single.html"><img class="img-responsive" src="images/sl.jpg" alt=""></a>
                        </div>
                        <div class="box-text">
                            <p><a href="single.html">Lorem ipsum dolor sit amet</a></p>
                            <a href="single.html" class="in-box">More Info</a>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="single-box-img">
                        <div class="box-img">
                            <a href="single.html"><img class="img-responsive" src="images/sl1.jpg" alt=""></a>
                        </div>
                        <div class="box-text">
                            <p><a href="single.html">Lorem ipsum dolor sit amet</a></p>
                            <a href="single.html" class="in-box">More Info</a>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="single-box-img">
                        <div class="box-img">
                            <a href="single.html"><img class="img-responsive" src="images/sl2.jpg" alt=""></a>
                        </div>
                        <div class="box-text">
                            <p><a href="single.html">Lorem ipsum dolor sit amet</a></p>
                            <a href="single.html" class="in-box">More Info</a>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="single-box-img">
                        <div class="box-img">
                            <a href="single.html"><img class="img-responsive" src="images/sl3.jpg" alt=""></a>
                        </div>
                        <div class="box-text">
                            <p><a href="single.html">Lorem ipsum dolor sit amet</a></p>
                            <a href="single.html" class="in-box">More Info</a>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="single-box-img">
                        <div class="box-img">
                            <a href="single.html"><img class="img-responsive" src="images/sl4.jpg" alt=""></a>
                        </div>
                        <div class="box-text">
                            <p><a href="single.html">Lorem ipsum dolor sit amet</a></p>
                            <a href="single.html" class="in-box">More Info</a>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>
            </div>
            <div class="clearfix"> </div>
            <div class="nav-page">
                <nav>
                    <ul class="pagination">
                        <li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
                        <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li>
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