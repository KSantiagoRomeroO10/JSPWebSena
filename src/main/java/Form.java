import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/Form"})
public class Form extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        String Nombre = request.getParameter("Nomnre");
        String Correo = request.getParameter("Correo");
        String Clave = request.getParameter("Clave");
        
        String[] Persona = new String[3];
        
        Persona[0] = Nombre;
        Persona[1] = Correo;
        Persona[2] = Clave;
        
        HttpSession sesion = request.getSession();        
        if("Santiago".equals(Persona[0]) && "Santiago@soy.sena.edu.co".equals(Persona[1]) && "ClaveSegura".equals(Persona[2])){      
            sesion.setAttribute("Logeado", Persona);
            System.out.println("Nombre: " + Nombre);
            System.out.println("Correo: " + Correo);
            System.out.println("Clave: " + Clave);
        }
        else{
            sesion.setAttribute("ErrorLogueandose", "Error al iniciar sesión");
        }
        response.sendRedirect("LoginUser.jsp");
    }

    @Override
    public String getServletInfo() {
        return "Procesar los datos del usuario para establecer sesiones en el servidor web.";
    }
}
