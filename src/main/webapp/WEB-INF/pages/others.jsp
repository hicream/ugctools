<%@page session="false" language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="org.apache.commons.lang.StringEscapeUtils"%>
<%@page import="org.apache.commons.lang3.StringUtils"%>
<%
    String pagetype = request.getParameter("pageType");
    String userId = request.getParameter("userId");
    String fromDate = request.getParameter("fromDate");
    String toDate = request.getParameter("toDate");
    String hotelSeq = request.getParameter("hotelSeq");
    String hotelSeqs = request.getParameter("hotelSeqs");
    if (StringUtils.isBlank(hotelSeqs)){
        hotelSeqs = "";
    }
    String items[] = hotelSeqs.split(",");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>

    <!--criteo加载库Loader-->
    <script type="text/javascript" src="//static.criteo.net/js/ld/ld.js" async="true"></script>

    <%if("home".equals(pagetype)){%>
    <!--首页-->

    <script type="text/javascript">
        window.criteo_q = window.criteo_q || [];
        window.criteo_q.push(
                { event: "setAccount", account: "" },
                { event: "setCustomerId", id: "<%=userId%>" },
                { event: "setSiteType", type: "d" },
                { event: "viewHome" },
                { event: "viewSearch", checkin_date:"<%=fromDate%>", checkout_date:"<%=toDate%>"}
        );
    </script>

    <%}else if("list".equals(pagetype)){%>
    <!--列表页-->

    <script type="text/javascript">
        window.criteo_q = window.criteo_q || [];
        window.criteo_q.push(
                { event: "setAccount", account: "" },
                { event: "setCustomerId", id: "<%=userId%>" },
                { event: "setSiteType", type: "d" },
                { event: "viewList", item: <%=items%>,
        { event: "viewSearch", checkin_date:"<%=fromDate%>", checkout_date:"<%=toDate%>"}
        );
    </script>

    <%}else{%>
    <!--详情页-->

    <script type="text/javascript">
        window.criteo_q = window.criteo_q || [];
        window.criteo_q.push(
                { event: "setAccount", account: "" },
                { event: "setCustomerId", id: "<%=userId%>" },
                { event: "setSiteType", type: "d" },
                { event: "viewItem", item: "<%=hotelSeq%>" },
                { event: "viewSearch", checkin_date:"<%=fromDate%>", checkout_date:"<%=toDate%>"}
        );
    </script>

    <%}%>
</head>
<body>
<!--baidu dsp-->
<script>
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "//hm.baidu.com/hm.js?a7c03a0f2d483f58a7a403fbedb4ded3";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>
</body>
</html>