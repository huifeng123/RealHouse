<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
    <title>大气简洁后台登录模板下载</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <script type="text/javascript" src="../../staticfile/js/jquery-1.9.0.min.js"></script>
    <script type="text/javascript" src="../../staticfile/images/login.js"></script>
    <link href="../../staticfile/css/login2.css" rel="stylesheet" type="text/css" />

</head>
<body>

<h1>登录</h1>

<div id="Layer1" style="position:absolute; left:0; top:0; width:100%; height:100%; z-index:-1">
    <div align="center">
        <embed src="../../staticfile/vedio/flash4036.swf" width="1850px" height="940px" wmode="transparent">
    </div>
</div>
<div class="login" style="margin-top:50px;">

    <div class="header" style="background-color: rgba(255,255,255,0.5)">
        <div class="switch" id="switch"><a class="switch_btn_focus" id="switch_qlogin" href="javascript:void(0);" tabindex="7">快速登录</a>
            <a class="switch_btn" id="switch_login" href="javascript:void(0);" tabindex="8">快速注册</a><div class="switch_bottom" id="switch_bottom" style="position: absolute; width: 64px; left: 0px;"></div>
        </div>
    </div>


    <div class="web_qr_login" id="web_qr_login" style="display: block; height: 235px;">

        <!--登录-->
        <div class="web_login" id="web_login">


            <div class="login-box">


                <div class="login_form">
                    <form action="/login.action" name="loginform" accept-charset="utf-8" id="login_form" class="loginForm" method="post"><input type="hidden" name="did" value="0"/>
                        <input type="hidden" name="to" value="log"/>
                        <div class="uinArea" id="uinArea">
                            <label class="input-tips" for="u">帐号：</label>
                            <div class="inputOuter" id="uArea">

                                <input type="text" class="inputstyle"  name="uname" placeholder="用户名" required=""/>
                            </div>
                        </div>
                        <div class="pwdArea" id="pwdArea">
                            <label class="input-tips" for="p">密码：</label>
                            <div class="inputOuter" id="pArea">

                                <input type="password" class="inputstyle" name="upassword" placeholder="密码" required=""><span  style="color: red">${msg}</span>
                            </div>
                        </div>

                        <div style="padding-left:50px;margin-top:20px;"><input type="submit" value="登 录" style="width:150px;" class="button_blue"/></div>
                    </form>
                </div>

            </div>

        </div>
        <!--登录end-->
    </div>

    <!--注册-->
    <div class="qlogin" id="qlogin" style="display: none; ">

        <div class="web_login"><form name="form2" id="regUser" accept-charset="utf-8"  action="" method="post">
            <input type="hidden" name="to" value="reg"/>
            <input type="hidden" name="did" value="0"/>
            <ul class="reg_form" id="reg-ul">
                <div id="userCue" class="cue">快速注册请注意格式</div>
                <li>

                    <label for="user"  class="input-tips2">用户名：</label>
                    <div class="inputOuter2">
                        <input type="text" id="user" class="inputstyle2"  name="uname" placeholder="用户名" required="" ><span style="color: red">${msg}</span>
                        <span id="uname_msg"></span>
                    </div>

                </li>

                <li>
                    <label for="passwd" class="input-tips2">密码：</label>
                    <div class="inputOuter2">
                        <input type="password" id="passwd" class="inputstyle2" name="upassword" placeholder="密码" required="">
                    </div>

                </li>
                <li>
                    <label for="passwd2" class="input-tips2">确认密码：</label>
                    <div class="inputOuter2">
                        <input type="password" id="passwd2" class="inputstyle2" name="upassword2" placeholder="确认密码" required="" onblur="formObj.checkPw('upassword','两次密码不一致')">
                        <span id="upassword2_msg"></span>
                    </div>

                </li>

                <li>
                    <label for="qq" class="input-tips2">QQ：</label>
                    <div class="inputOuter2">
                        <input type="text" id="qq" class="inputstyle2" name="qq" placeholder="QQ" required="">
                    </div>

                </li>

                <li>
                    <label for="email" class="input-tips2">邮箱：</label>
                    <div class="inputOuter2">
                        <input type="text" id="email" class="inputstyle2"  name="uemail" placeholder="邮箱" required="" onblur="formObj.checkEmail('uemail','邮箱格式不正确')" >
                        <span id="uemail_msg"></span>
                    </div>

                </li>

                <li>
                    <label for="tel" class="input-tips2">电话：</label>
                    <div class="inputOuter2">
                        <input type="text" id="tel" class="inputstyle2" name="tel" placeholder="电话" required="">
                    </div>

                </li>

                <li>
                    <label for="addr" class="input-tips2">住址：</label>
                    <div class="inputOuter2">
                        <input type="text" id="addr" name="uaddress" placeholder="住址" required="">
                    </div>

                </li>

                <li>
                    <label for="post" class="input-tips2">邮编：</label>
                    <div class="inputOuter2">
                        <input type="text" id="post" class="inputstyle2" name="post" placeholder="邮编" required="">
                    </div>

                </li>

                <li>
                    <label class="input-tips2">角色：</label>
                    <div class="inputOuter2">
                        <input type="radio" class="inputstyle2" name="upower" value="1" required="">房东
                        <input type="radio" class="inputstyle2" name="upower" value="0" required="">租客
                    </div>

                </li>

                <li>
                    <div class="inputArea">
                        <input type="button" id="reg"  style="margin-top:10px;margin-left:85px;" class="button_blue" value="同意协议并注册"/> <a href="#" class="zcxy" target="_blank">注册协议</a>
                    </div>

                </li><div class="cl"></div>
            </ul></form>


        </div>


    </div>
    <!--注册end-->
</div>
<div class="jianyi">*推荐使用ie8或以上版本ie浏览器或Chrome内核浏览器访问本站</div>

</body>
</html>