package co.edu.cue.iniciosesion;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(value = "/login")
public class login extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String usuario = request.getParameter("textUsuario");
        String clave = request.getParameter("textClave");

        HttpSession session = request.getSession();
        Usuario registrado = (Usuario) session.getAttribute("usuario");

        if (registrado != null && registrado.getUsuario().equalsIgnoreCase(usuario) && registrado.getClave().equals(clave)) {
            RequestDispatcher req = request.getRequestDispatcher("login_correcto.jsp");
            req.forward(request, response);
        } else {
            RequestDispatcher req = request.getRequestDispatcher("inicio_login.jsp");
            req.include(request, response);
        }
    }
}
