package com.example.ef_g9.Servlets;

import com.example.ef_g9.Daos.ServicioDao;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "ServicioServlet", value = "/ServicioServlet")
public class ServicioServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");


        String action = request.getParameter("action") == null ? "lista" : request.getParameter("action");

        String id_str = request.getParameter("id");
        int id_usuario = Integer.parseInt(id_str);

        RequestDispatcher view;

        ServicioDao servicioDao = new ServicioDao();


        switch (action) {
            case "lista":
                request.setAttribute("listaServicios", servicioDao.listarServicios(id_usuario));
                view = request.getRequestDispatcher("servicios/listaServicios.jsp");
                view.forward(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
