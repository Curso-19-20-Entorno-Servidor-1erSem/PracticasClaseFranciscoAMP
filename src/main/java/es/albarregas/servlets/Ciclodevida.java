/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package es.albarregas.servlets;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;


/**
 *
 * @author FranciscoAntonio
 */
@WebServlet(name = "Ciclodevida", urlPatterns = {"/Ciclodevida"})
public class Ciclodevida extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
        public Ciclodevida(){
            super();
            System.out.println("Se crea el Servlet  ...");
        }

    
        public void init(ServletConfig config){
            System.out.println("Estoy en Init ..."+config.getServletName());
            
        }
        
        public void service(ServletRequest request, ServletResponse response){
            System.out.println("Se accedde al Servlet ... ");
        }
        public void destroy(){
            System.out.println("Se destruye el Servlet ...");
        }

}