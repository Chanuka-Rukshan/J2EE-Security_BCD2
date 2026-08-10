package lk.jiat.web.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        HttpSession session = request.getSession();


        if ("user".equals(username) && "1234".equals(password)) {

            session.setAttribute("username", username);
            session.setAttribute("role", "USER");

            response.sendRedirect("home.jsp");

        } else if ("admin".equals(username) && "1234".equals(password)) {

            session.setAttribute("username", username);
            session.setAttribute("role", "ADMIN");

            response.sendRedirect("admin/home.jsp");

        } else {

            request.setAttribute("message","Invalid username or password");
            request.getRequestDispatcher("login.jsp").forward(request, response);

        }

    }
}