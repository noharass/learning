<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>下框架</title>
</head>
<body>

    <%--    该程序主要输入发言内容，并能选择发言文字的颜色和表情。--%>
    <form action="ChatServlet" method="post">
        <textarea name="content" rows="5" cols="40"></textarea>
        <span>选择文字颜色：</span>
        <select name="color">
            <option value="black" style="color: black;">黑色</option>
            <option value="red" style="color: red">红色</option>
            <option value="blue" style="color: blue">蓝色</option>
            <option value="green" style="color:green">绿色</option>
        </select>
        <span>选择表情：</span>
        <select name="face">
            <option value=":)" selected>微笑</option>
            <option value=":(">难过</option>
            <option value=":D">大笑</option>
            <option value=":o">惊讶</option>
        </select>
        <input type="submit" value="发言">
    </form>

</body>
</html>
