/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Web;

import Dominio.Empleado;
import Dominio.EmpleadoPK;
import Negocio.EmpleadoNegocioInterfaz;
import java.io.IOException;
import java.io.PrintWriter;
import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Alumno Mañana
 */
@WebServlet(name = "cargarModifica", urlPatterns = {"/cargarModifica"})
public class cargarModifica extends HttpServlet {

    @Inject
    // Ahora definimos nuestra variable
    EmpleadoNegocioInterfaz empleadoNegocioInterfaz;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet cargarModifica</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet cargarModifica at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String clase = request.getParameter("clase");
        if (clase != null) {
            switch (clase) {
                case "usuario":
                    this.modificarUsuario(request, response);
                    break;
                case "libro":
                    //this.iniciarSesion(request, response);
                    break;
                case "autor":
                    //this.editarCliente(request, response);
                    break;
                default:
                //this.accionDefault(request, response);
                }
        } else {
            //this.accionDefault(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String clase = request.getParameter("clase");
        if (clase != null) {
            switch (clase) {
                case "usuario":
                    this.modificarUsuario(request, response);
                    break;
                case "libro":
                    //this.iniciarSesion(request, response);
                    break;
                case "autor":
                    //this.editarCliente(request, response);
                    break;
                default:
                //this.accionDefault(request, response);
                }
        } else {
            //this.accionDefault(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void modificarUsuario(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession sesion = request.getSession();
        String u = (String) sesion.getAttribute("Email");
        Empleado usuario = new Empleado(u);
        usuario = empleadoNegocioInterfaz.econtrarEmpleadoPorEmail(usuario);
        request.setAttribute("usuario", usuario);
        request.getRequestDispatcher("ActualizarCuenta.jsp").forward(request, response);

    }

}
