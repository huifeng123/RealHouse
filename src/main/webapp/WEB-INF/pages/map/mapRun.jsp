
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no, width=device-width">
    <title>按起终点名称规划路线</title>
    <link rel="stylesheet" href="http://cache.amap.com/lbs/static/main1119.css"/>
    <style type="text/css">
        #panel {
            position: absolute;
            background-color: white;
            max-height: 80%;
            overflow-y: auto;
            top: 10px;
            right: 10px;
            width: 250px;
            border: solid 1px silver;
        }
    </style>
    <script type="text/javascript" src="http://webapi.amap.com/maps?v=1.3&key=98464b2ff39752035e18aca8ef538845
&plugin=AMap.Transfer"></script>
    <script type="text/javascript" src="http://cache.amap.com/lbs/static/addToolbar.js"></script>
</head>
<body>
<div id="container"></div>
<div id="panel"></div>
<script type="text/javascript">
    var map = new AMap.Map("container", {
        resizeEnable: true,
        center: [116.397428, 39.90923],
        zoom: 13
    });
    var transOptions = {
        map: map,
        city: '北京市',
        panel: 'panel',
        policy: AMap.TransferPolicy.LEAST_TIME //乘车策略

    };
    //构造公交换乘类
    var transfer = new AMap.Transfer(transOptions);
    //根据起、终点名称查询公交换乘路线
    transfer.search([
        {keyword: '故宫',city:'北京'},
        //第一个元素city缺省时取transOptions的city属性
        {keyword: '${village}',city:'北京'}
        //第二个元素city缺省时取transOptions的cityd属性,
        //没有cityd属性时取city属性
    ]);
</script>
</body>
</html>