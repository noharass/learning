<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>退出程序</title>
</head>
<body>

    <%--首先保存退出者的相关信息，然后把在线人数减少1个，重定向到chatindex.jsp。--%>
    <%
        String uname=(String)session.getAttribute("uname");
        String exit = uname+"退出了聊天室";
        String oldSay;
        oldSay=application.getAttribute("show").toString();
        application.setAttribute("show", (exit + "<br>" +oldSay));    //返回聊天信息

        int num=(Integer)(application.getAttribute("user_online"))-1;
        application.setAttribute("user_online", num);
        response.sendRedirect("ChatIndex.jsp");
    %>
</body>
</html>
