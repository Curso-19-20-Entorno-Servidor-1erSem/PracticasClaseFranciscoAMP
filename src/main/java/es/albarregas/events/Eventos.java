/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package es.albarregas.events;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletRequestAttributeEvent;
import javax.servlet.ServletRequestEvent;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionEvent;

/**
 *
 * @author franciscoantonio
 */

public class Eventos {
    /**javax.servlet.ServletContextListener
     * @param sce
     * ServletContextEvent que contiene el ServletContext que se está inicializando.
    */
    
    public void contextInitialized(ServletContextEvent sce){
    System.out.println(" Recibe una notificación de que ServletContext está a punto de cerrarse.");
    }
    public void contextDestroyed(ServletContextEvent sce){
    System.out.println(" Recibe una notificación de que el proceso de inicialización de la aplicación web está comenzando.");
    } 

    
//javax.servlet.ServletContextAttribute
        /**
         * @param event
            event - ServletContextAttributeEvent que contiene el ServletContext al que se agregó el atributo,
         *  junto con el nombre y el valor del atributo.
         */
    public void attributeAdded(ServletContextAttributeEvent event){
    System.out.println("Recibe una notificación de que se ha agregado un atributo al ServletContext.");
    }
    /**
     * @param event
     * event - ServletContextAttributeEvent que contiene el ServletContext del que se eliminó el atributo,
     * junto con el nombre y el valor del atributo*/
    public void attributeRemoved(ServletContextAttributeEvent event){
    System.out.println("Recibe una notificación de que se ha eliminado un atributo del ServletContext.");
    }
    
    public void atributeReplaced(ServletContextAttributeEvent event){
    System.out.println("Recibe una notificación de que un atributo ha sido reemplazado del ServletContext.");
    }   

//javax.servlet.http.HttpSessionActivationListener
    public void sessionDidActive(HttpSessionEvent sre){
    System.out.println(" Notificación de que la sesión acaba de activarse.");
    }
    public void sessionWillPassivate(HttpSessionEvent sre){
    System.out.println("Notificación de que la sesión está a punto de desactivarse.");
    } 
    
//javax.servlet.http.HttpSessionBindingListener
    public void valueBound(HttpSessionBindingEvent sre){
    System.out.println("Notifica al objeto que está vinculado a una sesión e identifica la sesión.");
    }
    public void valueUnbound(HttpSessionBindingEvent sre){
    System.out.println("Notifica al objeto que se está desvinculando de una sesión e identifica la sesión.");
    }
    

//javax.servlet.http.HttpSessionAttributeListener
    public void attributeAdded(HttpSessionBindingEvent sre){
    System.out.println("Recibe una notificación de que se ha agregado un atributo a una sesión ...");
    }
    public void attributeRemoved(HttpSessionBindingEvent sre){
    System.out.println("Se ha invocadp attributeRemoved de ServletRequestAttrributeEvent ...");
    }
    public void atributeReplaced(HttpSessionBindingEvent sre){
    System.out.println("Recibe una notificación de que un atributo ha sido reemplazado en una sesión. ...");
    }

//javax.servlet.ServletRequestListener
    public void requestDestroyed(ServletRequestEvent sre){
    System.out.println("Se ha invocado requestDestoyed de ServletRequestAttrributeEvent ...");
    }
    public void requestInitialized(ServletRequestEvent sre){
    System.out.println("Se ha invocado requestDestoyed de ServletRequestAttrributeEvent ...");
    }
    
//javax.servlet.ServletRequestAttributeListener
    public void attributeReplaced(ServletRequestAttributeEvent sre){
    System.out.println("Se ha invocadp attributeReplaced de ServletRequestAttrributeEvent ...");
    }
    public void attributeRemoved(ServletRequestAttributeEvent sre){
    System.out.println("Se ha invocadp attributeRemoved de ServletRequestAttrributeEvent ...");
    }
    public void attributeAdded(ServletRequestAttributeEvent sre){
    System.out.println("Se ha invocado attributeAdded de ServletRequestAttrributeEvent ...");
    }





}
