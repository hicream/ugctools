<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: vicky.han
  Date: 14-8-24
  Time: 下午8:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>User</title>
    <link href="./../../css/bootstrap.css" rel="stylesheet">
</head>
<body>
<div class="container" style="margin-top:100px">
    <div class="navbar navbar-fixed-top">
        <div class="navbar-inner">
            <div class="container">
                <a class="brand" href="/ugctools/">UGC Tools</a>
                <ul class="nav">
                    <li><a href="/comments/">点评查询</a>
                    <li class="active"><a href="#">用户信息查询与修改</a>
                </ul>
            </div>
        </div>
    </div>


    <div class='page-header'>
        <h4>修改用户身份</h4>
    </div>
    <form id="form">
        <select name="identity" id="identity">
            <option value="1">普通用户</option>
            <option value="2">酒店业主</option>
            <option value="98">试睡员</option>
            <option value="101">黑名单</option>
        </select>
        <div class="input-append">
            <input type="text" name="uid1" id="uid1" placeholder="输入用户id">
            <input type="submit" class="btn" value="修改身份" onclick="submitForm()">
        </div>
    </form>


    <div class='page-header' style="margin-top:60px">
        <h4>用户信息查询</h4>
    </div>
    <form onsubmit="return submitForm1()" action="/user/uid">
        <div class="input-append" id="submitUserId">
            <input type="text" name="uid" id="uid" placeholder="输入用户uid">
            <input type="submit" class="btn" value="search">
        </div>
        <div id="errorInfo"></div>
    </form>

    <div class="container">
        <table class="table">
            <thead>
            <tr>
                <th>用户uid</th>
                <th>用户名</th>
                <th>身份</th>
                <th>等级</th>
                <th>昵称</th>
                <th>积分</th>
                <th>冻结积分</th>
                <th>经验值</th>
            </tr>
            </thead>
            <tr>
                <td>${user.uid}</td>
                <td>${user.username}</td>
                <td>${user.identity}</td>
                <td>${user.influence}</td>
                <td>${user.nickname}</td>
                <td>${user.points}</td>
                <td>${user.frozen}</td>
                <td>${user.score}</td>
            </tr>

        </table>
        <h4 style="margin-top: 50px">tips:</h4>
        <ul>
            <li>身份：1-普通用户；2-酒店业主；98-试睡员；101-黑名单</li>
        </ul>
    </div>

</div>

</body>
<script type="text/javascript">
    function submitForm() {
        var uid = document.getElementById("uid1").value;
        var identity = document.getElementById("identity");
        var form = document.getElementById("form");
        form.action = "http://l-ugcweb.h.beta.cn6.qunar.com:9080/inner/user_identity/" + uid1 + "/change.json?identity=" + identity;
        form.submit();
    }
    function submitForm1() {
        var username = document.getElementById("uid").value;
        if (!username) {
            $("#submitUserId")
                    .addClass("control-group error")
            $("#errorInfo").empty().append('<span class="text-error">请输入用户udi</span>');
            return false;
        }
        return true;
    }
</script>
<script src="./../../js/lib/bootstrap.js"></script>
<script src="./../../js/lib/jquery-1.7.2.min.js"></script>
</html>

