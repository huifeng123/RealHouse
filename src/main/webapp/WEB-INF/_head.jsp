<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>

</head>

<!--header-->
<div class="navigation ">
    <div class="container-fluid">
        <nav class="pull">
            <ul>
                <li><a  href="${ctx}/">恋家</a></li>
                <li><a  href="${ctx}/about">公司简介</a></li>
                <li><a  href="${ctx}/blog">博客</a></li>
                <li><a  href="${ctx}/terms">条款</a></li>
                <li><a  href="${ctx}/privacy">隐私</a></li>
                <li><a  href="${ctx}/contact">联系方式</a></li>
            </ul>
        </nav>
    </div>
</div>

<div class="header">
    <div class="container">
        <!--logo-->
        <div class="logo">
            <h1><a href="${ctx}/">REAL HOME</a></h1>
        </div>
        <!--//logo-->
        <div class="top-nav">
            <ul class="right-icons">
                <c:if test="${empty session_user}">
                    <li><a  href="${ctx}/toLogin"><i class="glyphicon glyphicon-user"> </i>登录</a></li>
                    <li><a  href="${ctx}/toRegister"><i class="glyphicon glyphicon-user"> </i>注册</a></li>
                </c:if>
                <c:if test="${!(empty session_user)}">
                    <li><a href="${ctx}/toshowMyMessage"><i class="glyphicon glyphicon-user"> </i>您好，${session_user.uname}</a></li>
                    <li><a  href="${ctx}/toUserLogOut"><i class="glyphicon glyphicon-user"> </i>退出</a></li>
                </c:if>
                <li><a class="play-icon popup-with-zoom-anim" href="#small-dialog"><i class="glyphicon glyphicon-search"> </i> </a></li>

            </ul>
            <div class="nav-icon">
                <div class="hero fa-navicon fa-2x nav_slide_button" id="hero">
                    <a href="#"><i class="glyphicon glyphicon-menu-hamburger"></i> </a>
                </div>
                <!---
                <a href="#" class="right_bt" id="activator"><i class="glyphicon glyphicon-menu-hamburger"></i>  </a>
            --->
            </div>
            <div class="clearfix"> </div>
            <!---pop-up-box---->

            <link href="${ctx}/staticfile/css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
            <script src="${ctx}/staticfile/js/jquery.magnific-popup.js" type="text/javascript"></script>
            <!---//pop-up-box---->
            <div id="small-dialog" class="mfp-hide">
                <!----- tabs-box ---->
                <div class="sap_tabs">

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
            <script>
                $(document).ready(function() {
                    $('.popup-with-zoom-anim').magnificPopup({
                        type: 'inline',
                        fixedContentPos: false,
                        fixedBgPos: true,
                        overflowY: 'auto',
                        closeBtnInside: true,
                        preloader: false,
                        midClick: true,
                        removalDelay: 300,
                        mainClass: 'my-mfp-zoom-in'
                    });

                });
            </script>


        </div>
        <div class="clearfix"> </div>
    </div>
</div>


</html>
