<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Comments</title>
    <link href="./../../css/bootstrap.css" rel="stylesheet">
</head>

<body>
<div class="container" style="margin-top:100px">
    <div class="navbar navbar-fixed-top">
        <div class="navbar-inner">
            <div class="container">
                <a class="brand" href="/ugctools/">UGC Tools</a>
                <ul class="nav">
                    <li class="active"><a href="#">点评查询</a>
                    <li><a href="/user">用户信息查询与修改</a>
                </ul>
            </div>
        </div>
    </div>

    <form onsubmit="return submitForm()" action="/comments/id">
        <div class="input-append" id="submitId">
            <input type="text" name="id"  id="commentId" placeholder="输入点评id">
            <input type="submit" class="btn" value="search" >
        </div>
        <div id="errorInfo1"></div>
    </form>
    <form onsubmit="return submitForm1()" action="/comments/customer">
        <div class="input-append" id="submitName">
            <input type="text" name="customer" id="username" placeholder="输入用户名">
            <input type="submit" class="btn" value="search" id="button112">
        </div>
        <div id="errorInfo"></div>
    </form>
</div>

<div class="container">
    <table class="table">
        <thead>
        <tr>
            <th>id</th>
            <th>customer</th>
            <th>status</th>
            <th>type</th>
            <th>cityurl</th>
            <th>needsync</th>
            <th>obj_seq</th>
        </tr>
        </thead>
        <c:forEach items="${comments}" var="comments">
            <tr>
                <td>${comments.id}</td>
                <td>${comments.customer}</td>
                <td>${comments.status}</td>
                <td>${comments.type}</td>
                <td>${comments.cityurl}</td>
                <td>${comments.needsync}</td>
                <td>${comments.obj_seq}</td>
            </tr>
        </c:forEach>
    </table>
    <h4 style="margin-top: 50px">tips:</h4>
    <ul>
        <li>status：0-新发表；1-审核中；2-审核通过；3-审核不通过；4-用户删除；5-系统删除；6-审核前私密（非可信用户）；7-审核后私密</li>
        <li>type：0-普通点评（包括评论、回复）；1-砖家点评；2-单独上传图片；3-图片回复 </li>
        <li>needsync：0-已同步至审核后台；1-未同步至审核后台</li>
    </ul>
</div>

</body>

<script type="text/javascript">
    function submitForm() {
        var id = document.getElementById("commentId").value;
        if (!id) {
            $("#submitId").addClass('control-group error');
            $("#errorInfo1").empty().append('<span class="text-error">请输入点评id</span>');
            return false;
        }
        return true;
    }
    function submitForm1() {
        var username = document.getElementById("username").value;
        if (!username) {
            $("#submitName")
                    .addClass("control-group error")
            $("#errorInfo").empty().append('<span class="text-error">请输入用户名</span>');
            return false;
        }
        return true;
    }
</script>

<script src="./../../js/lib/jquery-1.7.2.min.js"></script>
</html>