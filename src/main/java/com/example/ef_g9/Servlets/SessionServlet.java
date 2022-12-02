package com.example.ef_g9.Servlets;

import com.example.ef_g9.Beans.Usuario;
import com.example.ef_g9.Daos.UserDao;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "SessionServlet", value = "/SessionServlet")
public class SessionServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action") == null ? "logueo" : request.getParameter("action");
        HttpSession session = request.getSession();

        switch (action) {
            case "logueo":
                Usuario usuario = (Usuario) session.getAttribute("usuario");
                if (usuario != null && usuario.getIdUsuario() > 0) {
                    response.sendRedirect(request.getContextPath() + "/UserServlet");
                } else {
                    RequestDispatcher view = request.getRequestDispatcher("index.jsp");
                    view.forward(request, response);
                }
                break;
            case "logout":
                session.invalidate();
                response.sendRedirect(request.getContextPath());
                break;
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {


        String username = request.getParameter("inputEmail");
        String password = request.getParameter("inputPassword");

        if (username == null || password == null) {
            request.setAttribute("err", "El usuario o password no pueden ser vacíos");
            RequestDispatcher view = request.getRequestDispatcher("index.jsp");
            view.forward(request, response);
        }else{
            UserDao userDao = new UserDao();
            Usuario usuario = userDao.validarUsuarioPasswordHashed(username, password);

            if (usuario != null) {
                HttpSession session = request.getSession();
                session.setAttribute("usuario", usuario);


                /*session.setMaxInactiveInterval(10 * 60); // 10 minutos*/

                response.sendRedirect(request.getContextPath() + "/ServicioServlet?id="+usuario.getIdUsuario());
            } else {
                request.setAttribute("err", "El usuario o password no existen");
                RequestDispatcher view = request.getRequestDispatcher("index.jsp");
                view.forward(request, response);
            }
        }

    }
}