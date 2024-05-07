<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<style>
    .login {
        width: auto;
        margin: 100px auto;
        text-align: center;
        font-size: 30px;
    }
    h2 {
        text-align: center;
    }
    h3 {
        text-align: center;
    }
</style>
<head>
    <title>登录程序</title>
</head>
<body>

    <%--
      主程序主要输入用户昵称，并检查昵称是否为空，为空则重新输入；不为空则调Chat.jsp
    程序，进入聊天室。
    --%>
    <h2>欢迎来到聊天室</h2>
    <form action="LoginServlet" method="post" class="login">
        请输入姓名：<input type="text" name="uname">
        <button>登录</button>
        <span style="color: red; font-size: 20px">
            ${login_msg}
        </span>
    </form>

</body>
</html>