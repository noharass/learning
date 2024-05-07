<%@ page import="java.util.Calendar" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>框架程序</title>
</head>
<body>

    <h2>欢迎你：<%=session.getAttribute("uname")%> <a href="Exit.jsp">退出聊天室</a></h2>
<%--    <h3>当前在线人数:<%=application.getAttribute("user_online")%></h3>--%>


    <%--这个是一个上下划分的框架程序--%>
    <iframe width="100%" src="ChatShow.jsp"></iframe>
    <iframe width="100%" src="ChatInput.jsp"></iframe>

    <%--    该程序首先保存用户的昵称到个人Session对象，然后把用户的一些基本信息，如IP地--%>
    <%--    址、昵称、来访时间等保存到公共Application对象中，并把在线人数增加1个。最后把网页--%>
    <%--    分为上、下两个框架，上框架显示发言，下框架输入发言。--%>
    <%--    //将用户昵称保存到session中--%>
    <%--    //下面几句返回来访者信息--%>
    <%
        String sayStr = "";
        sayStr = "来自" + request.getLocalAddr()+ "的" ;  //来访者IP地址
        sayStr = sayStr + "<b>" + session.getAttribute("uname").toString() + "</b>" ;
        //来访者昵称
        sayStr = sayStr + "于" + Calendar.getInstance().getTime().toLocaleString() + "大驾光临"; //来访时间
        sayStr="<font color='red'>" + sayStr + "</font>";           //红色显示
        //下面几句将来访信息保存到Application中
        String oldSay = "";
        int num=1;
        try{
            oldSay=application.getAttribute("show").toString();
            num=(Integer)(application.getAttribute("user_online"))+1;
        }
        catch(Exception exx){}

        application.setAttribute("show", (sayStr + "<br>" +oldSay));    //返回聊天信息
        application.setAttribute("user_online",num);          //在线人数加1
    %>
</body>
</html>
