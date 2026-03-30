package controller;

import dao.LoginDao;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/Login")
public class LoginServlet extends HttpServlet
{
    public void service(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String uname=request.getParameter("uname");
        String pass=request.getParameter("pass");
        try {
            LoginDao ld=new LoginDao();
            if(ld.accessQuery(uname,pass))
            {
                HttpSession session = request.getSession();
                session.setAttribute("username",uname);
                response.sendRedirect("products.jsp");

            }
            else {
                response.sendRedirect("login.jsp");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("login.jsp");
        }


    }
}