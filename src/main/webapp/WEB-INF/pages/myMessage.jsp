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
<div class=" banner-buying">
	<div class=" container">
		<h3><span>Cont</span>act</h3>
		<!---->
		<div class="menu-right">

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
<!--contact-->
<div class="contact">
	<div class="container">
		<h3>个人信息</h3>
<center>

<table<%-- id="ec_table"--%> class="table table-hover table-bordered" width="400" align="CENTER">

	<tr class="warning">
		<td colspan="2" class="tableHeader" style="text-align: center;font-size: 40px;font-family: 微软雅黑">info</td>

	</tr>

	<tr class="warning" align="center">
		<td width="50%">用&nbsp;&nbsp;&nbsp;户&nbsp;&nbsp;&nbsp;名</td>
		<td width="50%">${user.uname}</td>
	</tr>
	<tr class="warning" align="center">
		<td width="50%">真&nbsp;&nbsp;实&nbsp;&nbsp;姓&nbsp;&nbsp;名</td>
		<td width="50%">${user.urname}</td>
	</tr>
	<tr class="warning" align="center">
		<td width="50%">昵&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;称</td>
		<td width="50%">${user.uuser}</td>
	</tr>
	<tr class="warning" align="center">
		<td width="50%">性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别</td>
		<td width="50%">${user.sex}</td>
	</tr>
	<tr class="warning" align="center">
		<td width="50%">邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱</td>
		<td width="50%">${user.uemail}</td>
	</tr>
	<tr class="warning" align="center">
		<td width="50%">电&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话</td>
		<td width="50%">${user.tel}</td>
	</tr>
	<tr class="warning" align="center">
		<td width="50%">邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;编</td>
		<td width="50%">${user.post}</td>
	</tr>
	<tr class="warning" align="center">
		<td width="50%">地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址</td>
		<td width="50%">${user.uaddress}</td>
	</tr>
	<tr class="warning" align="center">
		<td width="50%">QQ</td>
		<td width="50%">${user.qq}</td>
	</tr>
	<tr class="warning" align="center">
		<td width="50%" >
			<form class="form-horizontal" enctype="multipart/form-data" role="form" method="post" action="/pages/houseList">
			<input type="text" name="uid" value="${session_user.uid}" hidden="hidden"/>
				<input type="submit" value="我的房源" class="btn btn-info"/>

		</form>
		</td>

		<td width="50%" >
			<form class="form-horizontal" enctype="multipart/form-data" role="form" method="post" action="/toUpdateUser">
				<input type="text" name="uid" value="${session_user.uid}" hidden="hidden"/>
				<input type="submit" value="修改个人信息" class="btn btn-info"/>

			</form>
		</td>

	</tr>

</table>
</center>
	</div>
</div>
<%--<div align="center">

	<form class="form-horizontal" enctype="multipart/form-data" role="form" method="post" action="/pages/houseList">
		<input type="text" name="uid" value="${session_user.uid}" hidden="hidden"/>
		<input type="submit" value="我的房源"/>

	</form>--%>


	<%--<form class="form-horizontal" enctype="multipart/form-data" role="form" method="post" action="/">
		<input type="submit" value="返回首页"/>

	</form>--%>


<%--<ul class="nav nav-tabs">--%>


	<%--<li id="toview"><a class="btn btn-info" href="#" onclick="formSubmit('/pages/houseLis','_self');this.blur();">我的房源</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>--%>

	<%--<li style="margin-left: 10px" id=s"back"><a class="btn btn-info" href="#" onclick="window.history.go(-1);this.blur();">返回首页</a></li>--%>
<%--</ul>--%>
<%--</div>--%>








<%--<div class="contact">
	<div class="container">
		<h3>个人信息</h3>
	 <div class="contact-top" style="text-align: center;font-size: 20px;font-family: 微软雅黑">
		<div class="col-md-6 contact-top1">
		  <h4 >Info</h4>
		  <div class="contact-address">
		  	<div class="col-md-6 contact-address1" style="margin: auto auto">
				<p>用&nbsp;户&nbsp;名:${user.uname}</p><br>
				<p>真实姓名:${user.urname}</p><br>
				<p>昵&nbsp;&nbsp;&nbsp;&nbsp;称:&nbsp;&nbsp;${user.uuser}</p><br>
				<p>性&nbsp;&nbsp;&nbsp;&nbsp;别:&nbsp;&nbsp;${user.sex}</p><br>
				<p>邮&nbsp;&nbsp;&nbsp;&nbsp;箱:&nbsp;&nbsp;${user.uemail}</p><br>
				<p>电&nbsp;&nbsp;&nbsp;&nbsp;话:&nbsp;&nbsp;${user.tel}</p><br>
				<p>邮&nbsp;&nbsp;&nbsp;&nbsp;编:&nbsp;&nbsp;${user.post}</p><br>
				<p>地&nbsp;&nbsp;&nbsp;&nbsp;址:&nbsp;&nbsp;${user.uaddress}</p><br>
				<p>Q&nbsp;&nbsp;&nbsp;&nbsp;Q:&nbsp;&nbsp;${user.qq}</p>
	        </div>
		  	<div class="clearfix"></div>
		  </div>
		</div>

		<div class="clearfix"> </div>
</div>
	</div>--%>
<%@include file="/WEB-INF/_foot.jsp"%>
</body>
</html>
