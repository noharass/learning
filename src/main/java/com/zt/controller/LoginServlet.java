package com.zt.controller;

import org.example.exp2.HelloServlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HelloServlet{
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置客户端的编码格式,防止乱码
        request.setCharacterEncoding("utf-8");
        //接受客户端传递的参数
        String uname = request.getParameter("uname");

        //判断参数是否为空
        if (uname == null || "".equals(uname.trim())){
            //提示用户信息
            request.setAttribute("login_msg", "用户姓名不能为空");
            //请求转发跳转到login.jsp
            request.getRequestDispatcher("ChatIndex.jsp").forward(request, response);
            return;
        }

        //登录成功,设置登录信息到session,跳转到chat.jsp
        request.setAttribute("login_msg", "");
        request.getSession().setAttribute("uname", uname);
        response.sendRedirect("Chat.jsp");
    }
}
