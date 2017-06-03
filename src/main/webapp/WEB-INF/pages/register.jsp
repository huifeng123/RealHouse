<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/base.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>Register</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--menu-->
<script src="js/scripts.js"></script>
<link href="css/styles.css" rel="stylesheet">
<!--//menu-->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Real Home  Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
</head>
<body>
<!--header-->
	<%@include file="/WEB-INF/_head.jsp"%>
<!--//header-->
<!--contact-->
<div class="login-right">
	<div class="container">
		<h3>注册</h3>
		<div class="login-top">
			<ul class="login-icons">
				<li><a href="#" ><i class="facebook"> </i><span>Facebook</span></a></li>
				<li><a href="#" class="twit"><i class="twitter"></i><span>Twitter</span></a></li>
				<li><a href="#" class="go"><i class="google"></i><span>Google +</span></a></li>
				<li><a href="#" class="in"><i class="linkedin"></i><span>Linkedin</span></a></li>
				<div class="clearfix"> </div>
			</ul>
			<div class="form-info">
				<form action="${ctx}/register" method="post">
					<input type="text"  name="uName" placeholder="昵称" required="" ><span style="color: red">${msg}</span>
					<input type="text"  name="uemail" placeholder="邮箱" required="" >
					<input type="password" name="upassword" placeholder="密码" required="">
					<input type="text" name="urname" placeholder="姓名" required="">
					<input type="text" name="tel" placeholder="电话" required="">
					<input type="text" name="uaddress" placeholder="住址" required="">
					<input type="text" name="sex" placeholder="性别" required="">


					<label class="hvr-sweep-to-right">
						<input type="submit" value="注册">
					</label>
				</form>
				<p>已经有一个真实的家庭账户了吗? <a href="${ctx}/toLogin">登录</a></p>
			</div>

		</div>
	</div>
</div>
<!--//contact-->
<!--footer-->
	<%@include file="/WEB-INF/_foot.jsp"%>
</body>
</html>