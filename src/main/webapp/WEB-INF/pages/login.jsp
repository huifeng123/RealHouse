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
    <!--//-->

    <!--//header-->
    <!--contact-->
    <div class="login-right">
        <div class="container">
            <h3>登录</h3>
            <div class="login-top">
                <ul class="login-icons">
                    <li><a href="#" ><i class="facebook"> </i><span>Facebook</span></a></li>
                    <li><a href="#" class="twit"><i class="twitter"></i><span>Twitter</span></a></li>
                    <li><a href="#" class="go"><i class="google"></i><span>Google +</span></a></li>
                    <li><a href="#" class="in"><i class="linkedin"></i><span>Linkedin</span></a></li>
                    <div class="clearfix"> </div>
                </ul>
                <div class="form-info">
                    <form action="${ctx}/login.action" method="POST">
                        <input type="text" class="text"  name="uname" placeholder="用户名" required="">
                        <input type="password" name="upassword" placeholder="密码" required=""><span  style="color: red">${msg}</span>
                        <label class="hvr-sweep-to-right">
                            <input type="submit" value="登录">
                        </label>
                    </form>
                </div>
                <div class="create">
                    <h4>准备好了吗？</h4>
                    <a class="hvr-sweep-to-right" href="${ctx}/toRegister">注册</a>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
    </div>
    <!--//contact-->
    <%@include file="/WEB-INF/_foot.jsp"%>
</body>
</html>
