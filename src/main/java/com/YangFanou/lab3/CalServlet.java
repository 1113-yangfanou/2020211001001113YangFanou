package com.YangFanou.lab3;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CalServlet", value = "/CalServlet")
public class CalServlet extends HttpServlet {

    private int add(int f, int s) {
        return f + s;
    }
    private int mul(int f, int s) {
        return f * s;
    }
    private int sub(int f, int s) {
        return f - s;
    }
    private int div(int f, int s) {
        return f / s;
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String method = request.getParameter("method");
        if (method.equals("ADD")) {
            int f = Integer.parseInt(request.getParameter("first"));
            int s = Integer.parseInt(request.getParameter("second"));
            int result = add(f, s);
            System.out.println(result);
            request.setAttribute("result", result);
            request.getRequestDispatcher("/Lab3/cal.jsp").forward(request,response);
        } else if(method.equals("Sub")) {
            int f = Integer.parseInt(request.getParameter("first"));
            int s = Integer.parseInt(request.getParameter("second"));
            int result = sub(f, s);
            request.setAttribute("result", result);
            request.getRequestDispatcher("/Lab3/cal.jsp").forward(request,response);
        } else if(method.equals("Mul")) {
            int f = Integer.parseInt(request.getParameter("first"));
            int s = Integer.parseInt(request.getParameter("second"));
            int result = mul(f, s);
            request.setAttribute("result", result);
            request.getRequestDispatcher("/Lab3/cal.jsp").forward(request,response);
        } else if(method.equals("Div")) {
            int f = Integer.parseInt(request.getParameter("first"));
            int s = Integer.parseInt(request.getParameter("second"));
            int result = div(f, s);
            request.setAttribute("result", result);
            request.getRequestDispatcher("/Lab3/cal.jsp").forward(request,response);
        } else {
            String name = request.getParameter("name");
            int length = name.length();
            request.setAttribute("length", length);
            request.getRequestDispatcher("/Lab3/cal.jsp").forward(request,response);
        }
    }
}
