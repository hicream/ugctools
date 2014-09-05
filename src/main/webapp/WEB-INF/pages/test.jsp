<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="utf-8">
    <meta name="viewpoint" content="width=device-width, initial-scale=1.0">
    <title>test</title>

    <!-- Bootstrap core CSS -->
    <!--<link href="./../../css/bootstrap.min.css" rel="stylesheet">-->
    <link href="./../../css/bootstrap.css" rel="stylesheet">
    <%--<script  type="text/javascript" src="./../../js/lib/bootstrap.js"></script>--%>
    <script type="text/javascript" src="./../../js/lib/jquery-1.7.2.min.js"></script>
    <script type="text/javascript">


            //在这里写javascript代码

            $(document).ready(function() {
                $('#commentIdButton').click(function() {
                    var id = $('#commentIdButtonText').val();
                    console.log(id);
                });
            });
//        $(document).ready(function(){
//            //在这里写javascript代码
//
//            $.ajax({
//                url: "/ugctools/ajax",
//                data: {
//                    id: 97201
//                },
//                success: function( data ) {
//                    console.log(data);
//                    alert(data);
//                },
//                failure:function(data){
//                }
//            });
//        })

    </script>
</head>
<body>
<div class="container" style="margin-top:100px">
    <div class="navbar navbar-fixed-top">
        <div class="navbar-inner">
            <div class="container">
                <a class="brand" href="/ugctools/">UGC Tools</a>
                <ul class="nav">
                    <li class="active"><a href="#">点评查询</a>
                    <li><a href="/ugctools/usertype">修改用户身份</a>
                </ul>
            </div>
        </div>
    </div>

    <%--<form id="submitid">--%>
    <form id="submitid">
        <div class="input-append">
            <input type="text" name="id"  id="commentIdButtonText" placeholder="输入点评id">
            <input id="commentIdButton" class="btn" value="search" >
        </div>
    </form>
</div>


</body>
</html>