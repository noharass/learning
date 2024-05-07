package com.zt.controller;

import org.example.exp2.HelloServlet;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ChatServlet")
public class ChatServlet extends HelloServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置客户端的编码格式,防止乱码
        request.setCharacterEncoding("utf-8");
        // 获取对ServletContext的引用
        ServletContext context = getServletContext();
        //接受客户端传递的参数
        String say;
        String content = request.getParameter("content");
        String color=request.getParameter("color");
        String face=request.getParameter("face");
        say = request.getSession().getAttribute("uname") + "说：" + content + face;
        say = "<font color='" + color + "'>" + say + "</font>";
        String oldsay = (String) context.getAttribute("show");

        context.setAttribute("show", (say + "<br>" + oldsay));    //返回聊天信息
        response.sendRedirect("ChatInput.jsp");
    }
}
