<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<meta http-equiv="refresh" content="3">
<head>
    <title>上框架 - 发言区</title>
</head>
<body>

<%--    该程序5秒在屏幕上显示一次Application对象的内容。--%>
    <%
        //显示在线人数
        out.print("在线人数："+application.getAttribute("user_online"));
    %> <br>
    <%
        out.print((String)application.getAttribute("show"));  // '显示聊天内容
    %>

</body>
</html>
